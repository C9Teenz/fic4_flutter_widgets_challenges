import 'package:flutter/material.dart';

import 'fic_navigation_pop.dart';

class FICNavigationPush extends StatefulWidget {
  const FICNavigationPush({Key? key}) : super(key: key);

  @override
  State<FICNavigationPush> createState() => _NavigationPushState();
}

class _NavigationPushState extends State<FICNavigationPush> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FIC - navigation push"),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const FICNavigationPop();
                }));
              },
              child: const Text('go to next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
