import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/onboarding/widgets/circle_progressbar.dart';
import 'package:qr_talkie/presentation/screens/onboarding/widgets/introductionlist.dart';
import 'package:qr_talkie/utils/colors.dart';

/// A IntroScreen Class.

class IntroductionScreen extends StatefulWidget {
  final List<IntroductionList>? introductionList;
  final Color? backgroudColor;
  final Color? foregroundColor;
  final TextStyle? skipTextStyle;

  /// Callback on Skip Button Pressed
  final Function()? onTapSkipButton;
  IntroductionScreen({
    Key? key,
    this.introductionList,
    this.onTapSkipButton,
    this.backgroudColor,
    this.foregroundColor,
    this.skipTextStyle = const TextStyle(fontSize: 20),
  }) : super(key: key);

  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  double progressPercent = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Stack(
        children: [
          PageView(
              physics: NeverScrollableScrollPhysics(),
              //  physics: ClampingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: [
                ...widget.introductionList!,
              ]),
          Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: Padding(
                padding: EdgeInsets.only(top: ScreenUtil().screenHeight / 1.5),
                child: _customProgress(),
              )),
        ],
      ),
    );
  }

  Widget _customProgress() {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 80.w,
          height: 80.h,
          child: Circleprogress(
            backgroundColor: white,
            foregroundColor: primaryColor,
            value: ((_currentPage + 1) * 1.0 / widget.introductionList!.length),
          ),
        ),
        Container(
          height: 60.h,
          width: 60.w,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: white,
          ),
          child: IconButton(
            onPressed: () {
              _currentPage != widget.introductionList!.length - 1
                  ? _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.ease,
                    )
                  : widget.onTapSkipButton!();
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: primaryColor,
            ),
            iconSize: 15,
          ),
        )
      ],
    );
  }
}
