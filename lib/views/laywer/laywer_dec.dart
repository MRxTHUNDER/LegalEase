import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:legalease/consts/consts.dart';
import 'package:legalease/res/components/custum_button.dart';
import 'package:legalease/views/appointment/lawyer_appointment.dart';

// void main() {
//   runApp(DetailsView());
// }

class DetailsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        title: AppStyles.bold(title: "Lawyer Name", color: AppColors.whitecolor, size: AppSizes.size18),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
        
            
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Image.asset(AppAssets.imglaw1) ),
                      10.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppStyles.bold(title: "Ram Jethmalani", color: AppColors.textColor, size: AppSizes.size14),
                          AppStyles.bold(
                            title: "Criminal Lawyer", color: AppColors.textColor, size: AppSizes.size12),
                            const Spacer(),
                            AppStyles.bold(title: "Charges ₹300", color: AppColors.textColor, size: AppSizes.size14),
        
                          const Spacer(),
                          VxRating(onRatingUpdate: (value){},
                          selectionColor: AppColors.yellowColor,
                          maxRating: 5,
                          count: 5,
                          value: 4,
                          stepInt: true, )
                        ],
                      ),
                    ),
                    
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        AppStyles.bold(title: "See all", color: AppColors.blueColor, size: AppSizes.size14),], 
                    )
                    
                ]),
              ),
            10.heightBox,  
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.whitecolor,
              ),
        
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: AppStyles.bold(title: "Number", color: AppColors.textColor),
                    subtitle: AppStyles.normal(title: "+91-987456321", color: AppColors.textColor.withOpacity(0.5), size: AppSizes.size14),
                    trailing: Container(
                      width: 50,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.yellowColor,
                      ),
                      child: Icon(Icons.phone, color: AppColors.whitecolor,)
                      
                      ,),
                    
                  ),
                    
                  10.heightBox,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppStyles.bold(title: "About", color: AppColors.textColor, size: AppSizes.size16, ),
                  AppStyles.bold(title: "Ram Boolchand Jethmalani was one of India’s most well-known lawyers. He was a man with a wide range of abilities and difficulties. At the age of 17, he graduated from the Government Law College in Mumbai with an LLB degree." 
                          "He went on to earn an LLM credential from SC Shahani Law School in Karachi.  Ram Jethmalani was India’s most well-known criminal lawyer. He served as India’s Minister of Union Law and President of the Indian Bar Committee." 
                          "In 2010, he was elected President of the Supreme Court Bar Association. His fee was estimated to be about Rs. 25 lakh, putting him at the top of the list as the most expensive lawyer of his time."
                          , color: AppColors.textColor.withOpacity(0.7), size: AppSizes.size12),
                    ],
                  ),
                  
                    
                  10.heightBox,
                  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppStyles.bold(title: "Address", color: AppColors.textColor, size: AppSizes.size16),
                          5.heightBox,
                          AppStyles.bold(title: "location", color: AppColors.textColor.withOpacity(0.5), size: AppSizes.size12),
                          ], 
                      ),
                  
                ],
                
              ),
            ),
            
        
            ), 
            
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(8),
        child: CustomButton(buttonText: "Book an Appointment", onTap: (){
          Get.to(()=> const AppointmentView());
        }, ))
    );
  }
}


