- init:
    run: rm -f mt2q1
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror q1.c -o q1  # timeout: 2
    blocker: true

- case_1:
    run: ./q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "C 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "O 2"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "end 0"
        - expect: "The molecular weight is 44.01\r\n" # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_2:
    run: ./q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "C 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "H 4"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "end 0"
        - expect: "The molecular weight is 16.04\r\n" # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_3:
    run: ./q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "C 2"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "H 5"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "O 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "H 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "end 0"
        - expect: "The molecular weight is 46.06\r\n" # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_4:
    run: ./q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "He 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "end 0"
        - expect: "The molecular weight is 4.00\r\n" # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_5:
    run: ./q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "Ne 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "end 0"
        - expect: "The molecular weight is 20.18\r\n" # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_6:
    run: ./q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "Li 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "O 2"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "end 0"
        - expect: "The molecular weight is 38.94\r\n" # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_7:
    run: ./q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "Be 3"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "N 2"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "end 0"
        - expect: "The molecular weight is 55.05\r\n" # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_8:
    run: ./q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "F 3"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "C 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "O 2"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "end 0"
        - expect: "The molecular weight is 101.00\r\n" # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_9:
    run: ./q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "F 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "Ha 5"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "B 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "end 0"
        - expect: "The molecular weight is 29.81\r\n" # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_10:
    run: ./q1
    points: 1
    script:
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "Na 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "Cl 1"
        - expect: "Enter element symbol and number of atoms separated with a space: "  # timeout: 2
        - send: "end 0"
        - expect: "The molecular weight is 0.00\r\n" # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0
