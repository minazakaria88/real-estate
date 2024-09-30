import 'package:flutter/material.dart';
import 'package:realestate/core/helpers/extension.dart';
import '../../../../core/utils/app_styles.dart';

class AdvertiseWidget extends StatefulWidget {
  const AdvertiseWidget({
    super.key,
  });

  @override
  State<AdvertiseWidget> createState() => _AdvertiseWidgetState();
}

class _AdvertiseWidgetState extends State<AdvertiseWidget> {
  int selectedType = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: (){
                selectedType=0;
                setState(() {

                });
              },
              child: Column(
                children: [
                  Text(
                    'إعلانات العضوية',
                    style: selectedType != 0
                        ? AppStyles.bold12black.copyWith(color: Colors.grey)
                        : AppStyles.bold14Black,
                  ),
                  15.height,
                  Container(
                    height: 2,
                    color: selectedType!=0?Colors.grey:Colors.black,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: (){
                selectedType=1;
                setState(() {

                });
              },
              child: Column(
                children: [
                  Text('إعلانات مدفوعة',
                      style: selectedType != 1
                          ? AppStyles.bold12black.copyWith(color: Colors.grey)
                          : AppStyles.bold14Black),
                  15.height,
                  Container(
                    height: 2,
                    color: selectedType!=1?Colors.grey:Colors.black,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
