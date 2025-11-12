import 'package:bycarr/screens/forgetpassword_screen.dart';
import 'package:bycarr/screens/register_partnerscreen.dart';
import 'package:bycarr/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatelessWidget {
  static const String routeName = '/sign_in';
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final isSmallScreen = screenWidth < 360;
    final paddingHorizontal = screenWidth * 0.08;
    final spacing = screenHeight * 0.02;
    final buttonHeight = screenHeight * 0.06;
    final titleFontSize = screenHeight * 0.03;
    final subtitleFontSize = screenHeight * 0.018;
    final buttonFontSize = screenHeight * 0.02;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraints.maxHeight),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: screenHeight * 0.02),
                      // 🔙 Back Arrow Button
                      GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: Container(
                          padding: EdgeInsets.all(screenWidth * 0.001),
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
                            Icons.arrow_back,
                            color: Colors.black87,
                            size: screenWidth * 0.08,
                          ),
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.03),
                      // 🖼️ Center Image
                      Center(
                        child: SizedBox(
                          height: screenHeight * 0.22,
                          width: screenWidth * 0.7,
                          child: Image.asset(
                            'assets/images/signin.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: spacing),
                      // 🏷️ Title
                      Text(
                        'Sign in to ByCarr',
                        style: TextStyle(
                          fontSize: titleFontSize,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: spacing / 3),
                      // 📝 Subtitle
                      Text(
                        'Welcome back to ByCarr! Enter your login details to get started.',
                        style: TextStyle(
                          fontSize: subtitleFontSize,
                          color: Colors.grey[700],
                          height: 1.4,
                        ),
                      ),
                      SizedBox(height: spacing),
                      // 📧 Email or Phone field
                      TextField(
                        style: TextStyle(fontSize: subtitleFontSize),
                        decoration: InputDecoration(
                          labelText: 'Email / Phone',
                          hintText: 'Enter phone number or email',
                          labelStyle: TextStyle(fontSize: subtitleFontSize),
                          hintStyle: TextStyle(fontSize: subtitleFontSize),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04,
                            vertical: screenHeight * 0.018,
                          ),
                        ),
                      ),
                      SizedBox(height: spacing),

                      // 🔒 Password field
                      TextField(
                        obscureText: true,
                        style: TextStyle(fontSize: subtitleFontSize),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter Password',
                          labelStyle: TextStyle(fontSize: subtitleFontSize),
                          hintStyle: TextStyle(fontSize: subtitleFontSize),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04,
                            vertical: screenHeight * 0.018,
                          ),
                          suffixIcon: const Icon(Icons.visibility_off),
                        ),
                      ),
                      // 🔁 Forgot password
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            context.push(ForgetpasswordScreen.routeName);
                          },
                          child: Text(
                            'Forgot password? Reset It',
                            style: TextStyle(
                              fontSize: subtitleFontSize,
                              color: Colors.red[700],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacing),

                      // 🚪 Sign In button
                      SizedBox(
                        width: double.infinity,
                        height: buttonHeight,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFB71C1C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              fontSize: buttonFontSize,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: spacing),

                      // 🧾 Register buttons
                      Row(
                        children: [
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                context.push(RegisterScreen.routeName);
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.black54),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'Register →',
                                  style: TextStyle(fontSize: buttonFontSize),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: screenWidth * 0.03),
                          Expanded(
                            child: OutlinedButton(
                              onPressed: () {
                                context.push(RegisterPartnerscreen.routeName);
                              },
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.black54),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  'Register as Partner →',
                                  style: TextStyle(fontSize: buttonFontSize),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: spacing),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
