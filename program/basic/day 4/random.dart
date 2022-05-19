import 'dart:io';
void main()
{
  try
  {
    String random = randomPassGenerator();
    print(random);
  }
  catch(ex)
  {
    print("please type integers only");
  }
}

String randomPassGenerator()
{
  var a =['a','b','c','d','A','B','C','D','E'];
  var c =['_','@','#','!','+','\$'];
  var num =[1,3,2,4,5,6,7,8,9,0];
  var all=[...a,...num,...c];
  String randompass="";
  all.shuffle();

  print("Enter the length of Password:");
  int? n=int.parse(stdin.readLineSync()!);
    
  for(int i=0; i<n;i++)
  {
    if(n > all.length)
    {
      print("Invalid length");
      break;
    }
    randompass += all[i].toString();
  }
  return randompass;
}