import time


if __name__ == '__main__':
    a = 0
    with open('sonm_test.txt', 'w') as f:
        while True:
            b = a * 5
            result = a + b
            print('%i + %i = %i' % (a, b, result))
            f.write('%i + %i = %i\n' % (a, b, result))

            time.sleep(1)
            a += 1
