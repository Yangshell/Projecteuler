//
//  main.cpp
//  eu20
//
//  Created by freedom on 16/7/19.
//  Copyright © 2016年 freedom. All rights reserved.
//

#include<stdio.h>
int main()
{
    long n;
    long mul=1;
    long sum;
    for(n=1;n<=100;n++)
    {
        mul=mul*n;
        printf("%ld ",mul);
        if(mul%10==0)
            mul=mul/10;
    }
    for(sum=0;mul>0;)
    {
        sum=sum+mul%10;
        mul=(mul-mul%10)/10;
    }
    printf("%ld\n",sum);
}