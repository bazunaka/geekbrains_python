def ascii_row(ascii_value = 32):
    if ascii_value == 128:
        return True
    print(f'{ascii_value} - {chr(ascii_value)}', end = ' ')
    if (ascii_value - 31) % 10 == 0:
        print('\n')

    ascii_row(ascii_value + 1)

ascii_row()