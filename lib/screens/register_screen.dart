import 'package:bycarr/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = '/register_screen';
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final paddingHorizontal = screenWidth * 0.08;
    final spacing = screenHeight * 0.02;
    final titleFontSize = screenHeight * 0.03;
    final subtitleFontSize = screenHeight * 0.018;
    final buttonHeight = screenHeight * 0.06;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.03),

              // 🔙 Back Arrow
              GestureDetector(
                onTap: () => context.pop(),
                child: Container(
                  padding: EdgeInsets.all(screenWidth * 0.015),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 3,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.black87,
                    size: screenWidth * 0.06,
                  ),
                ),
              ),

              SizedBox(height: screenHeight * 0.01),

              Center(
                child: SizedBox(
                  height: screenHeight * 0.20,
                  width: screenWidth * 0.9,
                  child: Image.asset(
                    'assets/images/registerscreen.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              SizedBox(height: spacing),
              // 🏷️ Title
              Center(
                child: Column(
                  children: [
                    Text(
                      'Create Your Account',
                      style: TextStyle(
                        fontSize: titleFontSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: spacing * 0.3),
                    Text(
                      'Join ByCarr today to access exclusive features',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: subtitleFontSize,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: spacing * 1.5),

              // 👤 Full Name & Phone Number
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        hintText: 'John Doe',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        hintText: '+977-9841000000',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: spacing),

              // 📧 Email
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  hintText: 'your@email.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),

              SizedBox(height: spacing),

              // 🔒 Password & Referral Code
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        suffixIcon: const Icon(Icons.visibility_off),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Referral Code',
                        hintText: 'Optional',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: spacing),

              // ✅ Terms of Service
              Text.rich(
                TextSpan(
                  text: 'By signing up, you agree to our ',
                  style: TextStyle(
                    fontSize: subtitleFontSize,
                    color: Colors.grey[700],
                  ),
                  children: [
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(color: Colors.blue[700]),
                    ),
                    const TextSpan(text: ' and '),
                    TextSpan(
                      text: 'Privacy Policy.',
                      style: TextStyle(color: Colors.blue[700]),
                    ),
                  ],
                ),
              ),

              SizedBox(height: spacing * 1.5),

              // 🚪 Create Account Button
              SizedBox(
                width: double.infinity,
                height: buttonHeight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1565C0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: subtitleFontSize * 1.2,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              SizedBox(height: spacing),

              // 🔁 Already have an account
              Center(
                child: TextButton(
                  onPressed: () {
                    context.go(SignInPage.routeName);
                  },
                  child: Text(
                    'Already have an account? Sign in here',
                    style: TextStyle(
                      fontSize: subtitleFontSize,
                      color: Colors.blue[700],
                    ),
                  ),
                ),
              ),

              SizedBox(height: spacing * 2),
            ],
          ),
        ),
      ),
    );
  }
}
