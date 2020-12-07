words = input("Введите слова через пробел: ").split(" ")
new_words = []

def int_func(lst):
    #word[0].upper()

    up_word = [word[0].upper() + word[1:] for word in lst.split()]

    lst = " ".join(up_word)
    #return word.title()

    return lst

#for i in range(0, len(words)):
    #print(words[i])
    #print(int_func(words[i]))

    #new_words = new_words.append(word)

print(int_func(words))
#print(words)