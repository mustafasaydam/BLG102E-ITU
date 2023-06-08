- init:
    run: rm -f mt2q1
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror mt2q1.c -o mt2q1  # timeout: 10
    blocker: true

- case_1:
    run: ./mt2q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 10
        - send: "C 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 10
        - send: "O 2"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 10
        - send: "end 0"
        - expect: "The molecular weight is 44.01\r\n" # timeout: 10
        - expect: _EOF_  # timeout: 10
    exit: 0

- case_2:
    run: ./mt2q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 10
        - send: "C 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 10
        - send: "H 4"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 10
        - send: "end 0"
        - expect: "The molecular weight is 16.04\r\n" # timeout: 10
        - expect: _EOF_  # timeout: 10
    exit: 0

- case_3:
    run: ./mt2q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 10
        - send: "C 2"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 10
        - send: "H 5"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 10
        - send: "O 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 10
        - send: "H 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 10
        - send: "end 0"
        - expect: "The molecular weight is 46.06\r\n" # timeout: 10
        - expect: _EOF_  # timeout: 10
    exit: 0