import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddButton extends StatelessWidget {
  final String imgLink;
  final String text;
  const AddButton({Key? key, required this.imgLink, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86.h,
      width: 174.w,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color(0xff7CC8FF).withOpacity(0.25),
            spreadRadius: 5.r,
            blurRadius: 7.r,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 15.w,
          ),
          SizedBox(
            height: 36.w,
            width: 36.w,
            child: Image.asset(
              imgLink,
            ),
          ),
          SizedBox(
            width: 15.w,
          ),
          Text(
            textAlign: TextAlign.center,
            text,
            style: TextStyle(
              color: Color(0xff545CAA),
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
