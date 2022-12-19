import 'package:clinic_app/core/images/images.dart';
import 'package:clinic_app/core/theme/app_colors.dart';
import 'package:clinic_app/core/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../profile_screen/widgets/doctors_card.dart';

class DoctorsScreen extends StatelessWidget {
  DoctorsScreen({super.key});

  final List numbers = [for (int i = 0; i <= 4; i++) i];

  final List<String> img = [
    AppImgaes.abstact,
    AppImgaes.bell,
    AppImgaes.hospital,
    AppImgaes.car,
    AppImgaes.clipboard,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: numbers.length,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return DoctorsCard(img: img[index], number: numbers[index]);
          },
        ),
      ),
    );
  }
}
