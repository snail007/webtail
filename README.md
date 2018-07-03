# webtail
go web tail file service or server
## Usage

```golang
package main

import (
	"log"
	"github.com/snail007/webtail"
)

func main() {
	address := ":8822"
	basedir = "./logs"
	listener, err := webtail.Serve(address, basedir)
	if err != nil {
		log.Fatal(err)
	}
	log.Printf("tail server on %s",listener.Addr())
	select {}
}
```

then access :

http://127.0.0.1:8822/show/***logfilename***#width=100%&height=300px

***logfilename*** is the log file name (no extension) in `./logs`

width=100%&height=300px is the div width and height which show log text .

