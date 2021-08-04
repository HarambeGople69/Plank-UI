import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustonStack extends StatelessWidget {
  final String title;
  final Function() function;
  final String imageUrl;
  const CustonStack({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        function();
      },
      child: Container(
        height: ScreenUtil().setSp(200),

        width: MediaQuery.of(context).size.width * 0.4,
        // color: Color(0xffeaefeb),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffeaefeb),
                  borderRadius: BorderRadius.circular(
                    ScreenUtil().setSp(35),
                  ),
                ),
                height: ScreenUtil().setSp(150),
                width: MediaQuery.of(context).size.width * 0.4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black54,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: ScreenUtil().setSp(80),
              right: ScreenUtil().setSp(-20),
              child: Image.asset(
                imageUrl,
                height: ScreenUtil().setSp(200),
                width: ScreenUtil().setSp(200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
