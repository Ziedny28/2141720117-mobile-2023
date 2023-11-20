import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:stream_ziedny/stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Ziedny',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  late StreamSubscription subscription2;
  String values = '';

  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  int lastNumber = 0;
  late StreamController numberStreamController;
  late NumberStream numberStream;

  late StreamTransformer transformer;

  late StreamSubscription subscription;

  @override
  void initState() {
    super.initState();
    // colorStream = ColorStream();
    // changeColor();
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;
    Stream stream = numberStreamController.stream.asBroadcastStream();

    subscription = stream.listen((event) {
      setState(() {
        values += '$event - ';
      });
    });

    subscription2 = stream.listen((event) {
      setState(() {
        values += '$event - ';
      });
    });

    subscription.onError((error) {
      setState(() {
        lastNumber = -1;
      });
    });

    subscription.onDone(() {
      print('OnDone was called');
    });

    // transformer = StreamTransformer<int, int>.fromHandlers(
    //     handleData: (value, sink) {
    //       sink.add(value * 10);
    //     },
    //     handleError: (error, trace, sink) {
    //       sink.add(-1);
    //     },
    //     handleDone: (sink) => sink.close());

    // stream.transform(transformer).listen((event) {
    //   setState(() {
    //     lastNumber = event;
    //   });
    // }).onError((error) {
    //   setState(() {
    //     lastNumber = -1;
    //   });
    // });
  }

  void stopStream() {
    numberStreamController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Strem Ziedny'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(values),
                Text(lastNumber.toString()),
                ElevatedButton(
                  onPressed: () => addRandomNumber(),
                  child: const Text("New Random Number"),
                ),
                ElevatedButton(
                  onPressed: () => stopStream(),
                  child: const Text("Stop Subscribtion"),
                )
              ]),
        ));
  }

  void changeColor() async {
    colorStream.getColors().listen((eventColor) {
      setState(() {
        bgColor = eventColor;
      });
    });
  }

  @override
  void dispose() {
    numberStreamController.close();
    subscription.cancel();
    super.dispose();
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    if (!numberStreamController.isClosed) {
      numberStream.addNumberToSink(myNum);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
  }
}
