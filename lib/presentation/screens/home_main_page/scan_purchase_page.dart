import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/home_main_page/scan_purchase_updated_page.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/presentation/widgets/custom_textfield.dart';
import 'package:qr_talkie/utils/colors.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ScanPurchaseScreen extends StatefulWidget {
  const ScanPurchaseScreen({super.key});

  @override
  State<ScanPurchaseScreen> createState() => _ScanPurchaseScreenState();
}

class _ScanPurchaseScreenState extends State<ScanPurchaseScreen> {
  List imges = [
    "assets/images/Group 322.png",
    "assets/images/Group 322.png",
    "assets/images/Group 322.png"
  ];
  String? dropvalue;
  var items = ["Vehicle", "Pet", "Office", "Home"];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadValue();
  }

  _loadValue() {
    var isContain = items.firstWhere(
        orElse: () => "false", (element) => element == 'Monthly');
    if (isContain != "false") {
      dropvalue = isContain;
    }
    debugPrint(isContain);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: primaryColor,
        //  toolbarHeight: 80.h,
        backgroundColor: primaryColor,
        leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                width: 42.w,
                height: 42.h,
                decoration: BoxDecoration(
                    color: white,
                    shape: BoxShape.circle,
                    border: Border.all(width: 0.8, color: greybeb)),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: blueca,
                ),
              ),
            )),
        centerTitle: true,
        title: Text(
          'Your QR Code',
          style: CustomFontStyle().common(
            color: white,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
          color: primaryColor,
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  Center(
                    child: Container(
                      // width: ScreenUtil().screenWidth / 1.8,
                      // height: ScreenUtil().screenHeight / 4,
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      decoration: ShapeDecoration(
                        color: white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26.17),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x30000000),
                            blurRadius: 4,
                            offset: Offset(3, 4),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Active',
                            textAlign: TextAlign.center,
                            style: CustomFontStyle().common(
                              color: black,
                              fontSize: 20.23.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Image.asset(
                            "assets/images/Group 322.png",
                            height: 220.h,
                            width: 250.w,
                          ),
                          Text(
                            'Card Type - Metallic',
                            textAlign: TextAlign.center,
                            style: CustomFontStyle().common(
                              color: black2c,
                              fontSize: 13.27.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Purchased On 26/07/22',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFFA8A7A7),
                              fontSize: 13.27.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      child: Center(
                          child: CircleAvatar(
                              backgroundColor: white,
                              radius: 15,
                              child: Badge(
                                smallSize: 15,
                                backgroundColor: green,
                              ))))
                ],
              ),
              Center(
                child: SmoothPageIndicator(
                  controller: PageController(),
                  count: 5,
                  effect: ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: white,
                    dotColor: Colors.white.withOpacity(0.4699999988079071),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Text(
                  'Linked Asset',
                  textAlign: TextAlign.center,
                  style: CustomFontStyle().common(
                    color: white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15.0),
                padding: EdgeInsets.all(10),
                decoration: ShapeDecoration(
                  color: Colors.black.withOpacity(0.17000000178813934),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7.02.r),
                  ),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/vwpologtblue-1612-Bearbeitet 1.png",
                      height: 80.h,
                      width: 80.w,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      'Volkswagon Polo GT',
                      textAlign: TextAlign.center,
                      style: CustomFontStyle().common(
                        color: white,
                        fontSize: 16.14.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: CustomButton(
                  text: 'Update Details',
                  textColor: blue6ec,
                  bgColor: white,
                  onPress: () {
                    showModalBottomSheet(
                      backgroundColor: white,
                      shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(8.r),
                              topRight: Radius.circular(8.r))),
                      useSafeArea: true,
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: MediaQuery.of(context).viewInsets,
                          child: Container(
                            width: ScreenUtil().screenWidth,
                            // color: white,
                            decoration: const BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                )),
                            // padding: EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Update Asset',
                                        style: CustomFontStyle().common(
                                          color: black2c,
                                          fontSize: 18.sp,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () => Navigator.pop(context),
                                        child: CircleAvatar(
                                          backgroundColor: lightblue,
                                          radius: 12.r,
                                          child: Icon(
                                            Icons.close,
                                            color: white,
                                            size: 14.sp,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(bottom: 12),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 15),
                                        width: ScreenUtil().screenWidth,
                                        height: 56.h,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: const Color(0xfff0efef)),
                                        child: DropdownButton(
                                          isExpanded: true,
                                          hint: Text(
                                            'Assets',
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w400,
                                              color: grey,
                                            ),
                                          ),
                                          underline: const SizedBox(
                                            height: 0,
                                          ),
                                          value: dropvalue,
                                          icon: Icon(
                                            Icons
                                                .arrow_drop_down_circle_outlined,
                                            size: 20,
                                            color: dropvalue == null
                                                ? grey
                                                : primaryColor,
                                          ),
                                          items: items.map((String items) {
                                            return DropdownMenuItem(
                                              value: items,
                                              child: Text(
                                                items,
                                                style: CustomFontStyle().common(
                                                  fontSize: 16.sp,
                                                  fontWeight: FontWeight.w500,
                                                  color: black,
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                          onChanged: (String? newValue) {
                                            setState(() {
                                              dropvalue = newValue!;
                                            });
                                          },
                                        ),
                                      ),
                                      const CustomTextField(
                                        hintText: "vehicle name",
                                      ),
                                      const CustomTextField(
                                        suffixIcon: Icon(
                                          Icons.upload_file,
                                          color: primaryColor,
                                        ),
                                      ),
                                      CustomButton(
                                        text: "Update",
                                        bgColor: primaryColor,
                                        textColor: white,
                                        onPress: () {
                                          Navigator.push(context,MaterialPageRoute(builder: (context){
                                            return const AssetspageUpdated();
                                          }));
                                        },
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          )),
    );
  }
}
