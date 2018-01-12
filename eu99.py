#coding=utf-8
import math
myfile=open('/Users/freedom/Desktop/test.txt','r')
t=myfile.readline()
maxnum=0
line=0
while t:
	line+=1
	print line
	[a,b]=t.split(',')
	a=int(a)
	b=int(b)
	c=b*math.log(a)
	if c>maxnum:
		maxnum=c
		maxline=line
	t=myfile.readline()
print maxline