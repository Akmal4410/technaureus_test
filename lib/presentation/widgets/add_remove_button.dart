import 'package:flutter/material.dart';
import 'package:technaureus/utils/text_style.dart';

class AddRemoveButton extends StatelessWidget {
  const AddRemoveButton({
    super.key,
    required this.onAdd,
    required this.onRemove,
    this.value,
  });

  final int? value;
  final VoidCallback onAdd;
  final VoidCallback onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      decoration: BoxDecoration(
        color: Colors.blue.shade900,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: onRemove,
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 15,
            ),
          ),
          Text(
            value.toString(),
            style: kTextStyle12Medium.copyWith(color: Colors.white),
          ),
          GestureDetector(
            onTap: onAdd,
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 15,
            ),
          ),
        ],
      ),
    );
  }
}
