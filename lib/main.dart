import 'package:flutter/material.dart';
import 'package:scrollview/custom_scroll_view_page.dart';
import 'package:scrollview/nested_scroll_view.dart';
import 'package:scrollview/nested_scroll_view2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyWidget());
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CustomScrollViewPage()),
                );
              },
              child: const Text('CustomScrollView'),
            ),
            const Divider(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NestedScrollViewPage()),
                );
              },
              child: const Text('use NestedScrollView'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NestedScrollViewPage2()),
                );
              },
              child: const Text('unused NestedScrollView'),
            ),
          ],
        ),
      ),
    );
  }
}
