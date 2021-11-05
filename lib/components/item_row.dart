import 'package:flutter/material.dart';

class AppItems {
  List items = ['Math', 'Physic', 'Flutter', 'Map', 'Gap', 'Slap', 'Dab'];
}

class ItemRow extends StatefulWidget {
  final int index;

  const ItemRow({Key? key, required this.index}) : super(key: key);

  @override
  State<ItemRow> createState() => _ItemRowState();
}

class _ItemRowState extends State<ItemRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (bool? value) {},
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(50.0)),
            border: Border.all(
              color: Colors.white,
              width: 4.0,
            ),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 4.0), //(x,y)
                blurRadius: 6.0,
              ),
            ],
          ),
        ),
        Expanded(
          child: Text(
            '${AppItems().items[widget.index]} ${widget.index}',
            style: const TextStyle(fontSize: 24),
          ),
        )
      ],
    );
  }
}
