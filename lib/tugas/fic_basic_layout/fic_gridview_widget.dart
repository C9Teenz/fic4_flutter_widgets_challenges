import 'package:flutter/material.dart';
import 'package:project_flutter_pertama/tugas/fic_basic_layout/fic_listview_widget.dart';

class FICGridViewWidget extends StatelessWidget {
  const FICGridViewWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - GriView"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 185 / 243,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  ...List.generate(
                    6,
                    (index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FICListViewWidget(),
                            ));
                      },
                      child: Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              offset: Offset.zero,
                              blurRadius: 15.0,
                            )
                          ],
                        ),
                        child: const Center(
                          child: Text('Listview Widget'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
