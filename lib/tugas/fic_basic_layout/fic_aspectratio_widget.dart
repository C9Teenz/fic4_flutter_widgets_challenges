import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_center_widget.dart';

class FICAspectRasioWidget extends StatelessWidget {
  const FICAspectRasioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JagoFlutter - Aspect Ratio'),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Container(
                color: Colors.blue,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FICCenterWidget(),
                    ));
              },
              child: const Text('Center Widget'),
            ),
          ],
        ),
      ),
    );
  }
}
