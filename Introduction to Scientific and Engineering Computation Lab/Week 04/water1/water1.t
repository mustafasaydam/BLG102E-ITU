- init:
    run: rm -f water
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror water1.c -o water  # timeout: 2
    blocker: true

- case_67_C:
    run: ./water
    points: 1
    script:
        - expect: "Enter the temperature: "  # timeout: 2
        - send: "67"
        - expect: "Enter the unit of temperature \\(Celsius:1, Fahrenheit:2\\): "  # timeout: 2
        - send: "1"
        - expect: "Water is Liquid at 67.00 degrees Celsius\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_19_2_F:
    run: ./water
    points: 1
    script:
        - expect: "Enter the temperature: "  # timeout: 2
        - send: "19.2"
        - expect: "Enter the unit of temperature \\(Celsius:1, Fahrenheit:2\\): "  # timeout: 2
        - send: "2"
        - expect: "Water is Solid \\(Ice\\) at 19.20 degrees Fahrenheit\r\n"                  # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_180_C:
    run: ./water
    points: 1
    script:
        - expect: "Enter the temperature: "  # timeout: 2
        - send: "180"
        - expect: "Enter the unit of temperature \\(Celsius:1, Fahrenheit:2\\): "  # timeout: 2
        - send: "1"
        - expect: "Water is Gas \\(Vapor\\) at 180.00 degrees Celsius\r\n"                  # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_input_error:
    run: ./water
    points: 1
    script:
        - expect: "Enter the temperature: "  # timeout: 2
        - send: "67"
        - expect: "Enter the unit of temperature \\(Celsius:1, Fahrenheit:2\\): "  # timeout: 2
        - send: "3"
        - expect: "Please enter temperature unit as either 1 \\(celsius\\) or 2 \\(fahrenheit\\).\r\n"                  # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 1