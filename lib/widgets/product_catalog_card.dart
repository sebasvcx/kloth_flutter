import 'package:flutter/material.dart';

class ProductCatalogCard extends StatelessWidget {
  const ProductCatalogCard({
    super.key,
    required this.title,
    required this.category,
    required this.rating,
    required this.reviews,
    required this.imageUrl,
  });

  final String title;
  final String category;
  final String rating;
  final String reviews;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(
            imageUrl,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 12),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          decoration: BoxDecoration(
            color: Color(0xFF8B8B8B),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            category,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 4),
        Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 16,
            color: Color(0xFF1C1B1B),
          ),
        ),
        SizedBox(height: 4),
        Row(
          children: [
            Icon(Icons.star, size: 14, color: Color(0xFFFFB800)),
            SizedBox(width: 4),
            Text(
              rating,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 4),
            Text(
              '($reviews)',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xFF454743),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
