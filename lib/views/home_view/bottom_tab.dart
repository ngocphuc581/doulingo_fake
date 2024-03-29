import 'package:doulingo_fake/controllers/bottom_controller.dart';
import 'package:doulingo_fake/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BottomTabWidget extends StatelessWidget {
  const BottomTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    BottomController bottomController = Get.find();
    return Container(
      height: 65.h,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(width: 3, color: Colors.grey.withOpacity(0.5)),
        ),
        color: Constant.mainColor,
        boxShadow: const [
          BoxShadow(offset: Offset(3, 6), color: Colors.white, spreadRadius: 3),
        ],
      ),
      child: Obx(
        () => BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          currentIndex: bottomController.currentIndex.value,
          onTap: (int index) => bottomController.currentIndex.value = index,
          elevation: 10,
          backgroundColor: Constant.mainColor,
          type: BottomNavigationBarType.shifting,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/home_icon.png',
                  width: 22.sp, height: 22.sp),
              label: '',
              backgroundColor: Constant.mainColor,
              activeIcon: Container(
                padding: EdgeInsets.all(7.sp),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.withOpacity(0.3)),
                child: Image.asset('assets/images/home_icon.png',
                    width: 22.sp, height: 22.sp),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/chest_icon.png',
                  width: 22.sp, height: 22.sp),
              label: '',
              backgroundColor: Constant.mainColor,
              activeIcon: Container(
                padding: EdgeInsets.all(7.sp),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.withOpacity(0.3)),
                child: Image.asset('assets/images/chest_icon.png',
                    width: 22.sp, height: 22.sp),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/avatar_icon.png',
                  width: 22.sp, height: 22.sp),
              label: '',
              backgroundColor: Constant.mainColor,
              activeIcon: Container(
                padding: EdgeInsets.all(7.sp),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.withOpacity(0.3)),
                child: Image.asset('assets/images/avatar_icon.png',
                    width: 22.sp, height: 22.sp),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/notification_icon.png',
                  width: 22.sp, height: 22.sp),
              label: '',
              backgroundColor: Constant.mainColor,
              activeIcon: Container(
                padding: EdgeInsets.all(7.sp),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.withOpacity(0.3)),
                child: Image.asset('assets/images/notification_icon.png',
                    width: 22.sp, height: 22.sp),
              ),
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/images/setting_icon.png',
                  width: 22.sp, height: 22.sp),
              label: '',
              backgroundColor: Constant.mainColor,
              activeIcon: Container(
                padding: EdgeInsets.all(7.sp),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue.withOpacity(0.3)),
                child: Image.asset('assets/images/setting_icon.png',
                    width: 22.sp, height: 22.sp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
