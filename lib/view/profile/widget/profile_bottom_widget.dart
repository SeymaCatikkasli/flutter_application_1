import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/widget/property_icon.dart';
import 'package:flutter_application_1/base/widget/my_text.dart';
import 'package:flutter_svg/svg.dart';

const String file = 'lib/assets/file.svg';
const String chart = 'lib/assets/chart.svg';
const String logout = 'lib/assets/logout.svg';
const String star = 'lib/assets/star.svg';
const String warning = 'lib/assets/warning.svg';

class ProfileBottomWidget extends StatelessWidget {
  const ProfileBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            ListTile(
              title: const MyText(data: 'General',fontSize: 16,),
              subtitle: const MyText(data: 'Account and Synchronization',fontSize: 14,fontWeight:FontWeight.w400,color:Colors.grey,),
              leading: SvgPicture.asset(file),
              trailing: const MyIcon(iconProperty:Icons.arrow_forward_ios_rounded),
            ),
            
             ListTile(
              title: const MyText(data: 'Productivity',fontSize: 16,),
              subtitle: const MyText(data: 'Plan and goals',fontSize: 14,fontWeight:FontWeight.w400,color:Colors.grey,),
              leading: SvgPicture.asset(chart),
              trailing: const MyIcon(iconProperty:Icons.arrow_forward_ios_rounded),
            ),
           const Divider(color: Color(0xfffafafa),height: 1,),
              ListTile(
              title: const MyText(data: 'Upgrade to premium',fontSize: 16,),
              subtitle: const MyText(data: 'Get mores features',fontSize: 14,fontWeight:FontWeight.w400,color:Colors.grey,),
              leading: SvgPicture.asset(star),
              trailing: const MyIcon(iconProperty:Icons.arrow_forward_ios_rounded),
            ),
            
              ListTile(
              title: const MyText(data: 'About',fontSize: 16,),
              subtitle: const MyText(data: 'Tearms and conditions',fontSize: 14,fontWeight:FontWeight.w400,color:Colors.grey,),
              leading: SvgPicture.asset(warning),
              trailing: const MyIcon(iconProperty:Icons.arrow_forward_ios_rounded),
            ),
           const Divider(color: Color(0xfffafafa),height: 1,),
              ListTile(
              title: const MyText(data: 'Logout',fontSize: 16,),
              trailing: const MyIcon(iconProperty:Icons.arrow_forward_ios_rounded),
              leading: SvgPicture.asset(logout),
              
            ),
          ],
        ),
      ],
    );
  }
}
