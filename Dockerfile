FROM golang:1.21

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY src src

RUN CGO_ENABLED=0 GOOS=linux go build -o /paydle src/main.go

WORKDIR /app/src

CMD ["/paydle"]
