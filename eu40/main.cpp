//
//  main.cpp
//  eu40
//
//  Created by freedom on 16/7/20.
//  Copyright © 2016年 freedom. All rights reserved.
//

#include<stdio.h>
int main()
{
    
    int m=0;
    int mul=1;
    int n=1;
begin:
    int a[6]={0};
    int c=n;
    //printf("%d ",n);
    int size=0;
    while(c!=0)
    {
        c=(c-c%10)/10;
        size=size+1;
    }
    c=n;
    //printf("%d ",size);
    for(int i=0;i<size;i++)
    {
        a[size-i-1]=c%10;
        c=(c-c%10)/10;
    }
    for(int j=0;j<size;j++)
    {
        m++;
        if(m==1||m==10||m==100||m==1000||m==10000||m==100000||m==1000000)
        {
            mul=mul*a[j];
            printf("%d %d %d %d\n",size,n,a[j],mul);
        }
    }
    //printf("%d\n",m);
    if(m<=1000000)
    {
        n++;
        goto begin;
    }
    else;
    printf("%d\n",mul);
    return 0;
}