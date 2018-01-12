#coding=utf-8
import math

def c(n,r):
	return math.factorial(n)/(math.factorial(r)*math.factorial(n-r))

sum=0
for i in range(1,101):
	for j in range(2,i):
		if c(i,j)>=1000000:
			sum=sum+1
			print i,j


print sum
print c(23,10)