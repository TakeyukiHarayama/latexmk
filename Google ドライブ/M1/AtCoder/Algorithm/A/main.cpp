#include <iostream>
#include <string>
#include <cctype>

using namespace std;

int main(void) {
  string S;
  cin >> S;

  for(size_t i = 0; i < S.size(); i++){
    if (!isdigit(S[i])) {
      cout << "error" << endl;
      return 0;
    }
  }
  cout << atoi(S.c_str()) * 2 << endl;

  return 0;
}
