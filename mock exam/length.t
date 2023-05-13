- init:
    run: rm -f length
    blocker: true

- compile:
   run: gcc -std=c99 -Werror length.c -o length
   blocker: true

- case_1:
   run: ./length
   script:
     - expect: "Enter a string:" # timeout: 10
     - send: "merhaba"
     - expect: "Get the full length of the string\\? \\(y/n\\):" # timeout: 10
     - send: "y"
     - expect: "The length of the string is: 7\r\n" # timeout: 10
   exit: 0
   points: 1

- case_2:
   run: ./length
   script:
     - expect: "Enter a string:" # timeout: 10
     - send: "ITU1773"
     - expect: "Get the full length of the string\\? \\(y/n\\):" # timeout: 10
     - send: "n"
     - expect: "Enter a character to get the length up to it:" # timeout: 10
     - send: "1"
     - expect: "The length of the string is: 3\r\n" # timeout: 10
   exit: 0
   points: 1

- case_3:
   run: ./length
   script:
     - expect: "Enter a string:" # timeout: 10
     - send: "BLG 102E"
     - expect: "Get the full length of the string\\? \\(y/n\\):" # timeout: 10
     - send: "w"
     - expect: "Enter a character to get the length up to it:" # timeout: 10
     - send: "1"
     - expect: "The length of the string is: 3\r\n" # timeout: 10
   exit: 0
   points: 1

- case_4:
   run: ./length
   script:
     - expect: "Enter a string:" # timeout: 10
     - send: "aaaa abbb"
     - expect: "Get the full length of the string\\? \\(y/n\\):" # timeout: 10
     - send: "n"
     - expect: "Enter a character to get the length up to it:" # timeout: 10
     - send: "b"
     - expect: "The length of the string is: 4\r\n" # timeout: 10
   exit: 0
   points: 1

- case_5:
   run: ./length
   script:
     - expect: "Enter a string:" # timeout: 10
     - send: "123456789"
     - expect: "Get the full length of the string\\? \\(y/n\\):" # timeout: 10
     - send: "n"
     - expect: "Enter a character to get the length up to it:" # timeout: 10
     - send: "0"
     - expect: "The length of the string is: 9\r\n" # timeout: 10
   exit: 0
   points: 1