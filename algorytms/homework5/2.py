import collections

signs = '0123456789ABCDEF'
table = collections.defaultdict(int)
counter = 0

def my_dex(string):
    dex = 0
    num = collections.deque(string)
    num.reverse()
    for i in range(len()):
        dex += table[num[i]] * 16 ** i
    return dex


def my_hex(numb):
    num = collections.deque()
    while numb > 0:

