import 'package:docs/features/home/logic/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/models/specializations_response_model.dart';
import 'speciality_list_view_item.dart';

class SpecialityListView extends StatefulWidget {
  final List<SpecializationsData?> specializationDataList;
  const SpecialityListView({super.key, required this.specializationDataList});

  @override
  State<SpecialityListView> createState() => _DoctorsSpecialityListViewState();
}

class _DoctorsSpecialityListViewState extends State<SpecialityListView> {
  var _selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.specializationDataList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedSpecializationIndex = index;
              });
              context.read<HomeCubit>().getDoctorsList(
                  specializationId: widget.specializationDataList[index]?.id);
            },
            child: SpecialityListViewItem(
                specializationsData: widget.specializationDataList[index],
                itemIndex: index,
                selectedIndex: _selectedSpecializationIndex),
          );
        },
      ),
    );
  }
}
