import 'package:carihotel_app/models/auth_services.dart';
import 'package:carihotel_app/screens/sign_up_screen.dart';
import 'package:carihotel_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String password = '';
  bool isPasswordVisible = true;

  @override
  void initState() {
    emailController.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: SvgPicture.asset('assets/images/logo_app.svg'),
              ),
              SizedBox(height: 70),
              Text('Welcome\nLets Explorer', style: header1),
              SizedBox(height: 50),
              Container(
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  cursorColor: primaryColor,
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'name@example.com',
                    prefixStyle: TextStyle(color: primaryColor),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: greyColor),
                    ),
                    focusColor: primaryColor,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: primaryColor),
                    ),
                    suffixIcon: emailController.text.isEmpty
                        ? Container(width: 0)
                        : IconButton(
                            onPressed: () => emailController.clear(),
                            icon: Icon(
                              Icons.close,
                              color: primaryColor,
                            ),
                          ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: TextField(
                  controller: passwordController,
                  cursorColor: primaryColor,
                  onChanged: (value) => setState(() => this.password = value),
                  onSubmitted: (value) => setState(() => this.password = value),
                  decoration: InputDecoration(
                    hintText: 'Your password',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: greyColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: primaryColor),
                    ),
                    suffixIcon: IconButton(
                      icon: isPasswordVisible
                          ? Icon(Icons.visibility_off, color: primaryColor)
                          : Icon(Icons.visibility, color: primaryColor),
                      onPressed: () => setState(
                        () => isPasswordVisible = !isPasswordVisible,
                      ),
                    ),
                  ),
                  obscureText: isPasswordVisible,
                ),
              ),
              SizedBox(height: 50),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: primaryColor,
                    shape: StadiumBorder(),
                  ),
                  child: Text('Sign In'),
                  onPressed: () async {
                    await AuthServices.signIn(
                      emailController.text,
                      passwordController.text,
                    );
                  },
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Start fresh now?', style: subTitle1),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SignUpScreen()));
                    },
                    child: Text(
                      'Sign Up',
                      style: subTitle1.copyWith(color: primaryColor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
