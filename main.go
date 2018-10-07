package main

import (
	"fmt"
)

var version = ""
var commit = ""

func main() {
	fmt.Printf("Versioning %s build %s from commit %s\n", build, version, commit)
}
