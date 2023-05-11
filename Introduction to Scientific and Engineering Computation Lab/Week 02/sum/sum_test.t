- init:
    run: rm -f sum
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror sum.c -o sum  # timeout: 2
    blocker: true

- case1:
    run: ./sum
    points: 10
    script:
        - expect: "Please enter the first number: "  # timeout: 2
        - send: "1"
        - expect: "Please enter the second number: "  # timeout: 2
        - send: "2"
        - expect: "The sum of the numbers 1, and 2 is: 3\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case2:
    run: ./sum
    points: 10
    script:
        - expect: "Please enter the first number: "  # timeout: 2
        - send: "5"
        - expect: "Please enter the second number: "  # timeout: 2
        - send: "6"
        - expect: "The sum of the numbers 5, and 6 is: 11\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case3:
    run: ./sum
    points: 10
    script:
        - expect: "Please enter the first number: "  # timeout: 2
        - send: "15"
        - expect: "Please enter the second number: "  # timeout: 2
        - send: "-20"
        - expect: "The sum of the numbers 15, and -20 is: -5\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case4:
    run: ./sum
    points: 10
    script:
        - expect: "Please enter the first number: "  # timeout: 2
        - send: "4"
        - expect: "Please enter the second number: "  # timeout: 2
        - send: "200"
        - expect: "The sum of the numbers 4, and 200 is: 204\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case5:
    run: ./sum
    points: 10
    script:
        - expect: "Please enter the first number: "  # timeout: 2
        - send: "111"
        - expect: "Please enter the second number: "  # timeout: 2
        - send: "11"
        - expect: "The sum of the numbers 111, and 11 is: 122\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case6:
    run: ./sum
    points: 10
    script:
        - expect: "Please enter the first number: "  # timeout: 2
        - send: "999"
        - expect: "Please enter the second number: "  # timeout: 2
        - send: "11"
        - expect: "The sum of the numbers 999, and 11 is: 1010\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case7:
    run: ./sum
    points: 10
    script:
        - expect: "Please enter the first number: "  # timeout: 2
        - send: "11111"
        - expect: "Please enter the second number: "  # timeout: 2
        - send: "22222"
        - expect: "The sum of the numbers 11111, and 22222 is: 33333\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case8:
    run: ./sum
    points: 10
    script:
        - expect: "Please enter the first number: "  # timeout: 2
        - send: "-67"
        - expect: "Please enter the second number: "  # timeout: 2
        - send: "2"
        - expect: "The sum of the numbers -67, and 2 is: -65\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case9:
    run: ./sum
    points: 10
    script:
        - expect: "Please enter the first number: "  # timeout: 2
        - send: "-1"
        - expect: "Please enter the second number: "  # timeout: 2
        - send: "0"
        - expect: "The sum of the numbers -1, and 0 is: -1\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case10:
    run: ./sum
    points: 10
    script:
        - expect: "Please enter the first number: "  # timeout: 2
        - send: "121"
        - expect: "Please enter the second number: "  # timeout: 2
        - send: "92"
        - expect: "The sum of the numbers 121, and 92 is: 213\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0