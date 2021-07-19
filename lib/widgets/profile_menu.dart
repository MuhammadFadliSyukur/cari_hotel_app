import 'package:carihotel_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileMenu extends StatelessWidget {
  final String icon;
  final String text;

  const ProfileMenu({
    Key key,
    this.icon,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          width: 35,
        ),
        SizedBox(width: 10),
        Text(text, style: header2)
      ],
    );
  }
}
