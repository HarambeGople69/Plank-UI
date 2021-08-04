import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/pages/detail_page.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/custon_stack_container.dart';
import 'package:myapp/widgets/our_sizedbox.dart';
import 'package:myapp/widgets/our_text_field.dart';

class OurShop extends StatefulWidget {
  const OurShop({Key? key}) : super(key: key);

  @override
  _OurShopState createState() => _OurShopState();
}

class _OurShopState extends State<OurShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
          size: ScreenUtil().setSp(25),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          "Our Shop",
          style: TextStyle(
            color: Colors.black,
            fontSize: ScreenUtil().setSp(
              30,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          CircleAvatar(
            radius: ScreenUtil().setSp(
              45,
            ),
            backgroundImage: AssetImage(
              "assets/face.jpg",
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: ScreenUtil().setSp(20),
            vertical: ScreenUtil().setSp(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OurTextField(
                title: "Search",
                icon: Icons.search,
              ),
              OurSizedBox(),
              Container(
                child: Container(
                  height: ScreenUtil().setSp(300),
                  width: ScreenUtil().setSp(500),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        right: 0,
                        child: Container(
                          alignment: Alignment.topCenter,
                          decoration: BoxDecoration(
                              color: Color(0xff79b582),
                              borderRadius: BorderRadius.circular(
                                ScreenUtil().setSp(35),
                              )),
                          height: ScreenUtil().setSp(300),
                          width: ScreenUtil().setSp(300),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Artificial\nAloe Vera\nPlant",
                                style: boldStyle,
                              ),
                              OurSizedBox(),
                              Text("\$ 12000", style: boldStyle),
                              OurSizedBox(),
                              Text(
                                "🌟 4.9(541)",
                                style: TextStyle(
                                  fontSize: ScreenUtil().setSp(20),
                                  color: Color(0xff759b7b),
                                ),
                              ),
                              OurSizedBox(),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -ScreenUtil().setSp(10),
                        left: -ScreenUtil().setSp(120),
                        child: Image.asset(
                          "assets/flower1.png",
                          height: ScreenUtil().setSp(350),
                          width: ScreenUtil().setSp(350),
                        ),
                      ),
                      Positioned(
                        bottom: ScreenUtil().setSp(20),
                        right: ScreenUtil().setSp(20),
                        child: SizedBox(
                          width: ScreenUtil().setSp(30),
                          height: ScreenUtil().setSp(30),
                          child: Center(
                            child: ElevatedButton(
                              style: ButtonStyle(
                                padding:
                                    MaterialStateProperty.all(EdgeInsets.zero),
                                backgroundColor: MaterialStateProperty.all(
                                  Colors.white,
                                ),
                              ),
                              onPressed: () {},
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: ScreenUtil().setSp(25),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              OurSizedBox(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustonStack(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailPage(imageUrl: "assets/flower3.png");
                      }));
                    },
                    title: "Artificial\nSuccuient Plant",
                    imageUrl: "assets/flower3.png",
                  ),
                  CustonStack(
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailPage(imageUrl: "assets/flower4.png");
                      }));
                    },
                    title: "Decorative\nIndoor Plants",
                    imageUrl: "assets/flower4.png",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
