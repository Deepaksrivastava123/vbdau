import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/round_button.dart';
import '../../res/colors.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _selectedGender = 'Male';
  final List<String> items = ['Select Age', '0-16', '16-30', '30-45','Above 45'];

  String selectedItem = 'Select Age';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            child: Center(
              child: Text(
                'SIGNUP',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 32,
                    color: AppColors.themeColor,
                    fontFamily: 'Avenir'),
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
                hintText: 'Name',
                hintStyle: TextStyle(
                    color: AppColors.themeColor, fontFamily: 'Avenir'),
                labelText: 'Name',
                labelStyle: TextStyle(
                    color: AppColors.themeColor, fontFamily: 'Avenir'),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: AppColors.themeColor),
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
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: AppColors.themeColor, fontFamily: 'Avenir'),
                labelText: 'Email',
                labelStyle: TextStyle(
                    color: AppColors.themeColor, fontFamily: 'Avenir'),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: AppColors.themeColor),
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
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: AppColors.themeColor, fontFamily: 'Avenir'),
                labelText: 'Password',
                labelStyle: TextStyle(
                    color: AppColors.themeColor, fontFamily: 'Avenir'),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: AppColors.themeColor),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text(
                'Gender',
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Radio(
                value: 'Male',
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    // _selectedGender = value;
                  });
                },
              ),
              Text('Male'),
              Radio(
                value: 'Female',
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    //_selectedGender = value;
                  });
                },
              ),
              Text('Female'),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Age Selection',
            style: TextStyle(
                fontSize: 21, color: Colors.grey, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Form(
              child: DropdownButtonFormField<String>(
                value: selectedItem,
                onChanged: (String? value) {
                  setState(() {
                    selectedItem = value!;
                  });
                },
                items: items.map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(value),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Radio(
                value: 'Male',
                groupValue: _selectedGender,
                onChanged: (value) {
                  setState(() {
                    // _selectedGender = value;
                  });
                },
              ),
              Text('I agree with'),
            ],
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            child: RoundButton(
                title: 'Signup',
                // loading: auth.loading,
                onPress: () {

                    // auth.loginApi(data, context);

                }),
          ),
        ]
        ),
      ),
    )));
  }
}
