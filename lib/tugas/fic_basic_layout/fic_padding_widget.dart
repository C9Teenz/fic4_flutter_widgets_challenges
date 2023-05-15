import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_row_widget.dart';

class FICPaddingWidget extends StatelessWidget {
  const FICPaddingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JagoFlutter - Padding'),
        actions: const [],
      ),
      body: Column(
        children: [
          Container(
            height: 500,
            width: 300,
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(border: Border.all()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 30,
                    bottom: 40,
                  ),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FICRowWidget(),
                    ));
              },
              child: const Text('Row Widget'))
        ],
      ),
    );
  }
}
