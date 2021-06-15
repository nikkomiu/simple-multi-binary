FROM golang:1.16-alpine AS builder

WORKDIR /app
COPY . .

RUN go build -o /app/two ./cmd/two/...

FROM scratch

COPY --from=builder /app/two /usr/bin/two

ENTRYPOINT [ "two" ]
