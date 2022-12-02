import 'package:flutter/material.dart';
import 'package:flutter_application_1/base/widget/floating_action_button.dart';
import 'package:flutter_application_1/view/profile/widget/profile_bottom_widget.dart';
import 'package:flutter_application_1/view/profile/widget/profile_middle_widget.dart';

import '../widget/profile_top_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          ProfileTopWidget(),
          SizedBox(
            height: 38,
            
          ),
          ProfileMiddleWidget(),
          ProfileBottomWidget(),
          
        ],
      ),
    );
  }
}
