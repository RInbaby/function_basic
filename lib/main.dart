
import 'package:blocbase/app/modules/app.dart';
import 'package:flutter/material.dart';

import 'bootstrap.dart';

final GlobalKey<NavigatorState> navigator = GlobalKey();
void main() => bootstrap(() => const App());

