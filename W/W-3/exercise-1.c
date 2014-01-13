int f(int a, int b, int c) {
	a = b + c;
	b = c - b;
	c = c + a;
	return (a + b + c);
}

void main() {
	int x = 5;
	int y = 2;
	int r = f(x, y, x);
	print(r);
	print(x);
	print(y);
}