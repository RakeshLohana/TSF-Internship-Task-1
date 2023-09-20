import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tsf_task_1/Utils/constants.dart';
import 'package:tsf_task_1/Screens/home.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
    
  @override
  Widget build(BuildContext context) {
      double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(

      backgroundColor: AppColor.backgroundContainer,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      
       children: [
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 10),
         child: SizedBox(
         height: 85,
         child: DefaultTextStyle(
           style: TextStyle(
             color: AppColor.backgroundColor,
             fontSize: 35,
             fontWeight: FontWeight.w800
           ),
           child: AnimatedTextKit(
             repeatForever: true,
             isRepeatingAnimation: true,
             animatedTexts: [
          TyperAnimatedText('Basic Banking App,'),
          TyperAnimatedText('Transfer Money'),
           TyperAnimatedText('Check User Account.'),


             ],
           ),
         ),
       ),
       ),

 
SizedBox(height: 10,),
        Lottie.asset('assets/animation.json'),
        SizedBox(
         height: height * 0.06,
        ),
        GestureDetector(
           onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
            },
          child: Container(
                 height: height * 0.068,

         width: width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.backgroundColor

            ),
           
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  
                  Icons.person,
                  color: AppColor.iconColorWhite,
                  size: 28,
            
                ),
                SizedBox(width: 10,),
                Text(
                  'Display Users',
                  style: TextStyle(color: AppColor.textColorWhite,fontSize: 24,fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
