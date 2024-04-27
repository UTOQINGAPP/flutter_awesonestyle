import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//todo: codigo actualizado
class AwsTexlinkButton extends StatelessWidget {
  final String text;
  final String link;
  final TextStyle? styleText;
  final TextStyle? styleLink;
  final BoxFit? fit;
  final double separed;
  final void Function()? onPressed;
  const AwsTexlinkButton({
    Key? key,
    this.separed = 2,
    required this.text,
    required this.link,
    this.styleText,
    this.styleLink,
    this.onPressed,
    this.fit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: CupertinoButton(
        onPressed: onPressed,
        child: FittedBox(
          fit: fit ?? BoxFit.contain,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: styleText ??
                    const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
              ),
              SizedBox(width: separed),
              Text(
                link,
                style: styleLink ??
                    const TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
