package main

import (
	"fmt"

	"github.com/libgit2/git2go"
)

func main() {
	git.Clone("https://github.com/brimstone/docker-nomadconsul.git", "/tmp/nomadconsul", nil)
	fmt.Println("It worked")
}
