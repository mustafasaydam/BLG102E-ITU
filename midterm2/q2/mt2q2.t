- init:
    run: rm -f mt2q2
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror mt2q2.c -o mt2q2  # timeout: 10
    blocker: true

- case_1:
    run: ./mt2q2
    points: 1
    script:
        - expect: "Enter phrase: "                   # timeout: 10
        - send: "venividivici"
        - expect: "Enter number of parts: "                   # timeout: 10
        - send: "3"
        - expect: "\\|veni\\|\r\n"                   # timeout: 10
        - expect: "\\|vidi\\|\r\n"                   # timeout: 10
        - expect: "\\|vici\\|\r\n"                   # timeout: 10
        - expect: _EOF_  # timeout: 10
    exit: 0

- case_2:
    run: ./mt2q2
    points: 1
    script:
        - expect: "Enter phrase: "                   # timeout: 10
        - send: "venividivici"
        - expect: "Enter number of parts: "                   # timeout: 10
        - send: "2"
        - expect: "\\|venivi\\|\r\n"                   # timeout: 10
        - expect: "\\|divici\\|\r\n"                   # timeout: 10
    exit: 0