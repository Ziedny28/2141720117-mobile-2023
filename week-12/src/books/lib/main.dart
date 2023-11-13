import 'dart:async';

import 'package:async/async.dart';
import 'package:books/view/navigation_dialogue.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Future Demo Ziedny',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const NavigationDialogueScreen());
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  late Completer completer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the feature Ziedny'),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                handleError();
              },
              child: const Text('Go!'),
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer()
          ],
        ),
      ),
    );
  }

  Future handleError() async {
    try {
      await returnError();
    } catch (error) {
      updateResult(error.toString());
    } finally {
      print("complete");
    }
  }

  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happend');
  }

  void returnFG() {
    FutureGroup<int> futureGroup = FutureGroup<int>();

    // final futures = Future.wait<int>([
    //   returnOneAsync(),
    //   returnTwoAsync(),
    //   returnThreeAsync(),
    // ]);

    futureGroup.add(returnOneAsync());
    futureGroup.add(returnTwoAsync());
    futureGroup.add(returnThreeAsync());

    futureGroup.close();

    futureGroup.future.then((List<int> value) {
      int total = 0;
      for (var element in value) {
        total += element;
        updateResult(total.toString());
      }
    });
  }

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  Future calculate() async {
    try {
      await Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
    } catch (_) {
      completer.completeError({});
    }
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    updateResult(total.toString());
    total += await returnOneAsync();
    updateResult(total.toString());
    total += await returnTwoAsync();
    updateResult(total.toString());
    total += await returnThreeAsync();
    updateResult(total.toString());
  }

  void updateResult(String value) {
    setState(() {
      result = value;
    });
  }

  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/94Y8PgAACAAJ';
    Uri uri = Uri.https(authority, path);
    return http.get(uri);
  }
}
