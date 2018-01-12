#coding=utf-8
import math

def isprime(n):
	for i in range(2,int(math.sqrt(n))+1):
		if n%i==0:
			return False
	return True
def primelist(n):
	plist=[]
	for i in range(2,n+1):
		if isprime(i):
			plist.append(i)
	return plist
def glist(a,b,c,d):
	for x in a:
		b.append(x**2)
		if x**3<50000000:
			c.append(x**3)
		if x**4<50000000:
			d.append(x**4)
	return (b,c,d)


#print primelist(int(math.sqrt(50000000)))
a=primelist(int(math.sqrt(50000000)))
#print a
b=[]
c=[]
d=[]
sumlist=[]
(b,c,d)=glist(a,b,c,d)
#print b,c,d
for i in range(0,len(b)):
	for j in range(0,len(c)):
		for k in range(0,len(d)):
			#print i,j,k
			sum=b[i]+c[j]+d[k]
			if sum<50000000:
				sumlist.append(sum)
print len(sumlist)
print len(list(set(sumlist)))
#print sumlist