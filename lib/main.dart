import 'package:flutter/material.dart';
import 'package:mysecondapp/sidebar.dart';

void main() {
  runApp(const FadeAppTest());
}

class FadeAppTest extends StatelessWidget {
  const FadeAppTest({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: Scaffold(
        drawer: const Sidebar(),
        appBar: AppBar(
          title: const Text(
            "My App",
            style: TextStyle(color: Colors.red, fontSize: 30),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 11,
            children: [
              Container(
                  color: Colors.red,
                  child: Image.asset(
                    'assets/images/download.jpeg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )),
              Container(
                  color: Colors.yellow,
                  child: Image.asset(
                    'assets/images/dart3.jpeg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )),
              Container(
                  color: Colors.green,
                  child: Image.asset('assets/images/dart2.png')),
              Image.asset('assets/images/download.jpeg'),
              Container(
                  color: Colors.blue,
                  child: Image.asset(
                    'assets/images/dart.webp',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )),
              Container(
                  color: Colors.redAccent,
                  child: Image.asset(
                    'assets/images/dart1.webp',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  )),
              Image.asset(
                'assets/images/download.jpeg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/dart.webp',
                height: 100,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/dart3.jpeg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Hello Sir");
          },
          child: const Text("Click"),
        ),
      ),
    );
  }
}
