# FYI, this base image is built via ".github/workflows/.bashbrew/action.yml" (from https://github.com/docker-library/bashbrew/tree/master/Dockerfile)
FROM golang:latest

WORKDIR /app

COPY . .

RUN go build -o main .

EXPOSE 8000

CMD ["./main"]
