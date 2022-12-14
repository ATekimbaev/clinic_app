import 'package:clinic_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_fonts.dart';
import '../home_screens/bottom_navigation.dart';

class CreateProfileScreen extends StatelessWidget {
  CreateProfileScreen({super.key});
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerLastName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: AppColors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.close,
            color: AppColors.blackWithOpacity54,
          ),
        ),
        title: const Text(
          'Создание профиля',
          style: AppFonts.w600s17,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NameTextField(
              hintText: 'Введите ваше имя',
              lable: 'Имя',
              controller: controllerName,
            ),
            const SizedBox(
              height: 32,
            ),
            NameTextField(
              hintText: 'Введите вашу фамилию',
              lable: 'Фамилия',
              controller: controllerLastName,
            ),
            const SizedBox(
              height: 150,
            ),
            Center(
              child: AppButton(
                title: 'Далее',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class NameTextField extends StatelessWidget {
  const NameTextField({
    Key? key,
    required this.lable,
    required this.hintText,
    required this.controller,
  }) : super(key: key);
  final String lable;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGrey),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGrey),
          ),
          border: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.darkGrey),
          ),
          label: Text(
            lable,
            style: AppFonts.w400s15,
          ),
          hintText: hintText),
    );
  }
}
