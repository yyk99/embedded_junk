extern void exit (int __status);
extern void _exit (int __status) __attribute__ ((__noreturn__));
extern int printf(const char *format, ...);

int f2(int x)
{
	return x + 1;
}

int f1(int a, int b)
{
	return f2(a) + b;
}

int dot(int *v1, int *v2, int n)
{
	int s = 0;
	while(n--)
		s += *v1++ * *v2++;
	return s;
}


int v1[] = {1,2,3,4,5};
int v2[] = {5,6,7,8,9};

int main()
{
	int d = dot(v1,v2,sizeof(v1)/sizeof(*v1));
	
	printf("%d\n", d);

	return 0;
}
