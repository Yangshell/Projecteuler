import math
n=0
istart=1020304050607080900
for i1 in range(0,1000000000000000000,100000000000000000):
	for i2 in range(0,10000000000000000,1000000000000000):
		for i3 in range(0,100000000000000,10000000000000):
			for i4 in range(0,1000000000000,100000000000):
				for i5 in range(0,10000000000,1000000000):
					for i6 in range(0,100000000,10000000):
						for i7 in range(0,1000000,100000):
							for i8 in range(0,10000,1000):
								i=istart+i1+i2+i3+i4+i5+i6+i7+i8
								if math.sqrt(i)%10==0:
									print sqrt(i)
									break
	print i2