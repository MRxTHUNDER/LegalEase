import 'package:flutter/material.dart';
import 'package:legalease/consts/consts.dart';
import 'package:legalease/views/category/category_view.dart';
import 'package:legalease/views/home_view/home_view.dart';
import 'package:legalease/views/login_view/login_view.dart';
import 'package:legalease/views/setting_view/settings_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


   int selectedIndex = 0;
   List screenList = [
    const HomeView(),
    
    const CategoryView(),
    Container(),
    const LoginView(),
    const SettingsView()
   ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(selectedIndex),

      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white.withOpacity(0.4),
        selectedItemColor: AppColors.whitecolor,
        selectedLabelStyle: TextStyle(
          color: AppColors.whitecolor,
        ),
        selectedIconTheme: IconThemeData(
          color: AppColors.whitecolor
        ),
        backgroundColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value){
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        
        BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: "Appointment"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Lawyer"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
      ], ),
      
    );
  }
}
 