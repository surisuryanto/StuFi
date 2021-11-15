import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';
import 'package:stufi/home_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final onboardingPagesList = [
    PageModel(
      widget: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 45.0),
            child: Image.asset(
              'assets/images/facebook.png',
            ),
            //     LottieBuilder.asset(
            //   'assets/lottie/shooting-photo-animation.json',
            //   fit: BoxFit.cover,
            //   width: 25,
            //   height: 25,
            // ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              'SECURED BACKUP',
              style: pageTitleStyle,
            ),
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              'Keep your files in closed safe so you can\'t lose them',
              style: pageInfoStyle,
            ),
          ),
        ],
      ),
    ),
    PageModel(
      widget: Column(
        children: [
          Image.asset(
            'assets/images/twitter.png',
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              'CHANGE AND RISE',
              style: pageTitleStyle,
            ),
          ),
          const Text(
            'Give others access to any file or folder you choose',
            style: pageInfoStyle,
          ),
        ],
      ),
    ),
    PageModel(
      widget: Column(
        children: [
          Image.asset(
            'assets/images/instagram.png',
          ),
          const Text(
            'EASY ACCESS',
            style: pageTitleStyle,
          ),
          const Text(
            'Reach your files anytime from any devices anywhere',
            style: pageInfoStyle,
          ),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Onboarding(
        pages: onboardingPagesList,
        indicator: Indicator(
          indicatorDesign: IndicatorDesign.line(
            lineDesign: LineDesign(
              lineType: DesignType.line_uniform,
            ),
          ),
        ),
        proceedButtonStyle: ProceedButtonStyle(
          proceedButtonRoute: (context) {
            return Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ),
              (route) => false,
            );
          },
        ),
        isSkippable: true,
        background: Colors.black12,
      ),
    );
  }
}
