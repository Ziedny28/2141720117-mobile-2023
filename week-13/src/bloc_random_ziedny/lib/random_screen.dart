import 'package:flutter/material.dart';

import 'random_bloc.dart';

class StreamHomeaPage extends StatefulWidget {
  const StreamHomeaPage({super.key});

  @override
  State<StreamHomeaPage> createState() => _StreamHomeaPageState();
}

class _StreamHomeaPageState extends State<StreamHomeaPage> {
  final RandomNumberBloc _bloc = RandomNumberBloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Random Number')),
      body: Center(
        child: StreamBuilder<int>(
            stream: _bloc.randomNumber,
            initialData: 0,
            builder: (context, snapshot) {
              return Text(
                'Random Number: ${snapshot.data}',
                style: const TextStyle(fontSize: 24),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _bloc.generateRandom.add(null),
        child: const Icon(Icons.refresh),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _bloc.dispose();
    super.dispose();
  }
}
