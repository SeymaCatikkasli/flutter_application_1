import 'package:flutter/material.dart';

import '../../../base/widget/property_person.dart';
import '../../../base/widget/vertical_divider.dart';
import '../model/size_model.dart';


class ProfileMiddleWidget extends StatelessWidget {
  const ProfileMiddleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        personelProperty(),
        testProperty(),
      ],
    );
  }

  ListView personelProperty() {
    return ListView.separated(
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return columnData(index);
        }),
        separatorBuilder: ((context, index) => const VerticalSpecialDivider()),
        itemCount: sizeList.length);
  }

  Column columnData(int index) {
    return Column(
          children: [
            MyText(
              data: sizeList[index].title,
              fontSize: 16,
            ),
            MyText(
              data: sizeList[index].subTitle,
              fontSize: 14,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
            const SizedBox(
              width: 100,
            )
          ],
        );
  }

  Row testProperty() {
    return Row(
        children: sizeList.map((e) {
      return Row(
        children: [
          Column(
            children: [
              MyText(
                data: e.title,
                fontSize: 16,
              ),
              MyText(
                data: e.subTitle,
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
              const SizedBox(
                width: 100,
              ),
            ],
          ),
          const VerticalSpecialDivider()
        ],
      );
    }).toList());
  }
}
