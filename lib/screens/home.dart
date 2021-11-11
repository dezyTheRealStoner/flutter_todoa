import 'package:flutter/material.dart';

import 'package:flutter_todoa/components/to_do_list.dart';
import 'package:flutter_todoa/components/add_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDoA'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image(
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              image: const AssetImage('assets/images/header.jpg'),
            ),
          ),
          const Expanded(
            flex: 10,
            child: ToDoList(),
          ),
          addButton,
        ],
      ),
    );
  }
}
