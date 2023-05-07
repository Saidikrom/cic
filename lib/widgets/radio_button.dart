import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioButton extends StatefulWidget {
  RadioButton({
    Key? key,
  }) : super(key: key);

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  bool isTrue = false;

  bool isTrue2 = false;

  bool isTrue3 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {
            isTrue = !isTrue;
            isTrue3 = false;
            isTrue2 = false;
            setState(() {});
            print(isTrue);
          },
          child: SizedBox(
            height: 25.w,
            width: 25.w,
            child: Stack(
              children: [
                CircleAvatar(
                    radius: 15.r,
                    backgroundColor: Color(0xff42FF00).withOpacity(.25)),
                Center(
                  child: isTrue
                      ? CircleAvatar(
                          radius: 10.r,
                          backgroundColor: Color(0xff42FF00),
                        )
                      : null,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        GestureDetector(
          onTap: () {
            isTrue2 = !isTrue2;
            isTrue3 = false;
            isTrue = false;
            setState(() {});
            print(isTrue2);
          },
          child: SizedBox(
            height: 25.w,
            width: 25.w,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 15.r,
                  backgroundColor: Color(0xffFAFF00).withOpacity(.25),
                ),
                Center(
                  child: isTrue2
                      ? CircleAvatar(
                          radius: 10.r,
                          backgroundColor: Color(0xffFAFF00),
                        )
                      : null,
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        GestureDetector(
          onTap: () {
            isTrue3 = !isTrue3;
            isTrue = false;
            isTrue2 = false;
            setState(() {});
            print(isTrue3);
          },
          child: SizedBox(
            height: 25.w,
            width: 25.w,
            child: Stack(
              children: [
                CircleAvatar(
                  radius: 15.r,
                  backgroundColor: Color(0xffFF0000).withOpacity(.25),
                ),
                Center(
                  child: isTrue3
                      ? CircleAvatar(
                          radius: 10.r,
                          backgroundColor: Color(0xffFF0000),
                        )
                      : null,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
