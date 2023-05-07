import 'dart:ui';

import 'package:cic/widgets/add_class_bottomsheet.dart';
import 'package:cic/widgets/add_student_bottomsheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/add_button.dart';
import '../widgets/first_appBar.dart';
import '../widgets/list_of_class.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  TextEditingController classNumber = TextEditingController();
  TextEditingController classType = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController surname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F9FE),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              FirstAppBar(),
              SizedBox(
                height: 60.h,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      ClassBottomsheet(classNumber, classType, context);
                    },
                    child: AddButton(
                      imgLink: "assets/class.png",
                      text: "Sinf qo’shish",
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      StudentBottomsheet(name, surname, context);
                    },
                    child: AddButton(
                      imgLink: "assets/student.png",
                      text: "o’quvchi\n qo’shish",
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 36.h,
              ),
              Text(
                "Sinflar ro’yxati",
                style: TextStyle(
                    color: Color(0xff545CAA),
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w500,
                    fontFeatures: [FontFeature.subscripts()]),
              ),
              SizedBox(
                height: 30.h,
              ),
              ListOfClass(),
            ],
          ),
        ),
      ),
    );
  }
}
