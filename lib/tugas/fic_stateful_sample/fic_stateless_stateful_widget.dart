import 'package:flutter/material.dart';

class FICStatelessStatefulWidget extends StatefulWidget {
  const FICStatelessStatefulWidget({Key? key}) : super(key: key);

  @override
  State<FICStatelessStatefulWidget> createState() =>
      _StatelessStatefulWidgetState();
}

class _StatelessStatefulWidgetState extends State<FICStatelessStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - stateless stateful"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [
              ShowText(text: 'Show Text Stateless'),
              FICChangeTextWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class FICChangeTextWidget extends StatefulWidget {
  const FICChangeTextWidget({super.key});

  @override
  State<FICChangeTextWidget> createState() => _ChangeTextWidgetState();
}

class _ChangeTextWidgetState extends State<FICChangeTextWidget> {
  String text = 'FIC';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('$text - Stateful'),
        ElevatedButton(
          onPressed: () {
            String newText = DateTime.now().toIso8601String();
            setState(() {
              text = newText;
            });
          },
          child: const Text('Change Text'),
        )
      ],
    );
  }
}

class ShowText extends StatelessWidget {
  final String text;
  const ShowText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
