import 'package:femispace/core/constants/app_colors.dart';
import 'package:femispace/core/constants/app_text_styles/nutritions_text_styles.dart';
import 'package:flutter/material.dart';

class NutritionsView extends StatelessWidget {
const NutritionsView({ super.key });

  @override
  Widget build(BuildContext context){
    final appColors=AppColors(context:context );
    final textStyles=NutritionsTextStyles(appColors:appColors );
    return SafeArea(
      
      child: Scaffold(
        body: _buildBody(nutritionsTextStyles:textStyles, appColors: appColors ),
      ),
    );
  }

  Widget _buildBody({
    required AppColors appColors,
    required NutritionsTextStyles nutritionsTextStyles}){
    return ListView(
      children: [Container(
        
        color: Colors.green,
        child: Column(children: [
          Text('Nutritions',style: nutritionsTextStyles.titleTextStyle,),
          SizedBox(height: 20,),
       GridView.builder(
        padding: EdgeInsets.all(20),
        shrinkWrap: true,
        itemCount: 4,
        gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
        childAspectRatio: 1,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        
        
        ) , itemBuilder: (context,index){
          return Container(
            
             decoration: BoxDecoration(
      color: Colors.red,
      borderRadius:
          BorderRadius.circular(16),
    ));
        })

        ],),
      )],

      
    );

     

  }
}