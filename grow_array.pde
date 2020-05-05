void setup() {
 int[] x = new int[10];
 for(int i = 0; i < x.length; i++)
   x[i] = 2*i;
 x = grow(x, 5);
 print(x);
}

int[] grow(int[] a, int howMuch) {
  int[] temp = new int[a.length + howMuch];
  for(int i = 0; i < a.length; i++)
    temp[i] = a[i];
  return temp;
}
