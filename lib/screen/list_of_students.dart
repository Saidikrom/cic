import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/custom_appbar.dart';
import '../widgets/list_part_of_student.dart';
import '../widgets/radio_button.dart';

class ListOfStudents extends StatefulWidget {
  const ListOfStudents({Key? key}) : super(key: key);

  @override
  State<ListOfStudents> createState() => _ListOfStudentsState();
}

class _ListOfStudentsState extends State<ListOfStudents> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F9FE),
      body: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          CustomAppBar(),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 400,
            height: 580,
            child: ListView.builder(
                itemCount: 45,
                itemBuilder: (ctx, i) {
                  return ListPartOfStudent(isTrue: isTrue);
                }),
          ),
          SizedBox(
            height: 35.h,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 215.w,
              height: 55.h,
              decoration: BoxDecoration(
                color: Color(0xff545CAA),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Center(
                child: Text(
                  "OK",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.sp),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
