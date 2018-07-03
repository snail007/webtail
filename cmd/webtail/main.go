package main

import (
	"flag"
	"fmt"
	"log"

	"github.com/snail007/webtail"
)

const APP_VERSION = "1.0"

var (
	basedir, address string
	version          bool
)

// example: http://127.0.0.1:8100/show/wget#height=300px&width=100%
// "height=300px&width=100%" is the div of log height and width

func main() {
	flag.StringVar(&basedir, "d", "", "dir path of log files")
	flag.StringVar(&address, "l", ":8100", "listen address")
	flag.BoolVar(&version, "v", false, "show version")
	flag.Parse()
	if version {
		fmt.Println(APP_VERSION)
		return
	}
	if basedir == "" {
		flag.Usage()
		return
	}
	listener, err := webtail.Serve(address, basedir)
	if err != nil {
		log.Fatal(err)
	}
	log.Printf("tail server on %s", (*listener).Addr())
	select {}
}
