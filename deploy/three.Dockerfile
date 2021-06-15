FROM golang:1.16-alpine AS builder

WORKDIR /app
COPY . .

RUN go build -o /app/three ./cmd/three/...

FROM scratch

COPY --from=builder /app/three /usr/bin/three

ENTRYPOINT [ "three" ]
