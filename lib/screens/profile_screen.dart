import 'package:material_ui/material_ui.dart';

import '../data/mock_data.dart';
import '../widgets/kloth_button.dart';
import '../widgets/product_catalog_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF8F7),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xFFC6C7C1),
                    width: 2,
                  ),
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(
                    MockData.profile.profileImageUrl,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              MockData.profile.username,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 4),
            Text(
              MockData.profile.email,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF454743),
              ),
            ),
            SizedBox(height: 12),
            Text(
              MockData.profile.bio,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF454743),
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, size: 14, color: Color(0xFF454743)),
                SizedBox(width: 4),
                Text(
                  MockData.profile.location,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF454743),
                  ),
                ),
                SizedBox(width: 16),
                Icon(Icons.link, size: 14, color: Color(0xFF454743)),
                SizedBox(width: 4),
                Text(
                  MockData.profile.website,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color(0xFF454743),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(color: Color(0xFFC6C7C1)),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ProfileStat(value: '4', label: 'Publicaciones'),
                ProfileStat(value: '1280', label: 'Seguidores'),
                ProfileStat(value: '342', label: 'Seguidos'),
                ProfileStat(value: '2', label: 'Reseñas'),
              ],
            ),
            SizedBox(height: 16),
            Divider(color: Color(0xFFC6C7C1)),
            SizedBox(height: 16),
            KlothButton(buttonName: 'Editar perfil'),
            SizedBox(height: 12),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.red,
                side: BorderSide(color: Colors.red),
                shape: StadiumBorder(),
                minimumSize: Size(double.infinity, 48),
              ),
              child: Text(
                'Cerrar sesión',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: ProfileTab(label: 'Publicaciones', selected: true),
                ),
                Expanded(
                  child: ProfileTab(
                    label: 'Artículos calificados',
                    selected: false,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ProductCatalogCard(
                    title: MockData.detailSuit.title,
                    category: MockData.detailSuit.categoryTag,
                    rating: MockData.detailSuit.averageRating.toString(),
                    reviews: MockData.detailSuit.reviewsCount.toString(),
                    imageUrl: MockData.detailSuit.imageUrl,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ProductCatalogCard(
                    title: MockData.detailVestido.title,
                    category: MockData.detailVestido.categoryTag,
                    rating: MockData.detailVestido.averageRating.toString(),
                    reviews: MockData.detailVestido.reviewsCount.toString(),
                    imageUrl: MockData.detailVestido.imageUrl,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ProductCatalogCard(
                    title: MockData.detailCozy.title,
                    category: MockData.detailCozy.categoryTag,
                    rating: MockData.detailCozy.averageRating.toString(),
                    reviews: MockData.detailCozy.reviewsCount.toString(),
                    imageUrl: MockData.detailCozy.imageUrl,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ProductCatalogCard(
                    title: MockData.detailAccesorios.title,
                    category: MockData.detailAccesorios.categoryTag,
                    rating: MockData.detailAccesorios.averageRating.toString(),
                    reviews: MockData.detailAccesorios.reviewsCount.toString(),
                    imageUrl: MockData.detailAccesorios.imageUrl,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileStat extends StatelessWidget {
  const ProfileStat({
    super.key,
    required this.value,
    required this.label,
  });

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 2),
        Text(
          label,
          style: TextStyle(
            fontSize: 11,
            color: Color(0xFF454743),
          ),
        ),
      ],
    );
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({
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
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: selected ? FontWeight.bold : FontWeight.w500,
            color: selected ? Color(0xFF020202) : Color(0xFF454743),
          ),
        ),
        SizedBox(height: 8),
        Container(
          height: 2,
          color: selected ? Color(0xFF020202) : Colors.transparent,
        ),
      ],
    );
  }
}
