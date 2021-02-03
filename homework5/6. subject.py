#из файла убрал обозначения в скобках
#или они обязательны? тогда нужно будет
#реализовывать перевод из str в int
#немного схитрил :)

subj = {}

with open('homework5/file_6.txt', 'r') as init_f:
    for line in init_f:
        subject, lecture, practice, lab = line.split()
        subj[subject] = int(lecture) + int(practice) + int(lab)
    print(f'Общее количество часов по предмету - \n {subj}')