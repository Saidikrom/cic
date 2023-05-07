import 'package:cic/widgets/class_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<dynamic> StudentBottomsheet(
  TextEditingController name,
  TextEditingController surname,
  BuildContext context,
) {
  return showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(60.r),
        ),
      ),
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (ctx) {
        return StatefulBuilder(
            builder: (context, setState) => SingleChildScrollView(
                  child: AnimatedPadding(
                    padding: MediaQuery.of(context).viewInsets,
                    duration: const Duration(milliseconds: 100),
                    curve: Curves.decelerate,
                    child: SizedBox(
                      height: 350.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                            ),
                            SizedBox(
                              height: 60.h,
                              width: 350.w,
                              child: TextField(
                                style: const TextStyle(color: Colors.black),
                                controller: name,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Color.fromARGB(255, 197, 226, 255),
                                  hintText: "Ism",
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            SizedBox(
                              height: 60.h,
                              width: 350.w,
                              child: TextField(
                                style: const TextStyle(color: Colors.black),
                                controller: surname,
                                decoration: InputDecoration(
                                  filled: true,
                                  hintText: "Familya",
                                  fillColor: Color.fromARGB(255, 197, 226, 255),
                                  border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 30.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    ClassDialog.dialogs(context, "text");
                                  },
                                  child: Container(
                                    height: 60.h,
                                    width: 155.w,
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 197, 226, 255),
                                      borderRadius: BorderRadius.circular(15.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Sinf",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 33.w,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 155.w,
                                    height: 60.h,
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
                              ],
                            ),
                            SizedBox(
                              height: 25.h,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ));
      });
}
