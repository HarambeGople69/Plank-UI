import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/pages/our_shop.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/our_custom_button.dart';
import 'package:myapp/widgets/our_sizedbox.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff79b582),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: ScreenUtil().setSp(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 30),
                child: Image.asset(
                  "assets/flower2.png",
                  height: ScreenUtil().setSp(
                    400,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              OurSizedBox(),
              Text(
                "Find out your\ncompaning\non our Plant shop.",
                style: boldStyle,
              ),
              OurSizedBox(),
              OurCustomButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return OurShop();
                  }));
                },
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Get Started",
                      style: blackStyle,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: ScreenUtil().setSp(
                        30,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
