- init:
    run: rm -f lineq
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror lineq.c -o lineq  # timeout: 2
    blocker: true

- case1:
    run: ./lineq
    points: 10
    script:
        - expect: "Please enter the slope of the linear equation: "  # timeout: 2
        - send: "2.2"
        - expect: "Please enter the y-intercept of the linear equation: "  # timeout: 2
        - send: "3.8"
        - expect: "Please enter the the point x at which you want to evaluate the linear equation: "  # timeout: 2
        - send: "6.0"
        - expect: "The evaluation of the function 2.20 \\* x \\+ 3.80 at point x = 6.00 is 17.00\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case2:
    run: ./lineq
    points: 10
    script:
        - expect: "Please enter the slope of the linear equation: "  # timeout: 2
        - send: "0.18"
        - expect: "Please enter the y-intercept of the linear equation: "  # timeout: 2
        - send: "5"
        - expect: "Please enter the the point x at which you want to evaluate the linear equation: "  # timeout: 2
        - send: "-0.45"
        - expect: "The evaluation of the function 0.18 \\* x \\+ 5.00 at point x = -0.45 is 4.92\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0