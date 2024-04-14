import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:legalease/consts/consts.dart';
import 'package:legalease/consts/list.dart';
import 'package:legalease/views/laywer/laywer_dec.dart';



class CategoryLawyer extends StatelessWidget{
  const CategoryLawyer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Children Rights in Indian Constitution',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoryLawyerScreen(),
    );
  }

}

class CategoryLawyerScreen extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        backgroundColor: AppColors.primaryColor,

        title: AppStyles.bold(title: "Category Name", size: AppSizes.size20, color: AppColors.whitecolor),


      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          mainAxisExtent: 210,
          crossAxisSpacing: 8
          ), 
          itemCount: 10,
          itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: EdgeInsets.all(10),
              child: Container(
            
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 239, 236, 236),
                                borderRadius: BorderRadius.circular(15)
                              ),
                              margin: const EdgeInsets.only(right: 12),
                              // color: Colors.blue,
                              height: 90,
                              width: 150,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                  VxRating(
                                  onRatingUpdate: (value){},
                                  selectionColor: AppColors.yellowColor,
                                  maxRating: 5,
                                  count: 5,
                                  value: 4,
                                  stepInt: true, 
                                  )
                                  //AppStyles.normal(title: "Speciality"),
                                
                                ],
                                
                              ),
                            ),
            );
          }
      ),
    );
  }
}