import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:legalease/consts/consts.dart';
import 'package:legalease/consts/list.dart';



class ChildernRights extends StatelessWidget{
  const ChildernRights({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Children Rights in Indian Constitution',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChildrenRightsScreen(),
    );
  }

}
  class ChildrenRightsScreen extends StatelessWidget {
  final List<String> childrenRightsSubParts = [
    'Right to Education',
    'Protection from Exploitation',
    'Protection from Trafficking and Forced Labor',
    'Protection of Interests of Minorities',
    'Special Provisions for Scheduled Castes and Tribes',
    'Protection of Juvenile Justice',
    'Right to Nutrition and Health',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: AppColors.primaryColor,

        title: AppStyles.bold(title: Appstrings.child, size: AppSizes.size20, color: AppColors.whitecolor),


      ),
       body: ListView.builder(
        itemCount: childrenRightsSubParts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(childrenRightsSubParts[index]),
            //leading: Icon(Icons.child_care),
          );
        },
      ),
      );
  }
}