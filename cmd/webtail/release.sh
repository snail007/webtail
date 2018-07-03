#!/bin/bash
VER="1.0"
RELEASE="release-${VER}"

rm -rf ${RELEASE}
mkdir ${RELEASE}

#linux
CGO_ENABLED=0 GOOS=linux GOARCH=386 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-386.tar.gz" webtail
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-amd64.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=6 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-arm-v6.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=arm64 GOARM=6 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-arm64-v6.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=7 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-arm-v7.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=arm64 GOARM=7 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-arm64-v7.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=5 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-arm-v5.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=arm64 GOARM=5 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-arm64-v5.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=mips go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-mips.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=mips64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-mips64.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=mips64le go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-mips64le.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=mipsle go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-mipsle.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=ppc64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-ppc64.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=ppc64le go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-ppc64le.tar.gz" webtail 
CGO_ENABLED=0 GOOS=linux GOARCH=s390x go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-linux-s390x.tar.gz" webtail 
#android
CGO_ENABLED=0 GOOS=android GOARCH=386 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-android-386.tar.gz" webtail 
CGO_ENABLED=0 GOOS=android GOARCH=amd64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-android-amd64.tar.gz" webtail 
CGO_ENABLED=0 GOOS=android GOARCH=arm go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-android-arm.tar.gz" webtail 
CGO_ENABLED=0 GOOS=android GOARCH=arm64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-android-arm64.tar.gz" webtail 
#darwin
CGO_ENABLED=0 GOOS=darwin GOARCH=386 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-darwin-386.tar.gz" webtail 
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-darwin-amd64.tar.gz" webtail 
CGO_ENABLED=0 GOOS=darwin GOARCH=arm go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-darwin-arm.tar.gz" webtail 
CGO_ENABLED=0 GOOS=darwin GOARCH=arm64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-darwin-arm64.tar.gz" webtail 
#dragonfly
CGO_ENABLED=0 GOOS=dragonfly GOARCH=amd64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-dragonfly-amd64.tar.gz" webtail 
#freebsd
CGO_ENABLED=0 GOOS=freebsd GOARCH=386 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-freebsd-386.tar.gz" webtail 
CGO_ENABLED=0 GOOS=freebsd GOARCH=amd64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-freebsd-amd64.tar.gz" webtail 
CGO_ENABLED=0 GOOS=freebsd GOARCH=arm go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-freebsd-arm.tar.gz" webtail 
#nacl
CGO_ENABLED=0 GOOS=nacl GOARCH=386 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-nacl-386.tar.gz" webtail 
CGO_ENABLED=0 GOOS=nacl GOARCH=amd64p32 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-nacl-amd64p32.tar.gz" webtail 
CGO_ENABLED=0 GOOS=nacl GOARCH=arm go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-nacl-arm.tar.gz" webtail 
#netbsd
CGO_ENABLED=0 GOOS=netbsd GOARCH=386 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-netbsd-386.tar.gz" webtail 
CGO_ENABLED=0 GOOS=netbsd GOARCH=amd64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-netbsd-amd64.tar.gz" webtail 
CGO_ENABLED=0 GOOS=netbsd GOARCH=arm go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-netbsd-arm.tar.gz" webtail 
#openbsd
CGO_ENABLED=0 GOOS=openbsd GOARCH=386 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-openbsd-386.tar.gz" webtail 
CGO_ENABLED=0 GOOS=openbsd GOARCH=amd64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-openbsd-amd64.tar.gz" webtail 
CGO_ENABLED=0 GOOS=openbsd GOARCH=arm go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-openbsd-arm.tar.gz" webtail 
#plan9
CGO_ENABLED=0 GOOS=plan9 GOARCH=386 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-plan9-386.tar.gz" webtail 
CGO_ENABLED=0 GOOS=plan9 GOARCH=amd64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-plan9-amd64.tar.gz" webtail 
CGO_ENABLED=0 GOOS=plan9 GOARCH=arm go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-plan9-arm.tar.gz" webtail 
#solaris
CGO_ENABLED=0 GOOS=solaris GOARCH=amd64 go build -o webtail -ldflags "-s -w" && tar zcfv "${RELEASE}/webtail-solaris-amd64.tar.gz" webtail 
#windows
CGO_ENABLED=0 GOOS=windows GOARCH=386 go build -o webtail-noconsole.exe
CGO_ENABLED=0 GOOS=windows GOARCH=386 go build -o webtail.exe && tar zcfv "${RELEASE}/webtail-windows-386.tar.gz" webtail.exe webtail-noconsole.exe
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o webtail-noconsole.exe
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o webtail.exe && tar zcfv "${RELEASE}/webtail-windows-amd64.tar.gz" webtail.exe webtail-noconsole.exe

rm -rf webtail webtail.exe webtail-noconsole.exe

#todo
#1.release.sh        VER="xxx"
#2.main.go           APP_VERSION="xxx"
