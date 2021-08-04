import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OurTextField extends StatelessWidget {
  final String title;
  final IconData icon;
  const OurTextField({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(
          ScreenUtil().setSp(20),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            // fillColor: Colors.grey.withOpacity(0.1),
            // filled: true,
            contentPadding: EdgeInsets.symmetric(
              vertical: ScreenUtil().setSp(10),
              horizontal: ScreenUtil().setSp(10),
            ),
            suffixIcon: Icon(
              icon,
              size: ScreenUtil().setSp(
                25,
              ),
            ),
            labelText: title,
            labelStyle: TextStyle(
              fontSize: ScreenUtil().setSp(20),
            )),
      ),
    );
  }
}
