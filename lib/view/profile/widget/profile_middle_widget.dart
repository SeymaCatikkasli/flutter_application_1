import 'package:flutter/material.dart';

import '../../../base/widget/my_text.dart';
import '../../../base/widget/vertical_divider.dart';
import '../model/size_model.dart';

class ProfileMiddleWidget extends StatelessWidget {
  const ProfileMiddleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 36,
        child: personelProperty());
  }

  ListView personelProperty() {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Row(
            children: [
              const SizedBox(
                width: 38,
              ),
              columnData(index),
              const SizedBox(
                width: 38,
              )
            ],
          );
        }),
        separatorBuilder: ((context, index) => const VerticalSpecialDivider(
              color: Color(0xffdddddd),
              height: 2,
            )),
        itemCount: sizeList.length);
  }

  Column columnData(int index) {
    return Column(
      children: [
        MyText(
          data: sizeList[index].subTitle,
          fontSize: 16,
        ),
        MyText(
          data: sizeList[index].title,
          fontSize: 14,
          color: Colors.grey,
          fontWeight: FontWeight.w400,
        ),
      ],
    );
  }
}
