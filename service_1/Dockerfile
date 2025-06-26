# Stage 1: to build
FROM golang:1.22-alpine AS builder
WORKDIR /app
COPY main.go .
RUN go build -o service1 main.go

# Stage 2: for run
FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/service1 .
EXPOSE 8001
CMD ["./service1"]
