#coding=utf-8
import itertools
import math 
 
def isprime(n):
	for i in range(2,int(math.sqrt(n))+1):
		if n%i==0:
			return False
	return True

flag=0
a=['1','2','3','4','5','6','7']
lista=list(itertools.permutations(a,7))
for i in range(0,len(lista)):
	b=int(lista[i][0]+lista[i][1]+lista[i][2]+lista[i][3]+lista[i][4]+lista[i][5]+lista[i][6])
	#print b
	if isprime(b):
		if b>flag:
			flag=b
		print flag