import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

final List<String> containers = [
  'تهنئة',
  'اجازة',
  'دعوة',
  'سبب اخر',
];

class notification extends StatefulWidget {
  const notification({super.key});

  @override
  State<notification> createState() => _notificationState();
}

class _notificationState extends State<notification> {
  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int? selectedValue;
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return AlertDialog(
          backgroundColor: const Color(0xff283046),
          title: const Center(
            child: Text(
              'الاشعارات',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          content: SizedBox(
            width: 500.w,
            height: 500.h,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'عنوان الاشعار',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'عنوان',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    'رسالة الاشعار',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: 'رسالة الاشعار ',
                      hintStyle: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'نوع الاشعار',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 50, // Adjust as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: containers.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Radio<int>(
                              value: index,
                              groupValue: selectedValue,
                              onChanged: (int? value) {
                                setState(() {
                                  selectedValue = value!;
                                });
                              },
                              activeColor: Colors.white,
                            ),
                            Text(
                              containers[index],
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Text(
                    'سبب الاشعار',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        hintText: 'سبب الاشعار',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'من تاريخ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: TextFormField(
                      readOnly: true,
                      controller: dateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText: 'Pick your Date',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () async {
                        var date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1800),
                            lastDate: DateTime(2100));
                        if (date != null) {
                          dateController.text =
                              DateFormat('MM/dd/yyyy').format(date);
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    'الى تاريخ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: TextFormField(
                      readOnly: true,
                      controller: dateController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            15,
                          ),
                        ),
                        hintText: 'Pick your Date',
                        hintStyle: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onTap: () async {
                        var date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1800),
                            lastDate: DateTime(2100));
                        if (date != null) {
                          dateController.text = DateFormat(
                            'MM/dd/yyyy',
                          ).format(date);
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: const Color(0xff283046),
                      ),
                      onPressed: () {},
                      child: Text(
                        'ارسال الاشعار',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
