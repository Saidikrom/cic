import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<dynamic> ClassBottomsheet(
  TextEditingController classNumber,
  TextEditingController classType,
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
                      height: 200.h,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 60.h,
                                  width: 150.w,
                                  child: TextField(
                                    style: const TextStyle(color: Colors.black),
                                    controller: classNumber,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      filled: true,
                                      hintText: "Sinf Raqami",
                                      fillColor:
                                          Color.fromARGB(255, 197, 226, 255),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 25.w,
                                ),
                                SizedBox(
                                  height: 60.h,
                                  width: 70.w,
                                  child: TextField(
                                    style: const TextStyle(color: Colors.black),
                                    controller: classType,
                                    decoration: InputDecoration(
                                      filled: true,
                                      hintText: "ex: A",
                                      fillColor:
                                          Color.fromARGB(255, 197, 226, 255),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide.none,
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 25.w,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    width: 130.w,
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
