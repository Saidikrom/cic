import 'package:cic/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListPartOfStudent extends StatelessWidget {
  const ListPartOfStudent({
    Key? key,
    required this.isTrue,
  }) : super(key: key);

  final bool isTrue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        width: 368.w,
        height: 55.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Color(0xff7CC8FF).withOpacity(0.25),
              spreadRadius: 5.r,
              blurRadius: 7.r,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          children: [
            SizedBox(
              width: 10.w,
            ),
            Text("Abdulaziz Adhamov"),
            Expanded(
              child: RadioButton(),
            ),
            SizedBox(
              width: 10.w,
            )
          ],
        ),
      ),
    );
  }
}
