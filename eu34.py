#coding=utf-8
import math

def flist():
	f=[]
	for i in range(0,10):
		f.append(math.factorial(i))
	return f
def ifequal(a,b):
	s=0
	c=str(a)
	for i in range(0,len(c)):
		s=s+b[int(c[i])]
	if s==a:
		return True
	else:
		return False

f=flist()
sumi=0
for i in range(10,10000001):
	if ifequal(i,f):
		print i
		sumi=sumi+i

print sumi