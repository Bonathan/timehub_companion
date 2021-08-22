import 'package:flutter/material.dart';
import 'package:timehub_companion/objects/styles.dart' as styles;

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
  const StandardTextField(
      {Key? key,
      required this.controller,
      this.hint = 'Enter something',
      this.inputType = TextInputType.text,
      this.hidden = false})
      : super(key: key);

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

class MenuCard extends StatelessWidget {
  const MenuCard(
      {Key? key, required this.icon, required this.text, required this.teaser})
      : super(key: key);

  final icon;
  final text;
  final teaser;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: styles.green),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            height: 80,
            width: 80,
            child: Icon(this.icon, size: 50),
          ),
          Container(
            margin: EdgeInsets.only(top: 25, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.text,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Text(this.teaser)
              ],
            ),
          )
        ],
      ),
    );
  }
}
