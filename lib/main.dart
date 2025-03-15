import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gift_fund/src/app.dart';
import 'package:gift_fund/src/common/local_notifications.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await LocalNotifications.init();
      runApp(
        const MyApp(),
      );
    },
    (Object e, StackTrace stackTrace) =>
        log("error: $e, stackTrace: $stackTrace"),
  );
}
