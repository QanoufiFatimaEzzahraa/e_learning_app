import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_learning_app/pages/sign_in/widgets/sign_in_widget.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(1.0),
              child: Container(
                color: Colors.grey.withOpacity(0.5),
                height: 1.0,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildThirdPartyLogin(context),
                Center(
                    child: reusableText("Or use your email account to sign up")),
                Container(
                  margin: EdgeInsets.only(top: 20.h),
                  padding: EdgeInsets.only(left: 25.w, right: 25.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      reusableText("Email"),
                      SizedBox(height: 5.h),
                      buildTextField(
                          "Enter your email address", "email", "user"),
                      reusableText("Password"),
                      SizedBox(height: 5.h),
                      buildTextField(
                          "Enter your password", "password", "lock"),
                      reusableText("Confirm Password"),
                      SizedBox(height: 5.h),
                      buildTextField(
                          "Confirm your password", "confirm_password", "lock"),
                    ],
                  ),
                ),
                buildLogInAndRegButton("Register", "Sing up", () {
                  Navigator.of(context).pushNamed("homePage");
                  print("Register button tapped");
                }),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed("signIn");
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 20.h),
                      child: reusableText("Already have an account? Log In"),
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
