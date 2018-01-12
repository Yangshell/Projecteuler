#coding=utf-8

import math
from fractions import Fraction
a=1+Fraction(1,2)
sum=0
for i in range(2,1001):
	a=1+Fraction(1,1+a)
	#print a,float(a),len(str(a.numerator)),len(str(a.denominator))
	if len(str(a.numerator))>len(str(a.denominator)):
		sum=sum+1

print sum