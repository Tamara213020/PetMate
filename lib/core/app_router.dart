import 'package:flutter/material.dart';
import '../screens/add_pet/add_pet_screen.dart';
import '../screens/find_partner_screen.dart';
import '../screens/login/login_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/pet_details/pet_details_screen.dart';

import '../screens/pet_list/pet_list_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/register/register_screen.dart';
// import '../screens/pet_details/pet_details_screen.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/pet-list':
        return MaterialPageRoute(builder: (_) => PetListScreen());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case '/add-pet':
        return MaterialPageRoute(builder: (_) => AddPetScreen());
      case '/find-partner':
        return MaterialPageRoute(builder: (_) => FindPartnerScreen());
      case '/pet-details':
        return MaterialPageRoute(builder: (_) => PetDetailsScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
