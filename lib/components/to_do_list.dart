import 'package:flutter/material.dart';

import 'package:flutter_todoa/components/item_row.dart';
import 'package:flutter_todoa/data/items_data.dart';

class ToDoList extends StatefulWidget {
  const ToDoList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ToDoListState();
  }
}

class _ToDoListState extends State<ToDoList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: AppItems().items.length,
      itemBuilder: (context, index) {
        return ItemRow(
          index: index,
        );
      },
    );
  }
}
