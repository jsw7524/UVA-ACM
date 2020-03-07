#include <iostream>
#include <cstring>
using namespace std;

int main()
{
   do
   {
      char input[999];
      int size = 0;
      cin.get(input,999);
      while(input[size] != '\0')size++;

      for(int i=0;i<size;i++)
      {
         input[i] += -7;
         cout << input[i];
      }
      cout << endl;
   }while(cin.get() );
   return 0;
}
