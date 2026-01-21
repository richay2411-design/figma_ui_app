
// import 'package:figma_ui_app/Screens/LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import 'LoginScreen.dart';
class OnboardingPageThree extends StatelessWidget {
  const OnboardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1FA0B5),
      body: Column(
        children: [
          const SizedBox(height: 60),

          /// Top SVG Image
          Expanded(
            flex: 6,
            child: SvgPicture.asset(
              'assets/images/onboarding3.svg',
              fit: BoxFit.contain,
            ),
          ),

          /// Bottom Card
          Expanded(
            flex: 4,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 10),

                  /// Title
                  const Text(
                    'HOME DELIVER SERVICE',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFA000),
                    ),
                  ),

                  const SizedBox(height: 14),

                  /// Description
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.\n'
                    'Pharetra quam elementum massa, viverra. Ut turpis \nconsectetur.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),

                  const Spacer(),

                  /// Bottom Row (Skip + Arrow)
                  Row(
                    children: [
                      const Expanded(flex: 1, child: SizedBox()),

                      /// Skip
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      const LoginScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              'Skip>>',
                              style: TextStyle(
                                color: Color(0xFFFFA000),
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),

                      /// Arrow Button (CUT CIRCLE + SHADOW)
                     /// Arrow Button (Improved – NO CustomPainter)


Expanded(
  flex: 1,
  child: Align(
    alignment: Alignment.centerRight,
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const LoginScreen(),
          ),
        );
      },
      child: Image.asset(
        'assets/images/next-arrow.png',
        height: 70,
        width: 70,
        fit: BoxFit.contain,
      ),
    ),
  ),
),




                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}





