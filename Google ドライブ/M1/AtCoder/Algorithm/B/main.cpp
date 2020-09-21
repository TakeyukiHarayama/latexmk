#include <iostream>
#include <vector>

using namespace std;

int main(void) {
  int N;
  long int A1, A2;
  cin >> N;
  vector<int> updown(N - 1);
  vector<long int> change(N - 1);

  cin >> A1;
  for (int i = 1; i < N; i++) {
    cin >> A2;
    if(A1 > A2){
      updown[i - 1] = 1;
      change[i - 1] = A1 - A2;
    } else if (A1 < A2) {
      updown[i - 1] = 2;
      change[i - 1] = A2 - A1;
    } else {
      updown[i - 1] = 3;
      change[i - 1] = 0;
    }
    A1 = A2;
  }

  for (size_t i = 0; i < updown.size(); i++) {
    if(updown[i] == 1){
      printf("down %ld\n", change[i]);
    } else if(updown[i] == 2) {
      printf("up %ld\n", change[i]);
    } else {
      printf("stay\n");
    }
  }
  return 0;
}
