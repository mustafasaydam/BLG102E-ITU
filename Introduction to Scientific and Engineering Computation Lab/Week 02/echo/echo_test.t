- init:
    run: rm -f echo
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror echo.c -o echo  # timeout: 2
    blocker: true

- case1:
    run: ./echo
    points: 10
    script:
        - expect: "Please enter a number: "  # timeout: 2
        - send: "175"
        - expect: "The number you've entered is: 175\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case2:
    run: ./echo
    points: 10
    script:
        - expect: "Please enter a number: "  # timeout: 2
        - send: "-56"
        - expect: "The number you've entered is: -56\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0
