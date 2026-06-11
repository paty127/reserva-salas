FROM golang:1.23
WORKDIR /app
COPY . /app
RUN go mod init example.com/m/v2
RUN go get github.com/prometheus/client_golang/prometheus
RUN go build -o reserva-salas
CMD ["./reserva-salas"]

