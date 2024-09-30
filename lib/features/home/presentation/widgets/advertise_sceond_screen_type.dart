import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';

import '../../../../core/utils/app_colors.dart';

class AdvertiseSecondScreenType extends StatefulWidget {
  const AdvertiseSecondScreenType({super.key});

  @override
  State<AdvertiseSecondScreenType> createState() => _AdvertiseSecondScreenTypeState();
}

class _AdvertiseSecondScreenTypeState extends State<AdvertiseSecondScreenType> {
  List<String> packageOptions = [
    'مالك',
    'وكيل',
    'مسوق',
  ];
  String selectedPackageOption = '';
  @override
  void initState() {
    selectedPackageOption = packageOptions[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.sliver, width: 2)),
            child: Row(
              children: [
                Radio(
                    activeColor: AppColors.golden,
                    value: packageOptions[0],
                    groupValue: selectedPackageOption,
                    onChanged: (String? value) {
                      setState(() {
                        selectedPackageOption = value!;
                      });
                    }),
                Text(packageOptions[0])
              ],
            ),
          ),
        ),
        10.width,
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.sliver, width: 2)),
            child: Row(
              children: [
                Radio(
                    activeColor: AppColors.golden,
                    value: packageOptions[1],
                    groupValue: selectedPackageOption,
                    onChanged: (String? value) {
                      setState(() {
                        selectedPackageOption = value!;
                      });
                    }),
                Text(packageOptions[1])
              ],
            ),
          ),
        ),
        10.width,
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.sliver, width: 2)),
            child: Row(
              children: [
                Radio(
                    activeColor: AppColors.golden,
                    value: packageOptions[2],
                    groupValue: selectedPackageOption,
                    onChanged: (String? value) {
                      setState(() {
                        selectedPackageOption = value!;
                      });
                    }),
                Text(packageOptions[2])
              ],
            ),
          ),
        ),
      ],
    );
  }
}