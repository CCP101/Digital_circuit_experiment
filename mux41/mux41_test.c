#include<stdio.h>
#include"mux41.h"
int main(void)
{
	int res1 = 0;
	int res2 = 0;
	int res3 = 0;
	int res4 = 0;
	res1 = mux41(1,0,0,0,0);
	res2 = mux41(0,1,0,0,1);
	res3 = mux41(0,0,1,0,2);
	res4 = mux41(0,0,0,2,3);
	if(res1 && res2 && res3 && res4)
		printf("test passed,well done\n");
		return 0;
}
