import 'package:flutter/material.dart';

class DropdownWidget extends StatelessWidget {
  const DropdownWidget({
    super.key, this.hintText,
  });
  final String ?hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: DropdownMenu(
         hintText: hintText,
          inputDecorationTheme: const InputDecorationTheme(
            constraints: BoxConstraints(maxHeight: 40),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2,
              )
            ),
          ),

        width: MediaQuery.of(context).size.width*0.83,
          dropdownMenuEntries: const [
            DropdownMenuEntry(value: '1', label: '1'),
            DropdownMenuEntry(value: '2', label: '2'),
            DropdownMenuEntry(value: '3', label: '3'),
          ]),
    );
  }
}