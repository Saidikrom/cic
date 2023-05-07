import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  DateTime ticketDay = DateTime.now();
  void calendar(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2050),
    ).then((chosedDay) {
      if (chosedDay != null) {
        ticketDay = chosedDay;
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back)),
          Row(
            children: [
              Text(
                "1",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 37.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Transform.translate(
                offset: const Offset(0 - 4, -4),
                child: Text(
                  'A',
                  //superscript is usually smaller in size
                  textScaleFactor: 0.7,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 37.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                "-sinf",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 37.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              calendar(context);
            },
            child: SizedBox(
              height: 33.w,
              width: 33.w,
              child: Stack(children: [
                SizedBox(
                  height: 33.w,
                  width: 33.w,
                  child: Image.asset("assets/calendar.png"),
                ),
                Positioned(
                  top: 13.h,
                  left: int.parse(DateFormat.d().format(ticketDay)) > 10
                      ? 8.w
                      : 12.w,
                  child: Text(
                    textAlign: TextAlign.center,
                    "${DateFormat.d().format(ticketDay)}",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
