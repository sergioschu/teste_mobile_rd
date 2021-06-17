import 'dart:io' show Platform;
import 'package:flutter/widgets.dart';

import 'android/app.dart';
import 'ios/app.dart';

void main() => Platform.isIOS ? runApp(IOSApp()) : runApp(AndroidApp());