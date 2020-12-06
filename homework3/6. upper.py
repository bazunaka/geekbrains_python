words = input("Введите слова через пробел: ").split(" ")
new_words = []

def int_func(word):
    word = word.upper()

    return word

for i in range(0, len(words)):
    #print(words[i])
    print(int_func(words[i]))

    #new_words = new_words.append(word)

#print(words)