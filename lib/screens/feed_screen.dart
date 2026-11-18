import 'package:material_ui/material_ui.dart';

import '../data/mock_data.dart';
import '../widgets/post_card.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF8F7),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: Row(
                children: [
                  FeedTab(label: 'Siguiendo', selected: false),
                  SizedBox(width: 16),
                  FeedTab(label: 'Para ti', selected: true),
                ],
              ),
            ),
            Divider(height: 1, color: Color(0xFFC6C7C1)),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 16),
                children: [
                  PostCard(post: MockData.posts[0]),
                  PostCard(post: MockData.posts[1]),
                  PostCard(post: MockData.posts[2]),
                  PostCard(post: MockData.posts[3]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FeedTab extends StatelessWidget {
  const FeedTab({
    super.key,
    required this.label,
    required this.selected,
  });

  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: selected ? FontWeight.bold : FontWeight.w500,
            color: selected ? Color(0xFF020202) : Color(0xFF454743),
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 2,
          width: 64,
          color: selected ? Color(0xFF020202) : Colors.transparent,
        ),
      ],
    );
  }
}
