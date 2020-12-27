#include <iostream>
#include <string>
#include <cmath>

int rnd(int num) {
  return round(num);
}

namespace Math {
  double PI = 3.14159;
  double e = 2.71828;

  int round(double num) {
    return rnd(num);
  }
}