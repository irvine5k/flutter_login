import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String label;
  final Color color;
  final Color labelColor;
  final Color borderColor;
  final double height;
  final double width;
  final Widget icon;
  final Function onTap;

  CircularButton({
    Key key,
    this.label = "",
    this.color,
    this.labelColor,
    this.borderColor,
    this.height = 55,
    this.width,
    this.icon,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40.0),
      child: Material(
        color: color == null ? Theme.of(context).accentColor : color,
        child: InkWell(
          onTap: onTap,
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              border:
                  borderColor == null ? null : Border.all(color: borderColor),
            ),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                icon == null ? Container() : icon,
                icon == null ? Container() : SizedBox(width: 10),
                Text(
                  label,
                  style: TextStyle(
                    color: labelColor == null ? Colors.white : labelColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
