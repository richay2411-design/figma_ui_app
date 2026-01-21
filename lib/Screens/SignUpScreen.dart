import 'package:figma_ui_app/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscurePassword = true;
  bool _obscureRepeatPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(height: 20),

                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 4),
                const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 40),

                /// Email (IMAGE ICON)
                _inputField(
                  hint: 'Email',
                  imagePath: 'assets/icons/email.png',
                ),

                const SizedBox(height: 16),

                /// Password (LOCK IMAGE + EYE ICON)
                _inputField(
                  hint: 'Password',
                  imagePath: 'assets/icons/password.png',
                  obscureText: _obscurePassword,
                  eyeIconPath: _obscurePassword
                      ? 'assets/icons/Hide-Password.png'
                      : 'assets/icons/Hide-Password.png',
                  onTapSuffix: () {
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                ),

                const SizedBox(height: 16),

                /// Repeat Password
                _inputField(
                  hint: 'Repeat Password',
                  imagePath: 'assets/icons/password.png',
                  obscureText: _obscureRepeatPassword,
                  eyeIconPath: _obscureRepeatPassword
                      ? 'assets/icons/Hide-Password.png'
                      : 'assets/icons/Hide-Password.png',
                  onTapSuffix: () {
                    setState(() {
                      _obscureRepeatPassword = !_obscureRepeatPassword;
                    });
                  },
                ),

                const SizedBox(height: 16),

                /// Mobile Number (FLAG + DROPDOWN)
                Container(
                  height: 52,
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/icons/flag.png', height: 20),
                      const SizedBox(width: 6),
                      const Text(
                        '+244',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                        ),
                      ),
                      Image.asset(
  'assets/icons/down_arrow.png',
  height: 20,
),
                      // const Icon(
                      //   Icons.keyboard_arrow_down,
                      //   color: Colors.grey,
                      // ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: 'Mobile Number',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                /// NEXT Button
                SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton(
                    onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomeScreen()),
  );
},
                    // onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1BA6B2),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                    child: const Text(
                      'NEXT',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                const Text(
                  'Or Continue With',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    _SocialButton(
                      icon: 'assets/icons/apple.png',
                      label: 'Apple',
                    ),
                    _SocialButton(
                      icon: 'assets/icons/google.png',
                      label: 'Google',
                    ),
                    _SocialButton(
                      icon: 'assets/icons/facebook.png',
                      label: 'Facebook',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Common Input Field (ICON IMAGE SUPPORT)
  static Widget _inputField({
    required String hint,
    String? imagePath,
    String? eyeIconPath,
    bool obscureText = false,
    VoidCallback? onTapSuffix,
  }) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          fontFamily: 'Poppins',
          color: Colors.grey,
        ),
        prefixIcon: imagePath != null
            ? Padding(
                padding: const EdgeInsets.all(12),
                child: Image.asset(
                  imagePath,
                  width: 22,
                  height: 22,
                ),
              )
            : null,
        suffixIcon: eyeIconPath != null
            ? IconButton(
                icon: Image.asset(
                  eyeIconPath,
                  width: 22,
                  height: 22,
                ),
                onPressed: onTapSuffix,
              )
            : null,
        filled: true,
        fillColor: Colors.grey.shade100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

class _SocialButton extends StatelessWidget {
  final String icon;
  final String label;

  const _SocialButton({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 60,
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
          Image.asset(icon, height: 22),
          const SizedBox(height: 6),
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
