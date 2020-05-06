#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

uint8_t * my_memmove(uint8_t *src, uint8_t *dst, size_t length);
uint8_t * my_memcopy(uint8_t *src, uint8_t *dst, size_t length);
uint8_t * my_memset(uint8_t * src, size_t length, uint8_t value);
uint8_t * my_memzero(uint8_t * src, size_t length);
uint8_t * my_reverse(uint8_t * src, size_t length);
int32_t * reserve_words(size_t length);
void free_words(int32_t * src);

uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base);
int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base);

int main(void)
{
uint8_t leng, str_a[20]={"SAIKIRAN_BEHERA"} ,str_c[20]={0};;
int32_t a=-1234,str_b[20]={0};

printf("Before\n");



printf("\nstr_a = ");
for(int i=0;i<sizeof(str_a);i++)
printf("%c",str_a[i]);

printf("\nstr_b = ");
for(int i=0;i<sizeof(str_c);i++)
printf("%d",str_b[i]);

leng = my_itoa(a,&str_c[0],2);


printf("\n length =%d \n",leng);
for(size_t i=0; i< leng ;i++)
{
printf("%c",str_c[i]);
}
printf("\n");
/*
printf("\nAfter\n");
printf("\nstr_a = ");
for(int i=0;i<sizeof(str_a);i++)
printf("%c",str_a[i]);
printf("\nstr_a = ");
for(int i=0;i<sizeof(str_a);i++)
printf("%c",*(ptr+i));
printf("\n");

free_words( (uint32_t*)ptr );*/

return 0;
}

uint8_t * my_memmove(uint8_t *src, uint8_t *dst, size_t length)
{
uint8_t *p;
p=(uint8_t *)calloc(length,sizeof(uint8_t));

for(size_t i=0;i<length;i++)
  *(p+i)=*(src+i);
 

for(size_t i=0;i<length;i++)
  *(dst+i)=*(p+i);

free(p);
return dst;
}

uint8_t * my_memcopy(uint8_t *src, uint8_t *dst, size_t length)
{


for(size_t i=0;i<length;i++)
 {
  *(dst+i)=*(src+i);
 }
return dst;
}

uint8_t * my_memset(uint8_t * src, size_t length, uint8_t value)
{

for(size_t i=0; i<length;i++)
*(src+i)=value;

return src;

}

uint8_t * my_memzero(uint8_t * src, size_t length)
{

for(size_t i=0; i<length;i++)
*(src+i)=0;

return src;
}

uint8_t * my_reverse(uint8_t * src, size_t length)
{
uint8_t *ptr;

ptr=(uint8_t *)calloc(length,sizeof(uint8_t));
for(size_t i=0;i<length;i++)                                        
 {
  *(ptr+i)=*src;
  src++;
}

for(size_t i=0;i<length;i++)                                        
 {
  src--;
  *src=*(ptr+i);
  }
free(ptr);
return src;
}


int32_t * reserve_words(size_t length)
{

uint32_t *ptr;
ptr = (uint32_t *)calloc(length,sizeof(uint32_t));

if(! ptr)
return 0;

else 
return ptr;
}


void free_words(int32_t * src)
{
free(src);
}



uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base)
{

int32_t temp=0,str[32]={0};
int i=0, len=0 ;
//char  str[10]={0}; 
// maximum length of 32 bit string is 10 and negative and with nulset
printf("\n");
printf("\nintial ptr %p \n",ptr);
if (data < 0)
{
printf("\nnegative\n");
data= data*-1;
*ptr='-';
ptr++;
len++;
}

str[0]='\0';
i++;
len++;

if(base == 10 ) // dec
{

while(data !=0)
{
 str[i++]=(data%10)+48;
 data=data/10;
 len++;
}

}

else if(base == 16)
{
 while (data != 0)
 {
 temp = data % 16;          
 if (temp < 10)
 str[i++] = 48 + temp;   
 else
 str[i++] = 55 + temp;   
 data = data / 16;            
 len++;
 }

}

else if(base == 2)
{
while(data !=0)
{
temp=data%2;
str[i++]=48+temp;
data=data/2;
len++;
}

}



for (i ; i >= 0; i--)
{
 *ptr=str[i];
 ptr++;
}

ptr=ptr-len;

return len;
}

int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base)
{


}

