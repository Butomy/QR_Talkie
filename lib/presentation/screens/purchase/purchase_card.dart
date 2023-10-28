import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/purchase/qrcard_qrtalki.dart';
import 'package:qr_talkie/presentation/widgets/custom_button.dart';
import 'package:qr_talkie/utils/custom_font_style.dart';

import '../../../../utils/colors.dart';
import '../../widgets/custom_textfield.dart';

class PurchaseCardList extends StatefulWidget {
  const PurchaseCardList({Key? key}) : super(key: key);

  @override
  State<PurchaseCardList> createState() => _PurchaseCardListState();
}

List<ImageProvider> images = [
  const AssetImage("assets/images/Rectangle 163.png"),
  const AssetImage("assets/images/Rectangle 164.png"),
  const AssetImage("assets/images/Rectangle 165.png"),
  const AssetImage("assets/images/Rectangle 166.png"),
  const AssetImage("assets/images/Rectangle 163.png"),
  const AssetImage("assets/images/Rectangle 164.png"),
  const AssetImage("assets/images/Rectangle 165.png"),
  const AssetImage("assets/images/Rectangle 166.png"),
  const AssetImage("assets/images/Rectangle 163.png"),
  const AssetImage("assets/images/Rectangle 164.png"),
  const AssetImage("assets/images/Rectangle 165.png"),
  const AssetImage("assets/images/Rectangle 166.png"),
];

TextEditingController Search = TextEditingController();

class _PurchaseCardListState extends State<PurchaseCardList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black.withOpacity(0.5),
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 40,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: white,
          ),
        ),
        backgroundColor: black.withOpacity(0.5),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage("assets/images/Group 331.png"),
              width: 30.08.w,
              height: 29.29.h,
            ),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'QR ',
                    style: CustomFontStyle().common(
                      color: primaryColor,
                      fontSize: 16.87.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: 'Talkie ',
                    style: CustomFontStyle().common(
                      color: white,
                      fontSize: 16.87.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 10),
            margin: const EdgeInsets.only(top: 15),
            width: double.infinity,
            decoration: ShapeDecoration(
              color: white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.r),
                  topRight: Radius.circular(16.r),
                ),
              ),
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
                  child: CustomTextField(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color(0xFF8E8E93),
                    ),
                    hintText: "Search",
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    child: GridView.count(
                      childAspectRatio: 0.53.h,
                      physics: const ScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      children: List.generate(
                        12,
                        (index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  bottom: 10.h,
                                ),
                                height: 220.h,
                                decoration: BoxDecoration(
                                  color: white,
                                  image: DecorationImage(
                                    image: images[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 12, right: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'QR card by Qr talki',
                                      maxLines: 1,
                                      style: CustomFontStyle().common(
                                        overflow: TextOverflow.ellipsis,
                                        color: black2c,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      'Regular',
                                      style: CustomFontStyle().common(
                                        color: black.withOpacity(0.5),
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Text.rich(
                                      maxLines: 2,
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'AED ',
                                            style: CustomFontStyle().common(
                                              color: black2c,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '150.00',
                                            style: CustomFontStyle().common(
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: black.withOpacity(0.5),
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '120.00 ',
                                            style: CustomFontStyle().common(
                                              color: black2c,
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '26%OFF',
                                            style: CustomFontStyle().common(
                                              color: primaryColor,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: CustomButton(
                                  minSize: const Size(double.infinity, 40),
                                  text: " Add to cart",
                                  textStyle: CustomFontStyle().common(
                                    color: white,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  bgColor: primaryColor,
                                  onPress: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return QrCard();
                                    }));
                                  },
                                ),
                              )
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width / 1.1.w,
              height: 70.h,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: ShapeDecoration(
                color: primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '2 item | AED 240',
                        style: CustomFontStyle().common(
                          color: white,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Delivery Charge may apply',
                        style: CustomFontStyle().common(
                          color: white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'View Cart ',
                            textAlign: TextAlign.right,
                            style: CustomFontStyle().common(
                              color: white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: white,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
