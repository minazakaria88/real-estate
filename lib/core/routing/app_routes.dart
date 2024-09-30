import 'package:flutter/material.dart';
import 'package:realestate/core/routing/routes.dart';
import 'package:realestate/features/home/presentation/pages/add_advertise_first_screen.dart';
import 'package:realestate/features/home/presentation/pages/add_advertise_second_screen.dart';
import 'package:realestate/features/home/presentation/pages/add_request_screen.dart';
import 'package:realestate/features/home/presentation/pages/company_screen.dart';
import 'package:realestate/features/home/presentation/pages/home_screen.dart';
import 'package:realestate/features/home/presentation/pages/owners_screen.dart';
import 'package:realestate/features/home/presentation/pages/pick_location_screen.dart';
import 'package:realestate/features/home/presentation/widgets/bottom_nav_widget/building_details_screen.dart';
import 'package:realestate/features/home/presentation/widgets/bottom_nav_widget/chat_details_screen.dart';
import 'package:realestate/features/home/presentation/widgets/bottom_nav_widget/edit_profile_second_screen.dart';
import 'package:realestate/features/home/presentation/widgets/bottom_nav_widget/special_publish.dart';
import 'package:realestate/features/login/presentation/pages/login_screen.dart';
import 'package:realestate/features/login/presentation/pages/register_screen.dart';
import 'package:realestate/features/search/presentation/pages/search_result_screen.dart';
import 'package:realestate/features/search/presentation/pages/search_screen.dart';
import 'package:realestate/features/splash/splash_screen.dart';

class AppRoutes {
 static Route onGenerateRoute(RouteSettings settings) {
   var arguments=settings.arguments;
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.company:
        return MaterialPageRoute(
          builder: (context) => const CompanyScreen(),
        );
      case Routes.owner:
        return MaterialPageRoute(
          builder: (context) => const OwnerScreen(),
        );
      case Routes.chatDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => const ChatDetailsScreen(),
        );
      case Routes.buildingDetails:
        return MaterialPageRoute(
          builder: (context) => const BuildingDetailsScreen(),
        );
      case Routes.pickLocationScreen:
        return MaterialPageRoute(
          builder: (context) =>  PickLocationScreen(isAddRequest: arguments as bool,),
        );
      case Routes.moreDetailsScreen:
        return MaterialPageRoute(
          builder: (context) => const SpecialPublish(),
        );
      case Routes.register:
        return MaterialPageRoute(
          builder: (context) => const RegisterScreen(),
        );
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case Routes.searchResult:
        return MaterialPageRoute(
          builder: (context) => const SearchResultScreen(),
        );
      case Routes.editProfile:
        return MaterialPageRoute(
          builder: (context) => const EditProfileSecondScreen(),
        );
      case Routes.addAdvertiseFirstScreen:
        return MaterialPageRoute(
          builder: (context) => const AddAdvertiseFirstScreen(),
        );
      case Routes.addAdvertiseSecondScreen:
        return MaterialPageRoute(
          builder: (context) => const AddAdvertiseSecondScreen(),
        );
      case Routes.search:
        return MaterialPageRoute(
          builder: (context) => const SearchScreen(),
        );
      case Routes.addRequestScreen:
        return MaterialPageRoute(
          builder: (context) => const AddRequestScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) =>
              const Scaffold(body: Center(child: Text('Page not found'))),
        );
    }
  }
}
