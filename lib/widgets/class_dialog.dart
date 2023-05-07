import 'package:cic/widgets/small_list_of_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClassDialog {
  static dialogs(
    BuildContext context,
    String text,
  ) {
    showDialog(
        context: context,
        builder: (ctx) {
          return Dialog(
            backgroundColor: Color(0xffF4F9FE),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.r),
            ),
            child: Container(
              height: 351.h,
              width: 353.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    height: 300.h,
                    width: 353.w,
                    child: SmallListOfClass(),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
