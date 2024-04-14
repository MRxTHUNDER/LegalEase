import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:legalease/consts/consts.dart';
import 'package:legalease/consts/list.dart';

class SettingsView extends StatelessWidget {
  const SettingsView ({super.key});

  @override
  Widget build (BuildContext context){
    return Scaffold(

      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.primaryColor,
      
        title: AppStyles.bold(title:  "Settings" , size: AppSizes.size20, color: AppColors.whitecolor),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(child: Image.asset(AppAssets.imglaw1)),
            title: AppStyles.bold(title: "Username"),
            subtitle: AppStyles.normal(title: "user_email@gmail.com"),
          ),
          ListTile (
            leading: CircleAvatar(child: Image.asset(AppAssets.icHuman)),
            title: AppStyles.bold(title: "Add Account"),
          
          ),

          const Divider(),

          10.heightBox,
          ListView(
            shrinkWrap: true,
            children: List.generate(settingList.length, (index) => 
            ListTile(
              onTap: (){},
              //leading: Icon(settingListIcon[index] , color: AppColors.bgColor,),
              title: AppStyles.bold(
                title: settingList[index]),)),
          )
        ],

      ),
    );
  }
}