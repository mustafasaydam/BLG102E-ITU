- init:
    run: rm -f palindrome
    blocker: true

- build:
    run: gcc -std=c99 -Werror palindrome.c -o palindrome        # timeout: 2
    blocker: true

- case1:
    run: ./palindrome
    points: 1
    script:
        - expect: "Enter a number or \\(-1\\) to quit: "        # timeout: 2
        - send: "1"
        - expect: "This number is a palindrome.\r\n"            # timeout: 2
        - expect: "Enter a number or \\(-1\\) to quit: "        # timeout: 2
        - send: "101"
        - expect: "This number is a palindrome.\r\n"            # timeout: 2
        - expect: "Enter a number or \\(-1\\) to quit: "        # timeout: 2
        - send: "123"
        - expect: "This number is not a palindrome.\r\n"        # timeout: 2
        - expect: "Enter a number or \\(-1\\) to quit: "        # timeout: 2
        - send: "123432"
        - expect: "This number is not a palindrome.\r\n"            # timeout: 2
        - expect: "Enter a number or \\(-1\\) to quit: "        # timeout: 2
        - send: "-1"
    exit: 0