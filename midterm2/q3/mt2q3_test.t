- init:
    run: rm -f mt2q3
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror mt2q3.c -o mt2q3  # timeout: 1
    blocker: true

- case_1:
    run: ./mt2q3
    points: 1
    script:
        - expect: "Enter your numbers \\(-1 to finish\\):\r\n"  # timeout: 1
        - send: "2"
        - send: "6"
        - send: "6"
        - send: "7"
        - send: "-1"
        - expect: "Number of evens: 3\r\n"    # timeout: 1
        - expect: "What type of numbers would you print\\?\r\n  \\> \\(0: for evens only, 1: for all numbers\\):"    # timeout: 1
        - send: "0"
        - expect: "1. 2\r\n"                   # timeout: 1
        - expect: "2. 6\r\n"                   # timeout: 1
        - expect: "3. 6|\r\n"                   # timeout: 1
        - expect: _EOF_  # timeout: 1
    exit: 0

- case_1_new:
    run: ./mt2q3
    points: 1
    script:
        - expect: "Enter your numbers \\(-1 to finish\\):\r\n"  # timeout: 1
        - send: "1"
        - send: "3"
        - send: "5"
        - send: "7"
        - send: "-1"
        - expect: "Number of evens: 0\r\n"    # timeout: 1
        - expect: "What type of numbers would you print\\?\r\n  \\> \\(0: for evens only, 1: for all numbers\\):"    # timeout: 1
        - send: "0"
        - expect: _EOF_  # timeout: 1
    exit: 0

- case_2:
    run: ./mt2q3
    points: 1
    script:
        - expect: "Enter your numbers \\(-1 to finish\\):\r\n"  # timeout: 1
        - send: "2"
        - send: "6"
        - send: "4"
        - send: "9"
        - send: "-1"
        - expect: "Number of evens: 3\r\n"    # timeout: 1
        - expect: "What type of numbers would you print\\?\r\n  \\> \\(0: for evens only, 1: for all numbers\\):"    # timeout: 1
        - send: "1"
        - expect: "1. 2\r\n"                   # timeout: 1
        - expect: "2. 6\r\n"                   # timeout: 1
        - expect: "3. 4|\r\n"                   # timeout: 1
        - expect: "4. 9|\r\n"                   # timeout: 1
        - expect: _EOF_  # timeout: 1
    exit: 0

- case_2_new:
    run: ./mt2q3
    points: 1
    script:
        - expect: "Enter your numbers \\(-1 to finish\\):\r\n"  # timeout: 1
        - send: "2"
        - send: "4"
        - send: "6"
        - send: "8"
        - send: "-1"
        - expect: "Number of evens: 4\r\n"    # timeout: 1
        - expect: "What type of numbers would you print\\?\r\n  \\> \\(0: for evens only, 1: for all numbers\\):"    # timeout: 1
        - send: "0"
        - expect: "1. 2\r\n"                   # timeout: 1
        - expect: "2. 4\r\n"                   # timeout: 1
        - expect: "3. 6|\r\n"                   # timeout: 1
        - expect: "4. 8|\r\n"                   # timeout: 1
        - expect: _EOF_  # timeout: 1
    exit: 0    

- case_3:
    run: ./mt2q3
    points: 1
    script:
        - expect: "Enter your numbers \\(-1 to finish\\):\r\n"  # timeout: 1
        - send: "2"
        - send: "6"
        - send: "4"
        - send: "7"
        - send: "11"
        - send: "8"
        - expect: "Max capacity is reached\\! Cannot accept more numbers\\!\r\n"  #timeout: 10
        - expect: "Number of evens: 4\r\n"    # timeout: 1
        - expect: "What type of numbers would you print\\?\r\n  \\> \\(0: for evens only, 1: for all numbers\\):"    # timeout: 1
        - send: "1"
        - expect: "1. 2\r\n"                   # timeout: 1
        - expect: "2. 6\r\n"                   # timeout: 1
        - expect: "3. 4|\r\n"                   # timeout: 1
        - expect: "4. 7|\r\n"                   # timeout: 1
        - expect: "5. 11|\r\n"                   # timeout: 1
        - expect: "6. 8|\r\n"                   # timeout: 1
        - expect: _EOF_  # timeout: 1
    exit: 0