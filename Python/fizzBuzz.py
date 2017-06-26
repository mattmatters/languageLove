for i in range(0, 50):
    if i % 3 and i % 5:
        print(str(i) + ' fizz buzz')
    elif i % 3:
        print(str(i) + ' fizz')
    elif i % 5:
        print(str(i) + ' buzz')
    else:
        print(str(i))
