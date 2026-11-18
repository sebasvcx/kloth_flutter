import 'package:material_ui/material_ui.dart';

import 'detail_screen.dart';
import 'explore_screen.dart';
import 'feed_screen.dart';
import 'login_screen.dart';
import 'profile_screen.dart';
import 'register_screen.dart';

class ScreenPicker extends StatelessWidget {
  const ScreenPicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF8F7),
      appBar: AppBar(
        title: Text('KLOTH'),
        backgroundColor: Color(0xFFFCF8F7),
        foregroundColor: Color(0xFF020202),
        elevation: 0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ScreenTile(title: 'Login', screen: LoginScreen()),
          SizedBox(height: 8),
          ScreenTile(title: 'Register', screen: RegisterScreen()),
          SizedBox(height: 8),
          ScreenTile(title: 'Feed', screen: FeedScreen()),
          SizedBox(height: 8),
          ScreenTile(title: 'Explore', screen: ExploreScreen()),
          SizedBox(height: 8),
          ScreenTile(title: 'Item Detail', screen: DetailScreen()),
          SizedBox(height: 8),
          ScreenTile(title: 'Profile', screen: ProfileScreen()),
        ],
      ),
    );
  }
}

class ScreenTile extends StatelessWidget {
  const ScreenTile({
    super.key,
    required this.title,
    required this.screen,
  });

  final String title;
  final Widget screen;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Color(0xFFC6C7C1)),
      ),
      title: Text(title),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => screen),
        );
      },
    );
  }
}
