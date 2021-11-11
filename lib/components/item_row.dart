import 'package:flutter/material.dart';

import 'package:flutter_todoa/data/items_data.dart';

class ItemRow extends StatefulWidget {
  final int index;

  ItemRow({Key? key, required this.index}) : super(key: key);

  @override
  State<ItemRow> createState() => _ItemRowState();
}

class _ItemRowState extends State<ItemRow> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.pushNamed(
            context,
            'details',
            arguments: ItemRow(index: widget.index),
          );
        });
      },
      child: Row(
        children: [
          Checkbox(
            value: true,
            onChanged: (bool? value) {},
          ),
          AppItems().image,
          Expanded(
            child: Text(
              '${AppItems().items[widget.index]} ${widget.index}',
              style: const TextStyle(fontSize: 24),
            ),
          )
        ],
      ),
    );
  }
}
