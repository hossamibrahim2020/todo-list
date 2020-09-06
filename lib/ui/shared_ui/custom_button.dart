import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function onTap;

  const CustomButton({Key key, this.label, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          width: double.infinity,
          child: Center(
            child: Text(
              label,
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
      ),
    );
  }
}
