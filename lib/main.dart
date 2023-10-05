
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_talkie/presentation/screens/splash_screen/splashscreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp(), );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,    
              child: MaterialApp(
                  title:'QR Talkie ',
                  debugShowCheckedModeBanner: false,
                  theme: ThemeData(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    fontFamily: "Poppins",
                    useMaterial3: true,
                  ),
               
                  home: const SplashScreen()),
            );
  }
}
