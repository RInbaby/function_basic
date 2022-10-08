import 'package:blocbase/app/modules/auths/login.dart';
import 'package:flutter/material.dart';

import '../../common/core/constants/app_constants.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConst.appName,
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   inputDecorationTheme: AppFormField.inputDecorationTheme,
      // ),
      // localizationsDelegates: const [
      //   GlobalMaterialLocalizations.delegate,
      // ],
      // supportedLocales: const [
      //   Locale('en', ''),
      //   Locale('vi', ''),
      // ],
      home: LogIn(),
    );
  }
}
