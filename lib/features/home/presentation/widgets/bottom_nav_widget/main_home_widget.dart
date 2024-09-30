import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realestate/core/helpers/extension.dart';

import '../tap_bar_listview.dart';
import '../top_bar_widget.dart';

class MainHomeWidget extends StatelessWidget {
  const MainHomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          10.height,
          const TopBarWidget(),
          15.height,
          const TapBarListView(),
           const Expanded(
            child: GoogleMap(
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              zoomControlsEnabled: true,
              initialCameraPosition: CameraPosition(
                target: LatLng(30.033333, 31.233334),
                zoom: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}