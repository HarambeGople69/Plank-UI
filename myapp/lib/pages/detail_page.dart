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
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color(0xff57855e),
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
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.grey,
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
              bottom: ScreenUtil().setSp(250),
              right: -ScreenUtil().setSp(20),
              // left: -ScreenUtil().setSp(120),
              child: Image.asset(
                widget.imageUrl,
                height: ScreenUtil().setSp(400),
                width: ScreenUtil().setSp(400),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              right: ScreenUtil().setSp(30),
              bottom: ScreenUtil().setSp(300),
              child: CustomIcon(
                icon: Icons.share,
              ),
            ),
            Positioned(
                right: ScreenUtil().setSp(30),
                bottom: ScreenUtil().setSp(180),
                child: Column(
                  children: [
                    Container(
                      color: Color(0xff7ea383),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil().setSp(20)),
                    ),
                    Container(
                      color: Color(0xff7ea383),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
