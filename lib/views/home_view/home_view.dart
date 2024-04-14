import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/routes/get_transition_mixin.dart';
import 'package:legalease/consts/colors.dart';
import 'package:legalease/consts/consts.dart';
import 'package:legalease/consts/images.dart';
import 'package:legalease/consts/list.dart';
import 'package:legalease/res/components/custom_textfield.dart';
import 'package:legalease/views/constituition_schedules/about_Schedule.dart';
import 'package:legalease/views/laywer/laywer_dec.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0.0,
        title: AppStyles.bold(
            title: "${Appstrings.welcome} User",
            color: AppColors.whitecolor,
            size: AppSizes.size20),
      ),
      body: Column(
        children: [
          Container(
            color: AppColors.primaryColor,
            padding: EdgeInsets.all(8),
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
                Expanded(
                  child: CustomTextField(             
                  hint: Appstrings.search,
                  borderColor: AppColors.whitecolor,
                  textColor: AppColors.whitecolor,
                              ),
                ),
                10.widthBox,
                IconButton(onPressed: () {}, icon: Icon(Icons.search, color: AppColors.whitecolor,))
              ]
            ),
            

          ),
          10.heightBox,
          
          Container( padding: EdgeInsets.only(left: 5), 
          child:  Align(alignment: Alignment.topLeft, child: AppStyles.normal(title:" Category ", color: AppColors.blueColor, size: AppSizes.size18, ),)),
          10.heightBox,
          
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 130,
                    
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 9,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                padding: const EdgeInsets.all(8),
                                margin: const EdgeInsets.only(right: 8),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      iconList[index],
                                      width: 75,
                                      //fit: BoxFit.fill
                                      
                                      //color: AppColors.whitecolor,
                                    ),
                                    const Divider(
                                      color: Color.fromARGB(255, 187, 39, 39),
                                    ),
                                    //5.heightBox,
                                    AppStyles.normal(
                                        title: iconsTitleList[index],
                                        color: AppColors.whitecolor)
                                  ],
                                )),
                          );
                        }),
                  ),
                  10.heightBox,
                  Align(alignment: Alignment.topLeft, child: AppStyles.normal(title:" Laywer's ", color: AppColors.blueColor, size: AppSizes.size18, ),),
                  10.heightBox,

                  SizedBox(
                    height: 185, 
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(

                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 239, 236, 236),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            margin: const EdgeInsets.only(right: 12),
                            // color: Colors.blue,
                            height: 100,
                            width: 150,
                            child: Column(
                              children:  [
                                
                                Container(
                                  width: 150,
                                  alignment: Alignment.center,
                                  color: AppColors.blueColor,
                                  

                                  child: Image.asset(AppAssets.imglaw1,
                                width: 130,
                                fit: BoxFit.cover,),
                                ),
                                

                                5.heightBox,
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => DetailsView());
                                  }, 
                                  child: AppStyles.normal(title: "Laywer Name"),
                                ),
                                

                                5.heightBox,
                                AppStyles.normal(title: "Speciality"),
                              
                              ],
                              
                            ),
                          );
                        }),
                  ),
                  5.heightBox,
                  GestureDetector(
                    onTap: () {

                    },
                    child: Align(
                    alignment: Alignment.centerRight, 
                    child: AppStyles.normal(title:" View all ", 
                    color: AppColors.blueColor)
                    ,)),
                  
                  5.heightBox,
                  Align(alignment: Alignment.topLeft, child: AppStyles.normal(title:" Constitution Schedules ", color: AppColors.blueColor, size: AppSizes.size18, ),),
                  10.heightBox,

                  SizedBox(
                    height: 135, 
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                        itemCount: 12,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(

                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 239, 236, 236),
                              borderRadius: BorderRadius.circular(15)
                            ),
                            margin: const EdgeInsets.only(right: 12),
                            // color: Colors.blue,
                            height: 50,
                            width: 100,
                            child: Column(
                              children:  [
                                
                                Container(
                                  width: 100,
                                  alignment: Alignment.center,
                                  color: AppColors.blueColor,
                                  

                                child: Image.asset(AppAssets.imgSche,
                                width: 90,
                                fit: BoxFit.cover,),
                                ),
                                
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() => ConstitutionApp());
                                  }, 
                                  child: AppStyles.normal(title: "Schedule Number"),
                                ),                                              
                              
                              ],
                              
                            ),
                          );
                        }),
                  ),
                  
          
          
                ],
              ))
        ],
      ),
    );
  }
}
