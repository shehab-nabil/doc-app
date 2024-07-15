import 'package:doctor_appointment_app/core/routing/app_router.dart';
import 'package:doctor_appointment_app/core/routing/routes.dart';
import 'package:doctor_appointment_app/core/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocApp extends StatelessWidget {
  final AppRouter appRouter;
  const DocApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
        ),
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoardingScreen,
      ),
    );
  }
}
