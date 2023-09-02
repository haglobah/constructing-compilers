#lang racket

(system "nasm -f elf64 -o fact.o fact.s" #:set-pwd? #t)
(system "ld -e start -o fact.out fact.o")
(with-output-to-string (thunk (system "./fact.out")))