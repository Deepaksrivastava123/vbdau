import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../res/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 25,right: 25),
              child: Column(
                children: [
                  Container(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Center(
                            child: Container(
                                width: 300,
                                height: 150,
                                child: Image.asset('assets/images/appNameLogo.png')),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 4),
                    child: Text(
                      'SIGNUP',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 32,
                          color: AppColors.themeColor,
                          fontFamily: 'Avenir'),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Avenir', fontSize: 18),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                     // controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.themeColor)),
                        hintText: 'Name',
                        hintStyle: TextStyle(
                            color: AppColors.themeColor, fontFamily: 'Avenir'),
                        labelText: 'Name',
                        labelStyle: TextStyle(
                            color: AppColors.themeColor, fontFamily: 'Avenir'),
                        prefixIcon: Icon(
                          Icons.person_2_sharp,
                          color: AppColors.themeColor,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: AppColors.themeColor),
                        ),
                      ),

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Avenir', fontSize: 18),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      // controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.themeColor)),
                        hintText: 'Username',
                        hintStyle: TextStyle(
                            color: AppColors.themeColor, fontFamily: 'Avenir'),
                        labelText: 'Username',
                        labelStyle: TextStyle(
                            color: AppColors.themeColor, fontFamily: 'Avenir'),
                        prefixIcon: Icon(
                          Icons.person_2_sharp,
                          color: AppColors.themeColor,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: AppColors.themeColor),
                        ),
                      ),

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: TextFormField(
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Avenir', fontSize: 18),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      // controller: _emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: AppColors.themeColor)),
                        hintText: 'Username',
                        hintStyle: TextStyle(
                            color: AppColors.themeColor, fontFamily: 'Avenir'),
                        labelText: 'Username',
                        labelStyle: TextStyle(
                            color: AppColors.themeColor, fontFamily: 'Avenir'),
                        prefixIcon: Icon(
                          Icons.person_2_sharp,
                          color: AppColors.themeColor,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: AppColors.themeColor),
                        ),
                      ),

                    ),
                  ),

                ],
              ),
            ),
          ),
        ));
  }
}
