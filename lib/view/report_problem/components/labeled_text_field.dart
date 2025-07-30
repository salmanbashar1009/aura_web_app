
import 'package:flutter/material.dart';

class LabeledTextField extends StatelessWidget {
  final String label;
  final int? maxLine;
  const LabeledTextField({super.key, required this.label,this.maxLine});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: 100,
              alignment: Alignment.centerRight,
              child: Text('$label: ', style: TextStyle(fontSize: 16))),
          const SizedBox(width: 16),
          SizedBox(
            width: 560,
            child: TextField(
              maxLines: maxLine,
              decoration: InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
