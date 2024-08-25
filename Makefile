CC=gcc
CFLAGS=$(shell pkg-config --cflags gtk4 )
FILES=$(shell find . -name "*.c")

.PHONY: build run install clean

all: build
	gcc $(CFLAGS) $(FILES) -o bin/converter

build:
	mkdir -pv bin/

run:
	./bin/converter

install:


clean:
	rm -rf bin/


