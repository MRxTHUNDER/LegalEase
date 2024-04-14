import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:legalease/consts/colors.dart';
import 'package:legalease/consts/consts.dart';
import 'package:legalease/consts/fonts.dart';
import 'package:legalease/res/components/custom_textfield.dart';
import 'package:legalease/res/components/custum_button.dart';

class AppointmentView extends StatelessWidget {
  const AppointmentView ({super.key});


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: AppColors.primaryColor,
        title: AppStyles.bold(title: "Lawyer Name", size: AppSizes.size20, color: AppColors.whitecolor),

      ),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppStyles.bold(title: "Select Appointment Day"),
              5.heightBox,
              CustomTextField(hint: "Select Date",),
              10.heightBox,
        
              AppStyles.bold(title: "Select Appointment Time"),
              5.heightBox,
              CustomTextField(hint: "Select Time",),
              20.heightBox,
        
              AppStyles.bold(title: "Mobile Bumber:"),
              5.heightBox,
              CustomTextField(hint: "Enter your Mobile Number",),
              10.heightBox,
        
              AppStyles.bold(title: "Full Name:"),
              5.heightBox,
              CustomTextField(hint: "Enter your Name",),
              10.heightBox,
        
        
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8),
        child: CustomButton(buttonText: "Book Appointment", onTap: (){
          //Get.to(()=> const AppointmentView());
        }, )),

    );
  }
}