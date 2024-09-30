import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realestate/core/helpers/extension.dart';
import 'package:realestate/core/routing/routes.dart';
import 'package:realestate/core/utils/app_colors.dart';
import 'package:realestate/core/widgets/my_text_from_field.dart';
import 'package:realestate/features/home/presentation/widgets/more_app_bar_widget.dart';
import '../../../../core/utils/app_styles.dart';

class PickLocationScreen extends StatefulWidget {
  const PickLocationScreen({super.key, required this.isAddRequest});
  final bool isAddRequest;
  @override
  State<PickLocationScreen> createState() => _PickLocationScreenState();
}

class _PickLocationScreenState extends State<PickLocationScreen> {
  String selectedLocation = '';

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: MoreAppBaWidget(title: 'حدد موقع العقار'),
                ),
                Expanded(
                  child: Stack(
                    children: [
                      const GoogleMap(
                        myLocationEnabled: true,
                        myLocationButtonEnabled: true,
                        zoomControlsEnabled: false,
                        initialCameraPosition: CameraPosition(
                          target: LatLng(30.033333, 31.233334),
                          zoom: 14,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyTextFormField(
                          hintText: 'بحث عن الموقع',
                          suffixWidget: IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: (){},
                          ),
                          textEditingController: search,
                        ),
                      ),

                      Positioned(
                       bottom: 0,
                        right: MediaQuery.of(context).size.width/3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: [
                                Text(
                                  'الرياض',
                                  style: AppStyles.bold16black,
                                ),
                                5.height,
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      'طريق الملك فهد، العليا، الرياض',
                                      style: AppStyles.bold12black,
                                    ),
          
                                  ],
                                ),
                                10.height,
                                // const DividerWidget(),
                                10.height,
                                InkWell(
                                  onTap: (){
                                     if(widget.isAddRequest)
                                       {
                                         context.pushNamed(Routes.addRequestScreen);
                                       }
                                     else
                                       {
                                         context.pushNamed(Routes.addAdvertiseFirstScreen);
                                       }
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: const BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.only(
                                            bottomRight: Radius.circular(20),
                                            topLeft: Radius.circular(20)
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Text('تأكيد',style: AppStyles.regular14White,),
                                          20.width,
                                          const Icon(Icons.arrow_forward,color: Colors.white,)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  
                  
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
TextEditingController search=TextEditingController();
