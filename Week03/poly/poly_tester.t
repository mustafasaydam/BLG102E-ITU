- init:
    run: rm -f poly
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror polynomial.c -lm -o poly  # timeout: 2
    blocker: true

- case_1:
    run: ./poly
    points: 10
    script:
        - expect: "Enter 3 coefficients for second-order polynomial:"                   # timeout: 2
        - send: "1 2 1"
        - expect: "Roots: x1: -1.00, x2: -1.00\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_2:
    run: ./poly
    points: 10
    script:
        - expect: "Enter 3 coefficients for second-order polynomial:"                   # timeout: 2
        - send: "5 7 2"
        - expect: "Roots: x1: -0.40, x2: -1.00\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_3:
    run: ./poly
    points: 10
    script:
        - expect: "Enter 3 coefficients for second-order polynomial:"                   # timeout: 2
        - send: "1 7 2"
        - expect: "Roots: x1: -0.30, x2: -6.70\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_4:
    run: ./poly
    points: 10
    script:
        - expect: "Enter 3 coefficients for second-order polynomial:"                   # timeout: 2
        - send: "1 -5 6"
        - expect: "Roots: x1: 3.00, x2: 2.00\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0
