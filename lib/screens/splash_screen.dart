import 'package:authentication_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void switchToLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  void initState() {
    // ignore: avoid_print
    print("call hogaya");
    Future.delayed(const Duration(seconds: 3), switchToLoginPage);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Flexible(
              child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/header.png",
                    fit: BoxFit.fill,
                  ))),
          const Spacer(),
          Text(
            "ANGEL SURE",
            style: GoogleFonts.akayaTelivigala(
                fontSize: 36,
                fontWeight: FontWeight.w400,
                color: const Color(0xff2F80ED)),
          ),
          Image.asset(
            "assets/logo.png",
            height: 239,
            width: 298,
          ),
          const Spacer(),
          Flexible(
              child: SizedBox(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/footer.png",
                    fit: BoxFit.fill,
                  ))),
        ]),
      ),
    );
  }
}
