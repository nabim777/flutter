import 'dart:io';
void main()
{
    try
    {
      
      print("Enter the first number:");
      int? n1 = int.parse(stdin.readLineSync()!);

      print("Enter the second number:");
      int? n2 = int.parse(stdin.readLineSync()!);

      print("Enter '-' or '+'?");
      String? op = stdin.readLineSync();

      switch(op)
      {
        case "+": 
                  int ad=add(n1,n2);
                  print("add:$ad");break;
        case "+": 
                  int su=sub(n1,n2);
                  print("sub:$su");break;

        default: print("Invalid operators");

      }
    }
    catch(ex)
    {
      print("Please type only String");
    }
    
}
int add(int a,int b)
    {
      return a+b;
    }

int sub(int a,int b)
    {
      return a-b;
    }