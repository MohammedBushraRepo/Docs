import 'package:docs/core/helpers/spacing.dart';
import 'package:docs/core/theming/styles.dart';
import 'package:docs/features/home/data/models/specializations_response_model.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  final Doctors? docorsModel;
  const DoctorsListViewItem({super.key, this.docorsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              width: 110.w,
              height: 120.h,
              'https://static.wikia.nocookie.net/five-world-war/images/6/64/Hisoka.jpg/revision/latest?cb=20190313114050',
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  docorsModel?.name ?? 'Name',
                  style: TextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                 '${docorsModel?.degree} | ${docorsModel?.phone}',// 'Degree | 0111111111111',
                  style: TextStyles.font12GrayMedium,
                ),
                verticalSpace(5),
                Text(
                  docorsModel?.email ?? 'Email',
                  style: TextStyles.font12GrayMedium,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
