import 'package:docs/core/helpers/spacing.dart';
import 'package:docs/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsBlueScreen extends StatelessWidget {
  const DoctorsBlueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 195.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: 170.h,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/home_blue_pattern.png'),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Book and\n schedule with\n nearest doctor',
                  style: TextStyles.font18WhiteMedium,
                  textAlign: TextAlign.start,
                ),
                verticalSpace(16),
                Expanded(
                    child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(48.0),
                    ),
                  ),
                  child: Text(
                    'Find Near by ',
                    style: TextStyles.font12BlueRegular,
                  ),
                ))
              ],
            ),
          ),
          Positioned(
            right: 16,
            top: 0,
            child: Image.asset(
              'assets/images/omar.png',
              height: 200.h,
            ),
          )
        ],
      ),
    );
  }
}
