# Makefile for compiling and running Java topic code
topic ?= basic
main ?= example.HelloWorld
src_dir := $(topic)/src/example
bin_dir := $(topic)/bin

run:
	@mkdir -p $(bin_dir)
	javac -d $(bin_dir) $(src_dir)/**/*.java
	java -cp $(bin_dir) $(main)

checkstyle:
	checkstyle -c checkstyle.xml $(src_dir)/*.java

clean:
	rm -rf $(topic)/bin