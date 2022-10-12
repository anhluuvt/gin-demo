FROM golang:latest

ENV GOPROXY https://goproxy.cn,direct
WORKDIR $GOPATH/src/github.com/anhluuvt/gin-demo
COPY . $GOPATH/src/github.com/anhluuvt/gin-demo
RUN go build .

EXPOSE 8000
ENTRYPOINT ["./gin-demo"]
