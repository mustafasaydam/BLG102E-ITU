- init:
    run: rm -f mt2q3
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror mt2q3.c -o mt2q3  # timeout: 10
    blocker: true

- case_1:
    run: ./mt2q3
    points: 1
    script:
        - expect: "Enter your numbers \\(-1 to finish\\):\r\n"  # timeout: 10
        - send: "2"
        - send: "6"
        - send: "4"
        - send: "7"
        - send: "-1"
        - expect: "Number of evens: 3\r\n"    # timeout: 10
        - expect: "What type of numbers would you print\\?\r\n  \\> \\(0: for evens only, 1: for all numbers\\):"    # timeout: 10
        - send: "0"
        - expect: "1. 2\r\n"                   # timeout: 10
        - expect: "2. 6\r\n"                   # timeout: 10
        - expect: "3. 4|\r\n"                   # timeout: 10
        - expect: _EOF_  # timeout: 10
    exit: 0

- case_2:
    run: ./mt2q3
    points: 1
    script:
        - expect: "Enter your numbers \\(-1 to finish\\):\r\n"  # timeout: 10
        - send: "2"
        - send: "6"
        - send: "4"
        - send: "7"
        - send: "-1"
        - expect: "Number of evens: 3\r\n"    # timeout: 10
        - expect: "What type of numbers would you print\\?\r\n  \\> \\(0: for evens only, 1: for all numbers\\):"    # timeout: 10
        - send: "1"
        - expect: "1. 2\r\n"                   # timeout: 10
        - expect: "2. 6\r\n"                   # timeout: 10
        - expect: "3. 4|\r\n"                   # timeout: 10
        - expect: "4. 7|\r\n"                   # timeout: 10
        - expect: _EOF_  # timeout: 10
    exit: 0

- case_3:
    run: ./mt2q3
    points: 1
    script:
        - expect: "Enter your numbers \\(-1 to finish\\):\r\n"  # timeout: 10
        - send: "2"
        - send: "6"
        - send: "4"
        - send: "7"
        - send: "9"
        - send: "8"
        - expect: "Max capacity is reached\\! Cannot accept more numbers\\!\r\n"  #timeout: 10
        - expect: "Number of evens: 4\r\n"    # timeout: 10
        - expect: "What type of numbers would you print\\?\r\n  \\> \\(0: for evens only, 1: for all numbers\\):"    # timeout: 10
        - send: "1"
        - expect: "1. 2\r\n"                   # timeout: 10
        - expect: "2. 6\r\n"                   # timeout: 10
        - expect: "3. 4|\r\n"                   # timeout: 10
        - expect: "4. 7|\r\n"                   # timeout: 10
        - expect: "5. 9|\r\n"                   # timeout: 10
        - expect: "6. 8|\r\n"                   # timeout: 10
        - expect: _EOF_  # timeout: 10
    exit: 0