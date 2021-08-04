import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData icon;
  const CustomIcon({Key? key,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Color(0xfff7e652),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
