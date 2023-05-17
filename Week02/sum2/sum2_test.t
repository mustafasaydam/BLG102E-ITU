- init:
    run: rm -f sum2
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror sum2.c -o sum2  # timeout: 2
    blocker: true

- case1:
    run: ./sum2
    points: 10
    script:
        - expect: "Please enter numbers: "  # timeout: 2
        - send: "1 2"
        - expect: "The sum of the numbers 1, and 2 is: 3\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case2:
    run: ./sum2
    points: 10
    script:
        - expect: "Please enter numbers: "  # timeout: 2
        - send: "5"
        - send: "6"
        - expect: "The sum of the numbers 5, and 6 is: 11\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case3:
    run: ./sum2
    points: 10
    script:
        - expect: "Please enter numbers: "  # timeout: 2
        - send: "15"
        - send: "-20"
        - expect: "The sum of the numbers 15, and -20 is: -5\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0