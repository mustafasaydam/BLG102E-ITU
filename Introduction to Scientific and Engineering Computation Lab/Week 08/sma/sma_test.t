- init:
    run: rm -f sma
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror moving_average.c -o sma  # timeout: 2
    blocker: true

- case1:
    run: ./sma
    points: 10
    script:
        - expect: "Enter data for Week 1:"  # timeout: 2
        - send: "10"
        - expect: "Enter data for Week 2:"  # timeout: 2
        - send: "20"
        - expect: "Enter data for Week 3:"  # timeout: 2
        - send: "30"
        - expect: "Enter data for Week 4:"  # timeout: 2
        - send: "40"
        - expect: "Enter data for Week 5:"  # timeout: 2
        - send: "50"
        - expect: "Enter data for Week 6:"  # timeout: 2
        - send: "60"
        - expect: "Enter data for Week 7:"  # timeout: 2
        - send: "70"
        - expect: "Enter data for Week 8:"  # timeout: 2
        - send: "60"
        - expect: "Enter data for Week 9:"  # timeout: 2
        - send: "50"
        - expect: "Enter data for Week 10:"  # timeout: 2
        - send: "40"
        - expect: "Enter data for Week 11:"  # timeout: 2
        - send: "30"
        - expect: "Enter data for Week 12:"  # timeout: 2
        - send: "20"
        - expect: "Enter data for Week 13:"  # timeout: 2
        - send: "10"
        - expect: "Enter data for Week 14:"  # timeout: 2
        - send: "0"
        - expect: "Enter data for Week 15:"  # timeout: 2
        - send: "-10"
        - expect: "Enter data for Week 16:"  # timeout: 2
        - send: "-20"
        - expect: "Week 1: 10.000  10.000  0.000\r\n"
        - expect: "Week 2: 20.000  15.000  0.000\r\n"
        - expect: "Week 3: 30.000  20.000  20.000\r\n"
        - expect: "Week 4: 40.000  25.000  30.000\r\n"
        - expect: "Week 5: 50.000  30.000  40.000\r\n"
        - expect: "Week 6: 60.000  35.000  50.000\r\n"
        - expect: "Week 7: 70.000  40.000  60.000\r\n"
        - expect: "Week 8: 60.000  42.500  63.333\r\n"
        - expect: "Week 9: 50.000  43.333  60.000\r\n"
        - expect: "Week 10: 40.000  43.000  50.000\r\n"
        - expect: "Week 11: 30.000  41.818  40.000\r\n"
        - expect: "Week 12: 20.000  40.000  30.000\r\n"
        - expect: "Week 13: 10.000  37.692  20.000\r\n"
        - expect: "Week 14: 0.000  35.000  10.000\r\n"
        - expect: "Week 15: -10.000  32.000  0.000\r\n"
        - expect: "Week 16: -20.000  28.750  -10.000\r\n"
        - expect: _EOF_  # timeout: 2
    exit: 0

- case2:
    run: ./sma
    points: 10
    script:
        - expect: "Enter data for Week 1:"  # timeout: 2
        - send: "1.45"
        - expect: "Enter data for Week 2:"  # timeout: 2
        - send: "50.4"
        - expect: "Enter data for Week 3:"  # timeout: 2
        - send: "2.34"
        - expect: "Enter data for Week 4:"  # timeout: 2
        - send: "4.1"
        - expect: "Enter data for Week 5:"  # timeout: 2
        - send: "1.0"
        - expect: "Enter data for Week 6:"  # timeout: 2
        - send: "805.1"
        - expect: "Enter data for Week 7:"  # timeout: 2
        - send: "-1000.0"
        - expect: "Enter data for Week 8:"  # timeout: 2
        - send: "50"
        - expect: "Enter data for Week 9:"  # timeout: 2
        - send: "10"
        - expect: "Enter data for Week 10:"  # timeout: 2
        - send: "50"
        - expect: "Enter data for Week 11:"  # timeout: 2
        - send: "10"
        - expect: "Enter data for Week 12:"  # timeout: 2
        - send: "15"
        - expect: "Enter data for Week 13:"  # timeout: 2
        - send: "13"
        - expect: "Enter data for Week 14:"  # timeout: 2
        - send: "14"
        - expect: "Enter data for Week 15:"  # timeout: 2
        - send: "15"
        - expect: "Enter data for Week 16:"  # timeout: 2
        - send: "16"
        - expect: "Week 1: 1.450  1.450  0.000\r\n"
        - expect: "Week 2: 50.400  25.925  0.000\r\n"
        - expect: "Week 3: 2.340  18.063  18.063\r\n"
        - expect: "Week 4: 4.100  14.572  18.947\r\n"
        - expect: "Week 5: 1.000  11.858  2.480\r\n"
        - expect: "Week 6: 805.100  144.065  270.067\r\n"
        - expect: "Week 7: -1000.000  -19.373  -64.633\r\n"
        - expect: "Week 8: 50.000  -10.701  -48.300\r\n"
        - expect: "Week 9: 10.000  -8.401  -313.333\r\n"
        - expect: "Week 10: 50.000  -2.561  36.667\r\n"
        - expect: "Week 11: 10.000  -1.419  23.333\r\n"
        - expect: "Week 12: 15.000  -0.051  25.000\r\n"
        - expect: "Week 13: 13.000  0.953  12.667\r\n"
        - expect: "Week 14: 14.000  1.885  14.000\r\n"
        - expect: "Week 15: 15.000  2.759  14.000\r\n"
        - expect: "Week 16: 16.000  3.587  15.000\r\n"
        - expect: _EOF_  # timeout: 2
    exit: 0
