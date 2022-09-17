import 'package:flutter/material.dart';

class StatefullWidget extends StatefulWidget {
  const StatefullWidget({super.key});

  @override
  State<StatefullWidget> createState() => _StatefullWidgetState();
}

class _StatefullWidgetState extends State<StatefullWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscribe'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(DateTime.now().toString()),
            Container(
              child: Center(
                child: Text(
                  count.toString(),
                  style: TextStyle(fontSize: 50),
                ),
              ),
            )
          ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          count++;
          print(count++);
          setState(() {});
        },
      ),
    );
  }
}

// Stateful widgets have set state(){} function which refreshes the screen
// whereas stateless widgets doesn't have that so this is why we use stateless
// widget when we don't want any interaction of the user with the ui.


// Stateful Widgets consumes a lot of ram when refreshing the whole screen
// from the scaffold which can make the app hang, so that's the reason we 
// use state management.