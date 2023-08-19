import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Employess extends StatefulWidget {
  const Employess({super.key});

  @override
  State<Employess> createState() => _EmployessState();
}

class _EmployessState extends State<Employess> {
  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  String dropdownValue = 'عمليات';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'الموظفين',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: const Color(0xff161D31),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff283046),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 20.sp,
                  ),
                  label: Text(
                    'اضافة',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'الى',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                ),
                Text(
                  'من',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 15,
                left: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: SizedBox(
                      height: 40.h,
                      width: 150.w,
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
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 40.h,
                      width: 150.w,
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
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            SizedBox(
              width: 100.w,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff283046),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15,
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'بحث',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: 150.w,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff283046),
                    ),
                    onPressed: () {},
                    label: Text(
                      'PDF',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                    icon: const Icon(
                      Icons.picture_as_pdf,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 150.w,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff283046),
                    ),
                    onPressed: () {},
                    label: Text(
                      'EXCEL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.sp,
                      ),
                    ),
                    icon: const Icon(
                      Icons.picture_as_pdf_sharp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  child: PopupMenuButton<String>(
                    itemBuilder: (BuildContext context) => <String>[
                      'Option 1',
                      'Option 2',
                      'Option 3'
                    ].map<PopupMenuItem<String>>((String value) {
                      return PopupMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onSelected: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: const ShapeDecoration(
                        color: Color(0xff283046),
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 1.0, style: BorderStyle.solid),
                          borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            dropdownValue,
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: SizedBox(
                          width: 140.w,
                          height: 40.h,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: const TextStyle(
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
