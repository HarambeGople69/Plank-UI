import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/utils/styles.dart';

class OurCustomButton extends StatelessWidget {
  final Function() onTap;
  final Widget widget;
  const OurCustomButton({
    Key? key,
    required this.onTap,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil().setSp(50),
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  ScreenUtil().setSp(20),
                ),
              ),
            ),
            backgroundColor: MaterialStateProperty.all(
              Color(0xfff7e652),
            ),
          ),
          onPressed: () {
            onTap();
          },
          child: widget),
    );
  }
}
