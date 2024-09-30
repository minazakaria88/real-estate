import 'package:flutter/material.dart';
import 'package:realestate/core/routing/app_routes.dart';
import 'package:realestate/core/utils/app_theme.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
 // await FirebaseApi().getNotification();
  runApp(const RealEstate());
}

class RealEstate extends StatelessWidget {
  const RealEstate({super.key});

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.ltr,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        title: '',
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}

