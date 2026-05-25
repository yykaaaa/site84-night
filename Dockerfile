FROM alpine:latest

WORKDIR /app

RUN apk add --no-cache unzip wget

RUN wget https://github.com/pocketbase/pocketbase/releases/download/v0.22.9/pocketbase_0.22.9_linux_amd64.zip

RUN unzip pocketbase_0.22.9_linux_amd64.zip

EXPOSE 10000

CMD ["./pocketbase", "serve", "--http=0.0.0.0:10000"]
