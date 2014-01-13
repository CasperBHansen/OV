int x = 5; // global x

void g()      { print(x);                    }
void h(int y) { int x = y + 2; g();          }
void f(int x) { if (x == 4) g(); else h(x);  }