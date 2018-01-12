//
//  main.cpp
//  eu92
//
//  Created by freedom on 16/7/19.
//  Copyright © 2016年 freedom. All rights reserved.
//

#include<stdio.h>
int main()
{
    long long n=0;
    long long i=1;
    while(i<10000000)
    {
    begin:
        long long sum=0;
        long long a=i;
        while(a!=0)
        {
            sum=sum+a%10;
            a=(a-a%10)/10;
        }
        while(sum!=1)
        {
            if(sum==89)
            {
                n=n+1;
                i=i+1;
                goto begin;
            }
            long long b=0;
            //printf("%ld\n",sum);
            while(sum!=0)
            {
                b=(sum%10)*(sum%10)+b;
                sum=(sum-sum%10)/10;
            }
            sum=b;
        }
        i=i+1;
    }
    printf("%lld\n",n);
}