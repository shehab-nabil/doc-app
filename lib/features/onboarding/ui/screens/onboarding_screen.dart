import 'package:doctor_appointment_app/core/themes/styles.dart';
import 'package:doctor_appointment_app/features/onboarding/ui/widgets/doc_logo.dart';
import 'package:doctor_appointment_app/features/onboarding/ui/widgets/doctor_image_text.dart';
import 'package:doctor_appointment_app/features/onboarding/ui/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30.h, bottom: 30.h),
            child: Column(
              children: [
                const DocLogo(),
                SizedBox(
                  height: 30.h,
                ),
                const DoctorImageAndText(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8.0,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                        style: TextStyles.font13GrayRegular,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      const GetStartedButton(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
