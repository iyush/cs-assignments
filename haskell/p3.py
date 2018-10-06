def myPrime(n):
    primecounter = 0
    for i in range(1,n+1):
        if (n % i) == 0:
            primecounter+=1
    if primecounter == 2:
        return True
    else:
        return False

print len(filter(myPrime, range(100)))
