- init:
    run: rm -f temp_conv
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror temp_conv.c -lm -o temp_conv  # timeout: 2
    blocker: true

- case_istanbul:
    run: ./temp_conv
    points: 10
    script:
        - expect: "Enter Fahrenheit:"  # timeout: 2
        - send: "61.25"
        - expect: "61.25 fahrenheit is 16.250 celcius\r\n"  # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_ankara:
    run: ./temp_conv
    points: 10
    script:
        - expect: "Enter Fahrenheit:"  # timeout: 2
        - send: "45.2"
        - expect: "45.20 fahrenheit is 7.333 celcius\r\n"  # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_gaziantep:
    run: ./temp_conv
    points: 10
    script:
        - expect: "Enter Fahrenheit:"  # timeout: 2
        - send: "89"
        - expect: "89.00 fahrenheit is 31.667 celcius\r\n"  # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0