FROM golang:1.21 AS builder

WORKDIR /app

COPY main.go ./
COPY static ./static

RUN go build -o server main.go

FROM debian:bookworm-slim

WORKDIR /app
COPY --from=builder /app/server .
COPY --from=builder /app/static ./static

EXPOSE 4321

CMD ["./server"]

