extern void exit (int __status);
extern void _exit (int __status) __attribute__ ((__noreturn__));

int f2(int x)
{
	return x + 1;
}

int f1(int a, int b)
{
	return f2(a) + b;
}

int main()
{
	int k = f1(10, 15);

	_exit(k);
}
