import 'dart:async';

import 'package:blocbase/common/system_chrome_extension.dart';
import 'package:flutter/material.dart';
import 'package:sp_util/sp_util.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  await SpUtil.getInstance();

  await SystemChromeExtension.allowVerticalPortraitOnly();

  await SystemChromeExtension.makeSystemOverlaysDisplayedPermanently();

  runApp(await builder());
}