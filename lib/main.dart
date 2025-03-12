import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gift_fund/src/app.dart';

void main() {
  runZonedGuarded(
    () => runApp(
      const MyApp(),
    ),
    (Object e, StackTrace stackTrace) =>
        log("error: $e, stackTrace: $stackTrace"),
  );
}
