FROM golang
 
COPY . /go/src/github.com/ibnumasud/hellobeego
RUN go get github.com/astaxie/beego
RUN go get github.com/beego/bee
RUN go install github.com/ibnumasud/hellobeego
WORKDIR "/go/src/github.com/ibnumasud/hellobeego/"
ENTRYPOINT ["hellobeego"]
 
EXPOSE 8080

