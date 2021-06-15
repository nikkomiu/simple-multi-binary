FROM golang:1.16-alpine AS builder

WORKDIR /app
COPY . .

RUN go build -o /app/one ./cmd/one/...

FROM scratch

COPY --from=builder /app/one /usr/bin/one

ENTRYPOINT [ "one" ]
