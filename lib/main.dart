import 'package:material_ui/material_ui.dart';

import 'screens/screen_picker.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenPicker(),
    );
  }
}
