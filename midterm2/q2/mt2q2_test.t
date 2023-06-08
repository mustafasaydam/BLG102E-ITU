- init:
    run: rm -f mt2q2
    blocker: true

- build:
    run: gcc -std=c99 -Wall -Werror mt2q2.c -o mt2q2  # timeout: 2
    blocker: true

- case_1:
    run: ./mt2q2
    points: 1
    script:
        - expect: "Enter phrase: "                   # timeout: 2
        - send: "venividivici"
        - expect: "Enter number of parts: "                   # timeout: 2
        - send: "3"
        - expect: "\\|veni\\|\r\n"                   # timeout: 2
        - expect: "\\|vidi\\|\r\n"                   # timeout: 2
        - expect: "\\|vici\\|\r\n"                   # timeout: 2
        - expect: _EOF_  # timeout: 2
    exit: 0

- case_2:
    run: ./mt2q2
    points: 1
    script:
        - expect: "Enter phrase: "                   # timeout: 2
        - send: "venividivici"
        - expect: "Enter number of parts: "                   # timeout: 2
        - send: "2"
        - expect: "\\|venivi\\|\r\n"                   # timeout: 2
        - expect: "\\|divici\\|\r\n"                   # timeout: 2
    exit: 0

- case_3:
    run: ./mt2q2
    points: 1
    script:
        - expect: "Enter phrase: "                   # timeout: 2
        - send: "qwertyuiopasdfghjklzxcvbnm123"
        - expect: "Enter number of parts: "                   # timeout: 2
        - send: "29"
        - expect: "\\|q\\|\r\n"                   # timeout: 2
        - expect: "\\|w\\|\r\n"                   # timeout: 2
        - expect: "\\|e\\|\r\n"                   # timeout: 2
        - expect: "\\|r\\|\r\n"                   # timeout: 2
        - expect: "\\|t\\|\r\n"                   # timeout: 2
        - expect: "\\|y\\|\r\n"                   # timeout: 2
        - expect: "\\|u\\|\r\n"                   # timeout: 2
        - expect: "\\|i\\|\r\n"                   # timeout: 2
        - expect: "\\|o\\|\r\n"                   # timeout: 2
        - expect: "\\|p\\|\r\n"                   # timeout: 2
        - expect: "\\|a\\|\r\n"                   # timeout: 2
        - expect: "\\|s\\|\r\n"                   # timeout: 2
        - expect: "\\|d\\|\r\n"                   # timeout: 2
        - expect: "\\|f\\|\r\n"                   # timeout: 2
        - expect: "\\|g\\|\r\n"                   # timeout: 2
        - expect: "\\|h\\|\r\n"                   # timeout: 2
        - expect: "\\|j\\|\r\n"                   # timeout: 2
        - expect: "\\|k\\|\r\n"                   # timeout: 2
        - expect: "\\|l\\|\r\n"                   # timeout: 2
        - expect: "\\|z\\|\r\n"                   # timeout: 2
        - expect: "\\|x\\|\r\n"                   # timeout: 2
        - expect: "\\|c\\|\r\n"                   # timeout: 2
        - expect: "\\|v\\|\r\n"                   # timeout: 2
        - expect: "\\|b\\|\r\n"                   # timeout: 2
        - expect: "\\|n\\|\r\n"                   # timeout: 2
        - expect: "\\|m\\|\r\n"                   # timeout: 2
        - expect: "\\|1\\|\r\n"                   # timeout: 2
        - expect: "\\|2\\|\r\n"                   # timeout: 2
        - expect: "\\|3\\|\r\n"                   # timeout: 2
    exit: 0

- case_4:
    run: ./mt2q2
    points: 1
    script:
        - expect: "Enter phrase: "                   # timeout: 2
        - send: "qwertyuiopasdfghjklzxcvbnm123"
        - expect: "Enter number of parts: "                   # timeout: 2
        - send: "1"
        - expect: "\\|qwertyuiopasdfghjklzxcvbnm123\\|\r\n"                   # timeout: 2
    exit: 0

- case_5:
    run: ./mt2q2
    points: 1
    script:
        - expect: "Enter phrase: "                   # timeout: 2
        - send: "123456723456783456789"
        - expect: "Enter number of parts: "                   # timeout: 2
        - send: "3"
        - expect: "\\|1234567\\|\r\n"                   # timeout: 2
        - expect: "\\|2345678\\|\r\n"                   # timeout: 2
        - expect: "\\|3456789\\|\r\n"                   # timeout: 2
    exit: 0

- case_6:
    run: ./mt2q2
    points: 1
    script:
        - expect: "Enter phrase: "                   # timeout: 2
        - send: "123456789"
        - expect: "Enter number of parts: "                   # timeout: 2
        - send: "9"
        - expect: "\\|1\\|\r\n"                   # timeout: 2
        - expect: "\\|2\\|\r\n"                   # timeout: 2
        - expect: "\\|3\\|\r\n"                   # timeout: 2
        - expect: "\\|4\\|\r\n"                   # timeout: 2
        - expect: "\\|5\\|\r\n"                   # timeout: 2
        - expect: "\\|6\\|\r\n"                   # timeout: 2
        - expect: "\\|7\\|\r\n"                   # timeout: 2
        - expect: "\\|8\\|\r\n"                   # timeout: 2
        - expect: "\\|9\\|\r\n"                   # timeout: 2
    exit: 0

- case_7:
    run: ./mt2q2
    points: 1
    script:
        - expect: "Enter phrase: "                   # timeout: 2
        - send: "basaramadikabi"
        - expect: "Enter number of parts: "                   # timeout: 2
        - send: "7"
        - expect: "\\|ba\\|\r\n"                   # timeout: 2
        - expect: "\\|sa\\|\r\n"                   # timeout: 2
        - expect: "\\|ra\\|\r\n"                   # timeout: 2
        - expect: "\\|ma\\|\r\n"                   # timeout: 2
        - expect: "\\|di\\|\r\n"                   # timeout: 2
        - expect: "\\|ka\\|\r\n"                   # timeout: 2
        - expect: "\\|bi\\|\r\n"                   # timeout: 2
    exit: 0

- case_8:
    run: ./mt2q2
    points: 1
    script:
        - expect: "Enter phrase: "                   # timeout: 2
        - send: "kolaydegilkolaydegil"
        - expect: "Enter number of parts: "                   # timeout: 2
        - send: "4"
        - expect: "\\|kolay\\|\r\n"                   # timeout: 2
        - expect: "\\|degil\\|\r\n"                   # timeout: 2
        - expect: "\\|kolay\\|\r\n"                   # timeout: 2
        - expect: "\\|degil\\|\r\n"                   # timeout: 2
    exit: 0