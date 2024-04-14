import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:legalease/consts/consts.dart';
import 'package:legalease/consts/list.dart';
import 'package:legalease/views/category/category_lawyer_details.dart';
import 'package:legalease/views/category/children_rights.dart';

class CategoryView extends StatelessWidget{
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0.0,
        backgroundColor: AppColors.primaryColor,
      
        title: AppStyles.bold(title:  "Rights Category" , size: AppSizes.size20, color: AppColors.whitecolor), 
      ),
      body: Padding(
      
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 200,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ), 
        itemCount: iconList.length,
        itemBuilder: (BuildContext context, int index){
        return GestureDetector(
          onTap: () {
            Get.to(() => const CategoryLawyer());
          } ,
          child: Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),         
            color: Color.fromARGB(255, 131, 129, 129),
            ),
        
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align (
                alignment: Alignment.center,
                child :Image.asset(iconList[index], height: 100, width: 100, 
                ),
                ),
                const Divider(
                  color: Colors.white,
                  indent: 10,
                  endIndent: 10,
                  thickness: 1,
                ),
                
                
                
                //10.heightBox,
        
                Container(
                  padding: EdgeInsets.all(10),
                  //width: 10,
                  child: AppStyles.bold(title: iconsTitleList[index], color: AppColors.whitecolor, size: AppSizes.size18, ),
                ),
                
        
                Container(
                  padding: EdgeInsets.all(10),
                  //width: 10,
                  child: AppStyles.normal(title: "No. of Lawyer's ", color: AppColors.whitecolor, size: AppSizes.size16),
                ),
                            
                      
                  
              ],
            )
          ),
        );
        }
        )
      ) 
        );
    
  }
}