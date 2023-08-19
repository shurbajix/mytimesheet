import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'package:mytimesheet/admin/employees/employees.dart';
import 'package:mytimesheet/class/class.dart';
import 'notification/notification.dart';

class Admin extends StatefulWidget {
  const Admin({super.key});

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff161D31),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: SizedBox(
          width: 100.w,
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.powerOff,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.earth,
              color: Colors.white,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff283046),
            ),
            onPressed: () {
              setState(
                () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const notification();
                      });
                },
              );
            },
            child: const Text(
              'الاشعارات',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                itemCount: imagelist.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        Get.to(
                          const Employess(),
                        );
                      });
                    },
                    child: Container(
                      width: 200.w,
                      height: 100.h,
                      decoration: BoxDecoration(
                        color: const Color(0xff283046),
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            imagelist[index],
                            fit: BoxFit.cover,
                            width: 100.w,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            gridtextlist[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
