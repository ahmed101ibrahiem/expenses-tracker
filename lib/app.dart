

import 'package:expenses_tracker/screens/root/root_import.dart';
import 'package:expenses_tracker/utils/constants.dart';
import 'package:expenses_tracker/utils/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
       designSize: AppConstant.designSize,
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppConstant.appName,
        theme: MyTheme.appTheme,
        home: const RootView(),
      ),
    );
  }
}