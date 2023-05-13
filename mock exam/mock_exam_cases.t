- init:
    run: rm -f length
    blocker: true

- compile:
   run: gcc -std=c99 -Werror length.c -o length
   blocker: true

- case_1:
   run: ./length
   script:
     - expect: "Enter a string:" 
     - send: "merhaba"
     - expect: "Get the full length of the string\\? \\(y/n\\):" 
     - send: "y"
     - expect: "The length of the string is: 7\r\n" 
   exit: 0
   points: 1

- case_2:
   run: ./length
   script:
     - expect: "Enter a string:" 
     - send: "ITU1773"
     - expect: "Get the full length of the string\\? \\(y/n\\):" 
     - send: "n"
     - expect: "Enter a character to get the length up to it:" 
     - send: "1"
     - expect: "The length of the string is: 3\r\n" 
   exit: 0
   points: 1

- case_3:
   run: ./length
   script:
     - expect: "Enter a string:" 
     - send: "BLG 102E"
     - expect: "Get the full length of the string\\? \\(y/n\\):" 
     - send: "w"
     - expect: "Enter a character to get the length up to it:" 
     - send: "1"
     - expect: "The length of the string is: 3\r\n" 
   exit: 0
   points: 1

- case_4:
   run: ./length
   script:
     - expect: "Enter a string:" 
     - send: "aaaa abbb"
     - expect: "Get the full length of the string\\? \\(y/n\\):" 
     - send: "n"
     - expect: "Enter a character to get the length up to it:" 
     - send: "b"
     - expect: "The length of the string is: 4\r\n" 
   exit: 0
   points: 1

- case_5:
   run: ./length
   script:
     - expect: "Enter a string:" 
     - send: "123456789"
     - expect: "Get the full length of the string\\? \\(y/n\\):" 
     - send: "n"
     - expect: "Enter a character to get the length up to it:" 
     - send: "0"
     - expect: "The length of the string is: 9\r\n" 
   exit: 0
   points: 1

- case_new_1:
   run: ./length
   script:
     - expect: "Enter a string:" 
     - send: "abcd"
     - expect: "Get the full length of the string\\? \\(y/n\\):" 
     - send: "y"
     - expect: "The length of the string is: 4\r\n" 
   exit: 0
   points: 1

- case_new_2:
   run: ./length
   script:
     - expect: "Enter a string:" 
     - send: "prepare_well_for_the_exam"
     - expect: "Get the full length of the string\\? \\(y/n\\):" 
     - send: "y"
     - expect: "The length of the string is: 25\r\n" 
   exit: 0
   points: 1

- case_new_3:
   run: ./length
   script:
     - expect: "Enter a string:" 
     - send: "prepare_well_for_the_exam"
     - expect: "Get the full length of the string\\? \\(y/n\\):" 
     - send: "n"
     - expect: "Enter a character to get the length up to it:" 
     - send: "z"
     - expect: "The length of the string is: 25\r\n" 
   exit: 0
   points: 1

- case_new_4:
   run: ./length
   script:
     - expect: "Enter a string:" 
     - send: "prepare_well_for_the_exam"
     - expect: "Get the full length of the string\\? \\(y/n\\):" 
     - send: "n"
     - expect: "Enter a character to get the length up to it:" 
     - send: "_"
     - expect: "The length of the string is: 7\r\n" 
   exit: 0
   points: 1

- case_new_5:
   run: ./length
   script:
     - expect: "Enter a string:" 
     - send: "prepare_well_for_the_exam"
     - expect: "Get the full length of the string\\? \\(y/n\\):" 
     - send: "n"
     - expect: "Enter a character to get the length up to it:" 
     - send: "p"
     - expect: "The length of the string is: 0\r\n" 
   exit: 0
   points: 1