import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FirstAppBar extends StatefulWidget {
  FirstAppBar({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstAppBar> createState() => _FirstAppBarState();
}

class _FirstAppBarState extends State<FirstAppBar> {
  bool isTrue = false;
  double number = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Davomat',
          style: TextStyle(
            fontSize: 37.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 170.w,
          height: 45.h,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    isTrue = !isTrue;
                    setState(() {});
                  },
                  child: isTrue
                      ? null
                      : Image.asset(number == 1
                          ? "assets/uzb.png"
                          : number == 2
                              ? "assets/rus.png"
                              : number == 3
                                  ? "assets/uk.png"
                                  : ""),
                ),
              ),
              isTrue
                  ? Container(
                      width: 169.w,
                      height: 45.h,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              isTrue = false;
                              number = 3;
                              setState(() {});
                            },
                            child: SizedBox(
                                width: 30.w,
                                height: 30.w,
                                child: Image.asset("assets/uk.png")),
                          ),
                          GestureDetector(
                            onTap: () {
                              isTrue = false;
                              number = 2;
                              setState(() {});
                            },
                            child: SizedBox(
                              width: 35.w,
                              height: 35.w,
                              child: Image.asset("assets/rus.png"),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              isTrue = false;
                              number = 1;
                              setState(() {});
                            },
                            child: SizedBox(
                              width: 35.w,
                              height: 35.w,
                              child: Image.asset("assets/uzb.png"),
                            ),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}
