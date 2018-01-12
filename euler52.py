flag=0
number=1
while 1:
	flag=0
	number=str(int(number)+1)
	print number
	numlist1={number[item] for item in range(0, len(number))}
	for i in range(2,7):
		numberi=str(i*int(number))
		numlisti={numberi[item] for item in range(0, len(numberi))}
		if numlist1==numlisti:
			flag=flag+1
		else:
			break
	if flag==5:
		break
	else:
		continue
print number