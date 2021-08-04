import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:myapp/utils/styles.dart';
import 'package:myapp/widgets/our_custom_button.dart';
import 'package:myapp/widgets/our_custom_icon.dart';
import 'package:myapp/widgets/our_sizedbox.dart';

class DetailPage extends StatefulWidget {
  final String imageUrl;
  const DetailPage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
        actions: [
          CustomIcon(
            icon: Icons.shop,
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xff79b582),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(ScreenUtil().setSp(50)),
                      topRight: Radius.circular(
                        ScreenUtil().setSp(50),
                      ),
                    )),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: ScreenUtil().setSp(20),
                    vertical: ScreenUtil().setSp(10),
                  ),
                  // padding: EdgeInsets.symmetric(
                  //   vertical: ScreenUtil().setSp(20),
                  // ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OurSizedBox(),
                      OurSizedBox(),
                      Text(
                        "Artificial Aloe\nVera Plant",
                        style: boldStyle,
                      ),
                      OurSizedBox(),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an ",
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(17),
                          color: Colors.black54,
                        ),
                      ),
                      OurSizedBox(),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Price",
                                  style: smallWhite,
                                ),
                                Text("\$120.00", style: smallWhite)
                              ],
                            ),
                          ),
                          Expanded(
                            child: OurCustomButton(
                                onTap: () {},
                                widget: Text(
                                  "Add to cart",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: ScreenUtil().setSp(20),
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: ScreenUtil().setSp(350),
              right: ScreenUtil().setSp(50),
              // left: -ScreenUtil().setSp(120),
              child: Image.asset(
                widget.imageUrl,
                height: ScreenUtil().setSp(300),
                width: ScreenUtil().setSp(300),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: ScreenUtil().setSp(30),
              bottom: ScreenUtil().setSp(360),
              child: CustomIcon(
                icon: Icons.share,
              ),
            ),
            Positioned(
                right: ScreenUtil().setSp(30),
                bottom: ScreenUtil().setSp(230),
                child: Column(
                  children: [
                    SizedBox(
                      width: ScreenUtil().setSp(40),
                      height: ScreenUtil().setSp(40),
                      // color: Color(0xff7ea383),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xff7ea383),
                          ),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.zero,
                          ),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.add,
                          size: ScreenUtil().setSp(
                            30,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: ScreenUtil().setSp(20)),
                      ),
                    ),
                    SizedBox(
                      width: ScreenUtil().setSp(40),
                      height: ScreenUtil().setSp(40),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xff7ea383),
                          ),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.zero,
                          ),
                        ),
                        onPressed: () {},
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
