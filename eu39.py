#coding=utf-8
import math
from collections import Counter

def getp(a,b):
	p=[]
	for i in range(1,1+a):
		for j in range(i,1+b):
			c=math.sqrt(i*i+j*j)
			if c%1==0:
				#print i,j,c
				p.append(i+j+c)
	return p

p=getp(1000,1000)
maxn=0
maxp=0
for i in p:
	if i<1000:
		n=p.count(i)
		if maxn<n:
			maxn=n
			maxp=i

print maxp