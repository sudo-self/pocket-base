FROM alpine:latest


WORKDIR /pb


RUN apk add --no-cache unzip curl


RUN curl -L -o pb.zip https://github.com/pocketbase/pocketbase/releases/download/v0.22.9/pocketbase_0.22.9_linux_amd64.zip \
    && unzip pb.zip \
    && rm pb.zip


EXPOSE 8080


CMD ["./pocketbase", "serve", "--http=0.0.0.0:8080"]
