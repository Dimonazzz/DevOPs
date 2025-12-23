#!/bin/bash
 
IMAGE_NAME="nginx"
CONTAINER_NAME="mynginx"
DOCKERFILE_PATH="./Dockerfile"
CHECKSUM_FILE="./dockerfile_checksum.txt"
LOG_FILE="./refresh_memory.log"
 
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S')  $1" | tee -a "$LOG_FILE"
}
 
if [ ! -f "$DOCKERFILE_PATH" ]; then
    log "ERROR: Dockerfile not found!"
    exit 1
fi
 
CURRENT_SUM=$(sha256sum "$DOCKERFILE_PATH" | awk '{print $1}')
 
if [ ! -f "$CHECKSUM_FILE" ]; then
    echo "$CURRENT_SUM" > "$CHECKSUM_FILE"
    log "Checksum file created."
fi
 
OLD_SUM=$(cat "$CHECKSUM_FILE")
 
if [ "$CURRENT_SUM" != "$OLD_SUM" ]; then
    log "Dockerfile changed — rebuilding image…"
 
    if docker build -t "$IMAGE_NAME" . >> "$LOG_FILE" 2>&1; then
        log "Image built successfully."
        echo "$CURRENT_SUM" > "$CHECKSUM_FILE"
 
        docker rm -f "$CONTAINER_NAME" >> "$LOG_FILE" 2>&1
        docker run -d --name "$CONTAINER_NAME" "$IMAGE_NAME" >> "$LOG_FILE" 2>&1
 
        log "Container restarted."
    else
        log "Image build failed!"
    fi
fi
 
RUNNING=$(docker ps --filter "name=$CONTAINER_NAME" --filter "status=running" -q)
 
if [ -z "$RUNNING" ]; then
    log "Container not running. Starting…"
    docker rm -f "$CONTAINER_NAME" >/dev/null 2>&1
    docker run -d --name "$CONTAINER_NAME" "$IMAGE_NAME" >> "$LOG_FILE" 2>&1
else
    log "Container is running."
fi