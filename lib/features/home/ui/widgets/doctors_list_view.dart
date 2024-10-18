import 'package:docs/core/helpers/spacing.dart';
import 'package:docs/core/theming/styles.dart';
import 'package:docs/features/home/data/models/specializations_response_model.dart';
import 'package:docs/features/home/ui/widgets/doctors_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListView extends StatelessWidget {
  final List<Doctors?> doctorsList;
  const DoctorsListView({super.key, required this.doctorsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: doctorsList.length,
          itemBuilder: (context, index) {
            return DoctorsListViewItem(
              docorsModel: doctorsList[index],
            );
          }),
    );
  }
}
