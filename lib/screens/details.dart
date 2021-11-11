import 'package:flutter/material.dart';

import 'package:flutter_todoa/components/item_row.dart';
import 'package:flutter_todoa/data/items_data.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ItemRow;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            AppItems().image,
            const Spacer(),
            Text(
              '${AppItems().items[args.index]}',
              style: const TextStyle(fontSize: 20, color: Colors.black),
            ),
            const Spacer(),
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
            const Spacer(
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}
