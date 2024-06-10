import 'package:flutter/material.dart';
import 'package:lotofacil_numbers/common/custom_colors.dart';

class CircleInput extends StatelessWidget {
  const CircleInput({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: CustomColors().gray,
      child: Padding(
        padding: const EdgeInsets.only(left: 4),
        child: TextFormField(
          keyboardType: TextInputType.number,
          maxLength: 2,
          textAlign: TextAlign.center,
          maxLines: 1,
          style: const TextStyle(
            fontSize: 20,
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
            counter: Text(
              '',
              style: TextStyle(fontSize: 0),
            ),
          ),
        ),
      ),
    );
  }
}
