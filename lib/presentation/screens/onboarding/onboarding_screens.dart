import 'package:flutter/material.dart';
import 'package:qr_talkie/presentation/screens/home.dart';
import 'package:qr_talkie/presentation/screens/homepage/homepage.dart';
import 'package:qr_talkie/presentation/screens/onboarding/widgets/screen.dart';
import 'package:qr_talkie/presentation/screens/onboarding/widgets/introductionlist.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoardingScreen> {


  final List<IntroductionList> lists = [
    const IntroductionList(
      title: 'Connectivity',
      subTitle: 'you can easily buy and link\nwith the QR code',
      imageUrl: 'assets/images/person-scanning-qr-code 1.png',
    ),
    const IntroductionList(
      title: 'Chat',
      subTitle: 'You can message with unknown \npersons using QR Talki',
      imageUrl: 'assets/images/medium-shot-smiley-woman-with-device 1.png',
    ),
    const IntroductionList(
      title: 'Privacy',
      subTitle: 'you can easily buy and link\nwith the QR code',
      imageUrl: 'assets/images/hand-holding-cloud-system-with-data-protection 1.png',
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: IntroductionScreen(
        introductionList: lists,
        onTapSkipButton: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Homepage(),
            ), 
          );
        },
      ),
    );
}}