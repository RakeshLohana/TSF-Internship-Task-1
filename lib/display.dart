import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tsf_task_1/constants.dart';
import 'package:tsf_task_1/home.dart';

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
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Lottie.asset('assets/animation.json'),
        SizedBox(
         height: height * 0.06,
        ),
        SizedBox(
          height: height * 0.06,

           width: width * 0.6,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
            },
            style: ButtonStyle(
            
              backgroundColor:
                  MaterialStateProperty.all(AppColor.backgroundColor),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,
                  color: AppColor.iconColorWhite,
                ),
                SizedBox(width: 10,),
                Text(
                  'Display Users',
                  style: TextStyle(color: AppColor.textColorWhite,fontSize: 20),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
