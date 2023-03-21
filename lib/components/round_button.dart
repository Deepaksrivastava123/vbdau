import 'package:flutter/material.dart';

import '../res/colors.dart';



class RoundButton extends StatelessWidget {
  final String? title;
  final bool loading;
  final VoidCallback onPress;

  const RoundButton(
      {Key? key,
      required this.title,
      this.loading = false,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          height: 50,
          width: 400,
          decoration: BoxDecoration(
            color: AppColors.themeColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Center(
            child: loading
                ? CircularProgressIndicator(color: AppColors.whiteColor)
                : Text(
                    title!,
                    style: TextStyle(
                        color: AppColors.whiteColor,
                        fontFamily: 'Avenir',
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
          )),
    );
  }
}
