#include <iostream>

int main() {
  int t = 10;
  for (int i = 0; i < t; i++) {
    for (int j = 0; j < t; j++) {
      if (i == j || j + i == t - 1) {
        std::cout << "*";
      } else {
        std::cout << " ";
      }
    }
    std::cout << "\n";
  }

  return 0;
}
