import 'package:flutter/cupertino.dart';

class CountProvider with ChangeNotifier {
  int _count = 50;
  int get count => _count;

  void setCount() {
    _count++;
    notifyListeners();
  }
}

/* In this we'll create a class with change notfier (Acts as a set state and
have the global context of the app, the class count provider must be build at
the top/initilize at the top of the app)
return changenotifier and create and in the child material app
We've mentioned the class with changenotfier in the main.dart, single provider 
hai, got the global context.
In the last commit we initilized count above but in this we'll initilize it
in the provider by set_count = 0; and create a get method.
Then we go the example and provide the class we created with final.
Notify Listener will notify when we call the setcount and increment the vslue
of count++, intitially it is 50, it'll increment and we get it thro getter.
then on pressed method count provider.
What we did was the registered the count provider on main and thus a class is
created by  create and material app runs. Then after running we took the
context of the provider of class and get kia. but on printing build, its same 
like before.

Now comes the consumer widget, consumer needs a builder for what it should
build which needs context,value,child which will return a child the text*
On doing the property of listen false, omly the text widget rebuilds.

Listen is set to false to inform that the whole should not build and we can
consume according to our need.
*/
