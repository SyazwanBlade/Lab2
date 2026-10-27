import 'package:flutter/material.dart';

// Every Flutter app starts here: runApp() puts MyApp on the screen
void main() {
  runApp(const MyApp());
}

// MyApp = the whole app. StatelessWidget = it never changes by itself.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

// MyHomePage = the screen. StatefulWidget = it can change (the counter).
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// The State holds the data that changes (_counter)
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // called when the + button is pressed.
  // setState tells Flutter "data changed, redraw the screen".
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // build() describes what the screen looks like
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // top bar - the title is changed to my name (Task 2.2)
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Syazwan Salleh'),
      ),
      // middle of the screen: text + counter, stacked vertically
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // the round + button at the bottom right
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: const Icon(Icons.add),
      ),
    );
  }
}
