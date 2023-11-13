import 'package:flutter/material.dart';

class NavigationDialogueScreen extends StatefulWidget {
  const NavigationDialogueScreen({super.key});

  @override
  State<NavigationDialogueScreen> createState() =>
      _NavigationDialogueScreenState();
}

class _NavigationDialogueScreenState extends State<NavigationDialogueScreen> {
  Color color = Colors.blue.shade700;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: const Text('Navigation Dialogue Screen Ziedny')),
      body: Center(
          child: ElevatedButton(
        child: const Text('Change Color'),
        onPressed: () {
          _showColorDialogue(context);
        },
      )),
    );
  }

  _showColorDialogue(BuildContext context) async {
    await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text('Very important question'),
          content: const Text('Please choose a color'),
          actions: <Widget>[
            TextButton(
                child: const Text('Red'),
                onPressed: () {
                  color = Colors.red.shade700;
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Green'),
                onPressed: () {
                  color = Colors.green.shade700;
                  Navigator.pop(context, color);
                }),
            TextButton(
                child: const Text('Blue'),
                onPressed: () {
                  color = Colors.blue.shade700;
                  Navigator.pop(context, color);
                }),
          ],
        );
      },
    );
    setState(() {});
  }
}
