import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/profile/widget/person_image_widget.dart';

class ProfileTopWidget extends StatelessWidget {
  const ProfileTopWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const SizedBox(
         height: 39,
       ),
        IconButton(
          onPressed: () {
            var test = MediaQuery.of(context).devicePixelRatio;
            log('$test');

          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        
        Container(
          alignment: Alignment.topCenter,
          child: Column(
            
            children: const [
              SizedBox(height: 21,),
              PersonImageWidget(),
              SizedBox(height: 8,),
              Text("Jenny Wilson",
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    color: Color(0xff000000),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal,
                  )),
              SizedBox(height: 4,),
              Text("Beginner",
                  style: TextStyle(
                    fontFamily: 'Ubuntu',
                    color: Color(0xffaaaaaa),
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  )),
                
            ],
          ),
          
        ),
      ],
    );
  }
}