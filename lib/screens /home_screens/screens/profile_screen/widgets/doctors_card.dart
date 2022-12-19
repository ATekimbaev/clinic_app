import 'package:flutter/material.dart';

import '../../../../../core/theme/app_colors.dart';
import '../../../../../core/theme/app_fonts.dart';

class DoctorsCard extends StatelessWidget {
  const DoctorsCard({
    Key? key,
    required this.img,
    required this.number,
  }) : super(key: key);

  final String img;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Container(
        color: AppColors.white,
        height: 76,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 56,
              backgroundImage: AssetImage(img),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Кардиолог $number',
                  style: AppFonts.w300s15,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Айбек Сатыбалдиев',
                  style: AppFonts.w500s15,
                ),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
            IconPlusText(),
            const SizedBox(
              width: 10,
            ),
            IconPlusText(),
          ],
        ),
      ),
    );
  }
}

class IconPlusText extends StatelessWidget {
  const IconPlusText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.star),
        const SizedBox(
          height: 8,
        ),
        Text('5.0'),
      ],
    );
  }
}
