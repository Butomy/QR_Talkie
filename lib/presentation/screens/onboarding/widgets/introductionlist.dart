import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/utils/colors.dart';

class IntroductionList extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final double? imageWidth;
  final double? imageHeight;

  const IntroductionList(
      {required this.imageUrl,
      required this.title,
      required this.subTitle,
      this.imageWidth,
      this.imageHeight});

  @override
  State<StatefulWidget> createState() {
    return IntroductionListState();
  }
}

class IntroductionListState extends State<IntroductionList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        fit: StackFit.loose,
        clipBehavior: Clip.none,
        children: [
          SizedBox(
            height: ScreenUtil().screenHeight / 1.8,
            width: ScreenUtil().screenWidth,
            child: Image.asset(
              widget.imageUrl,
              fit: BoxFit.fitWidth,
            ),
          ),
          // SizedBox(
          //   height: 10.0,
          // ),
          Positioned(
            // top: 0,
            // right: 0,
            // bottom: 0,
            // left: 0,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: ScreenUtil().screenWidth,
                    //  height: ScreenUtil().screenHeight/5,
                    // margin: EdgeInsets.only(top: ScreenUtil().screenHeight/5),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(2.00, -1.0),
                        end: Alignment(0, 1),
                        colors: [
                          Colors.black.withOpacity(0),
                          Color(0xFF1E1E1E)
                        ],
                      ),
                    ),

                    child: Padding(
                      padding:
                          EdgeInsets.only(top: ScreenUtil().screenHeight / 3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.title,
                            style: TextStyle(
                              color: white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            widget.subTitle,
                            style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                color: white),
                            textAlign: TextAlign.center,
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
