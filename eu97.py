#coding=utf-8

a=2
for i in range(2,7830458):
	a=a*2
	b=str(a)
	if len(b)>10:
		c=b[-10:]
		a=int(c)
print a
a=a*28433+1
print a