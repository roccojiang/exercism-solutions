#include "armstrong_numbers.h"

int intPow(int n, int exp) {
  int res = 1;
  for (int i = 0; i < exp; i++) {
    res *= n;
  }
  return res;
}

int countDigits(int n) {
  int count = 0;
  while (n != 0) {
    n /= 10;
    count++;
  }
  return count;
}

bool is_armstrong_number(int candidate) {
  int numDigits = countDigits(candidate);
  int n = candidate;
  int sum = 0;

  while (n != 0) {
    sum += intPow(n % 10, numDigits);
    n /= 10;
  }

  return candidate == sum;
}
