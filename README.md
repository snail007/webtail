# webtail
go web tail file service or server
## Usage

```golang
package main
import (
"github.com/snail007/webtail"
"log"
)
func main() {
	address:=":8822"
  basedir="./logs"
	listener,err:=Serve(address, basedir)
  if err!=nil{
    log.Fatal(err)
  }
	select {}
}
```
