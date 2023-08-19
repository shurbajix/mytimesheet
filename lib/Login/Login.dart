import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/route_manager.dart';
import 'package:mytimesheet/admin/admin.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161D31),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 40.w,
                    height: 40.h,
                    child: SvgPicture.asset(
                      'images/svg/logo.svg',
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    'MyTimeSheet',
                    style: TextStyle(
                      color: const Color(0xff7367F0),
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100.h,
              ),
              Container(
                width: 320.w,
                height: 400.h,
                decoration: BoxDecoration(
                  color: const Color(0xff283046),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'images/svg/home.svg',
                        width: 200.w,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Text(
                        'مرحبا بعودتك',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      const Text(
                        'قم بتسجيل الدخول الان',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 280.w,
                        height: 40.h,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: const Color(0xff161D31),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'البريد الالكتروني',
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      SizedBox(
                        width: 280.w,
                        height: 40.h,
                        child: TextFormField(
                          decoration: InputDecoration(
                            fillColor: const Color(0xff161D31),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'كلمة المرور',
                            hintStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 250.w,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            backgroundColor: const Color(0xff7367F0),
                          ),
                          onPressed: () {
                            setState(() {
                              Get.to(
                                const Admin(),
                              );
                            });
                          },
                          child: const Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
