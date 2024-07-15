import 'package:doctor_appointment_app/core/helper/extensions.dart';
import 'package:doctor_appointment_app/core/routing/routes.dart';
import 'package:doctor_appointment_app/core/themes/colors.dart';
import 'package:doctor_appointment_app/core/themes/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: MaterialStateProperty.all<Size>(
            const Size(
              double.infinity,
              52,
            ),
          ),
          shape: const MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(16),
              ),
            ),
          ),
        ),
        child: Text(
          "Get Started",
          style: TextStyles.font16WhiteSemiBold,
        ));
  }
}
