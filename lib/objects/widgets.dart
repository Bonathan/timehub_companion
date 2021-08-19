import 'package:flutter/material.dart';

class Banner extends StatelessWidget {
  const Banner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(),
    );
  }
}

class StandardTextField extends StatelessWidget {
  const StandardTextField({
    Key? key,
    required this.controller,
    this.hint = 'Enter something',
    this.inputType = TextInputType.text,
    this.hidden = false
  }) : super(key: key);

  final TextEditingController controller;
  final hint;
  final inputType;
  final hidden;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: this.controller,
      decoration: InputDecoration(hintText: this.hint),
      keyboardType: this.inputType,
      obscureText: this.hidden,
    );
  }
}
