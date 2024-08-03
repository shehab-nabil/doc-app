import 'package:doctor_appointment_app/core/helper/extensions.dart';
import 'package:doctor_appointment_app/core/routing/routes.dart';
import 'package:doctor_appointment_app/core/themes/colors.dart';
import 'package:doctor_appointment_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment_app/features/login/logic/cubit/login_state.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/setup_error_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Error || current is Success,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          },
          failure: (error) {
            // context.pop();
            setupErrorState(context, error);
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
