export GOPROXY=https://goproxy.io
export GOROOT=/var/jenkins_home/plugins/go13
export PATH=$PATH:$GOROOT/bin
export GOPATH=`pwd`
export DOCKER_PKG_PATH=./dockerpkg
export GOOS=linux
export GOARCH=amd64
export GO15VENDOREXPERIMENT=1
export CGO_ENABLED=0



go build -ldflags "-X main.Version=1.1.0 -X main.Build=202005" -o $DOCKER_PKG_PATH/bin/tiforg

chmod +x $DOCKER_PKG_PATH/bin/tiforg