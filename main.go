package main

import (
	"fmt"
)

var version = ""
var commit = ""
var built = ""

func main() {
	fmt.Printf("Versioning %s build %s from commit %s at %s\n", build, version, commit, built)
}
