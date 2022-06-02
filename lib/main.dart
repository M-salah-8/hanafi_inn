import 'package:flutter/material.dart';
import 'package:hanafi_inn/injection.dart';
import 'package:hanafi_inn/presentation/app_widget.dart';
import 'package:injectable/injectable.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  runApp(AppWidget());
}
