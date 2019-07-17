#include"mux41.h"
int1 mux41(int1 sig_a,int1 sig_b,int1 sig_c,int1 sig_d,int1 select)
{
		if(select==0)
			return sig_a;
		else if(select==1)
			return sig_b;
		else if(select==2)
			return sig_c;
		else if(select==3)
			return sig_d;

}
