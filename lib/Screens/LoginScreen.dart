
import 'package:figma_ui_app/Screens/OtpVerificationScreen.dart';
import 'package:figma_ui_app/Screens/SignUpScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// 🔹 STACK FOR GRADIENT + UI
      body: Stack(
        children: [

          /// 🔵 TOP LEFT GRADIENT
          Positioned(
            top: -120,
            left: -120,
            child: Container(
              width: 280,
              height: 280,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    const Color(0xFFB400).withOpacity(0.15),
                    //const Color(0xFF1BA6B2).withOpacity(0.25),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          /// 🔵 BOTTOM RIGHT GRADIENT
          Positioned(
            bottom: -140,
            right: -140,
            child: Container(
              width: 320,
              height: 320,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                     const Color(0xFFB400).withOpacity(0.15),
                   // const Color(0xFF1BA6B2).withOpacity(0.20),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          /// 🔹 YOUR EXISTING UI
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),

                  /// Close Button
                  const Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.close, size: 24),
                  ),

                  const SizedBox(height: 30),

                  /// Logo
                  Image.asset(
                    'assets/images/splash_logo.png',
                    height: 60,
                  ),

                  const SizedBox(height: 40),

                  /// Welcome Text
                  const Text(
                    'Welcome Back!',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Login to continue',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 40),

                  /// Phone Number Field
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Image.asset(
                          'assets/icons/mobile.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// GET OTP BUTTON
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const OtpVerificationScreen(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1BA6B2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                        elevation: 2,
                      ),
                      child: const Text(
                        'GET OTP',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  /// Or Continue With
                  Text(
                    'Or Continue With',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                    ),
                  ),

                  const SizedBox(height: 20),

                  /// Social Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _socialButton(
                        imagePath: 'assets/icons/google.png',
                        label: 'Google',
                      ),
                      const SizedBox(width: 20),
                      _socialButton(
                        imagePath: 'assets/icons/facebook.png',
                        label: 'Facebook',
                      ),
                    ],
                  ),

                  const Spacer(),

                  /// Sign Up
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don’t have an account? ",
                        style:
                            TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const SignUpScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF1BA6B2),
                            decoration: TextDecoration.underline,
                            decorationThickness: 1.5,
                            decorationColor: Color(0xFF1BA6B2),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// SOCIAL BUTTON
  Widget _socialButton({
    required String imagePath,
    required String label,
  }) {
    return Container(
      width: 130,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 28, width: 28),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}




// import 'package:figma_ui_app/Screens/OtpVerificationScreen.dart';
// import 'package:figma_ui_app/Screens/SignUpScreen.dart';
// import 'package:flutter/material.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(height: 20),

//               // Close Button
//               const Align(
//                 alignment: Alignment.topRight,
//                 child: Icon(Icons.close, size: 24),
//               ),

//               const SizedBox(height: 30),

//               // Logo
//               Image.asset(
//                 'assets/images/splash_logo.png',
//                 height: 60,
//               ),

//               const SizedBox(height: 40),

//               // Welcome Text
//               const Text(
//                 'Welcome Back!',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 26,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),

//               const SizedBox(height: 8),

//               Text(
//                 'Login to continue',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontSize: 14,
//                   color: Colors.black,
//                 ),
//               ),

//               const SizedBox(height: 40),

//               // Phone Number Field
//               TextField(
//                 keyboardType: TextInputType.phone,
//                 decoration: InputDecoration(
//                   hintText: 'Phone Number',
//                   prefixIcon: Padding(
//   padding: const EdgeInsets.all(12),
//   child: Image.asset(
//     'assets/icons/mobile.png',
//     width: 20,
//     height: 20,
//   ),
// ),
//                  // prefixIcon: const Icon(Icons.phone_android_outlined),
//                   filled: true,
//                   fillColor: Colors.grey.shade100,
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                     borderSide: BorderSide.none,
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 30),

//               // Get OTP Button// Get OTP Button
// SizedBox(
//   width: double.infinity,
//   height: 52,
//   child: ElevatedButton(
//     onPressed: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(
//           builder: (context) => const OtpVerificationScreen(),
//         ),
//       );
//     },
//     style: ElevatedButton.styleFrom(
//       backgroundColor: const Color(0xFF1BA6B2),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(26),
//       ),
//       elevation: 2,
//     ),
//     child: const Text(
//       'GET OTP',
//       style: TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.w600,
//         color: Colors.white,
//       ),
//     ),
//   ),
// ),

// const SizedBox(height: 30),


             

//               // Or Continue With
//               Text(
//                 'Or Continue With',
//                 style: TextStyle(
//                   fontSize: 13,
//                   color: Colors.grey.shade600,
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // Social Buttons
//               Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     _socialButton(
//       imagePath: 'assets/icons/google.png',
//       label: 'Google',
//     ),
//     const SizedBox(width: 20),
//     _socialButton(
//       imagePath: 'assets/icons/facebook.png',
//       label: 'Facebook',
//     ),
//   ],
// ),

             

//               const Spacer(),

//               // Sign Up

//               Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     const Text(
//       "Don’t have an account? ",
//       style: TextStyle(fontSize: 13, color: Colors.grey),
//     ),
//     GestureDetector(
//       onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => const SignUpScreen(),
//                               ),
//                             );
//                           },
//       // onTap: () {
//       //    Navigator.push(...)
//       // },
//       child: const Text(
//         'SIGN UP',
//         style: TextStyle(
//           fontSize: 13,
//           fontWeight: FontWeight.w600,
//           color: Color(0xFF1BA6B2),
//           decoration: TextDecoration.underline,
//            decorationThickness: 1.5,
//     decorationColor: Color(0xFF1BA6B2),
//         ),
//       ),
//     ),
//   ],
// ),

              

//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // ✅ UPDATED SOCIAL BUTTON (IMAGE + TEXT)
//   Widget _socialButton({
//   required String imagePath,
//   required String label,
// }) {
//   return Container(
//     width: 130,
//     height: 90,
//     decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(12),
//       boxShadow: const [
//         BoxShadow(
//           color: Colors.black12,
//           blurRadius: 6,
//           offset: Offset(0, 3),
//         ),
//       ],
//     ),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset(
//           imagePath,
//           height: 28,
//           width: 28,
//         ),
//         const SizedBox(height: 8),
//         Text(
//           label,
//           style: const TextStyle(
//             fontFamily: 'Poppins',
//             fontSize: 14,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//       ],
//     ),
//   );
// }
// }
