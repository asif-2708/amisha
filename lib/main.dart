import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Amisha/utils/themes.dart';
import 'package:Amisha/providers/theme_provider.dart';
import 'package:Amisha/hotel_app.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown])
      .then((_) => runApp(_setAllProviders()));
}

Widget _setAllProviders() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(
          state: AppTheme.getThemeData,
        ),
      ),
    ],
    child: HotelApp(),
  );
}
