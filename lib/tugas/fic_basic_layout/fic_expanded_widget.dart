import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_gridview_widget.dart';

class FICExpandedWidget extends StatelessWidget {
  const FICExpandedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JagoFlutter - Expanded'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.arrow_back_ios),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'List Checklist',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const FICGridViewWidget(),
                              ));
                        },
                        child: const Text('Grid view')),
                    const Icon(
                      Icons.check,
                      color: Colors.blue,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
