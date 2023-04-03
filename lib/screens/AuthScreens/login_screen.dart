import 'package:flutter/material.dart';
import 'package:vbdau/res/colors.dart';
import 'package:vbdau/screens/AuthScreens/sign_up.dart';
import 'package:vbdau/screens/Dashboard/dashboard_main.dart';

import '../../components/round_button.dart';
import '../../utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {



  ValueNotifier<bool> obsecurePassword = ValueNotifier<bool>(true);

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.whiteColor,
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                  margin: EdgeInsets.only(top: 150,left: 25,right: 25),
                  child: Image.asset('assets/images/appNameLogo.png',width: 334,height: 139,)),
            ),
            Container(
              margin: EdgeInsets.only(top: 50,left: 25,right: 30),
              child: TextFormField(
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Avenir', fontSize: 18),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.themeColor)),
                  hintText: 'Username',
                  hintStyle: TextStyle(
                      color: AppColors.themeColor, fontFamily: 'Avenir'),
                  labelText: 'Username',
                  labelStyle: TextStyle(
                      color: AppColors.themeColor, fontFamily: 'Avenir'),
                  // prefixIcon: Icon(
                  //   Icons.person_2_sharp,
                  //   color: AppColors.themeColor,
                  // ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(width: 1, color: AppColors.blackColor),
                  ),
                ),
                onFieldSubmitted: (value) {
                  Utils.feildFocusChnage(
                      context, emailFocusNode, passwordFocusNode);
                },
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(left: 25,right: 30),
              child: ValueListenableBuilder(
                  valueListenable: obsecurePassword,
                  builder: (context, value, child) {
                    return TextFormField(
                      style: TextStyle(
                          color: Colors.black, fontFamily: 'Avenir', fontSize: 18),
                      controller: _passwordController,
                      obscureText: obsecurePassword.value,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 2, color: AppColors.themeColor),
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: AppColors.blackColor, fontFamily: 'Avenir'),
                        labelText: 'Password',
                        // prefixIcon: Icon(
                        //   Icons.lock_clock_sharp,
                        //   color: AppColors.themeColor,
                        // ),
                        labelStyle: TextStyle(
                            color: AppColors.themeColor, fontFamily: 'Avenir'),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                          BorderSide(width: 1, color: AppColors.themeColor),
                        ),
                        suffixIcon: InkWell(
                            onTap: () {
                              obsecurePassword.value = !obsecurePassword.value;
                            },
                            child: obsecurePassword.value
                                ? Icon(
                              Icons.visibility_off_outlined,
                              color: AppColors.themeColor,
                            )
                                : Icon(Icons.visibility,
                                color: AppColors.themeColor)),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
             margin: EdgeInsets.only(left: 25,right: 25),
              child: RoundButton(
                  title: 'Login',
                 // loading: auth.loading,
                  onPress: () {

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DashboardMain()));

                  }),
            ),
            SizedBox(
              height: height * .02,
            ),
            Container(
              margin: EdgeInsets.only(top: 10,right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forgot Password',textAlign:TextAlign.end,style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily:'Avenir'
                  ),)
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(bottom: 33),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("DON'T HAVE AN ACCOUNT? ",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily:'Avenir')),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUp()));
                      },
                      child: Text("SIGNUP",style: TextStyle(
                          color: AppColors.themeColor,
                          fontWeight: FontWeight.bold,
                          fontFamily:'Avenir')),
                    )
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
