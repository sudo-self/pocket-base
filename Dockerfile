# Use Alpine Linux for a small image
FROM alpine:latest

# Download the PocketBase binary (update version if needed)
ADD https://github.com/pocketbase/pocketbase/releases/download/v0.14.3/pocketbase_0.14.3_linux_amd64 /pocketbase
RUN chmod +x /pocketbase

# Expose the default port
EXPOSE 8090

# Start PocketBase
CMD ["/pocketbase", "serve", "--http=0.0.0.0:8090", "--dataDir=/data"]
