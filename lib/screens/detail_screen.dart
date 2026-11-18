import 'package:flutter/material.dart';

import '../data/mock_data.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF8F7),
      body: ListView(
        children: [
          Stack(
            children: [
              Image.network(
                MockData.abrigoNegro.imageUrl,
                height: 450,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 40,
                left: 16,
                child: CircleIconButton(icon: Icons.arrow_back),
              ),
              Positioned(
                bottom: 16,
                right: 16,
                child: Row(
                  children: [
                    CircleIconButton(icon: Icons.favorite_border),
                    SizedBox(width: 8),
                    CircleIconButton(icon: Icons.share_outlined),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFF8B8B8B),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        MockData.abrigoNegro.categoryTag,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      MockData.abrigoNegro.price,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                Text(
                  MockData.abrigoNegro.title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  MockData.abrigoNegro.brand,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF454743),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: SpecCard(
                        label: 'Color',
                        value: 'Nebulosity Dark',
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: SpecCard(
                        label: 'Categoría',
                        value: 'Outerwear Elite',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Descripción',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  MockData.abrigoNegro.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF454743),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F3F2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.auto_awesome, size: 20),
                          SizedBox(width: 8),
                          Text(
                            'Resumen Inteligente (IA)',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        MockData.abrigoNegro.aiSummary ?? '',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                Divider(),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Valoraciones y reseñas',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                '4.9',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 6),
                              Icon(
                                Icons.star,
                                size: 14,
                                color: Color(0xFFFFB800),
                              ),
                              SizedBox(width: 6),
                              Text(
                                '(128 reseñas)',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF454743),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF020202),
                        foregroundColor: Colors.white,
                        shape: StadiumBorder(),
                      ),
                      child: Text('Escribir'),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                ReviewItem(
                  name: 'Camila R.',
                  timeAgo: '2 días',
                  comment:
                      'Calidad impecable. El corte cae perfecto y se siente premium desde el primer uso.',
                  likes: '24',
                  avatarUrl:
                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?q=80&w=200&h=200&auto=format&fit=crop',
                ),
                SizedBox(height: 16),
                ReviewItem(
                  name: 'Diego M.',
                  timeAgo: '5 días',
                  comment:
                      'Muy buena prenda. Solo le faltaría una talla intermedia entre M y L.',
                  likes: '11',
                  avatarUrl:
                      'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=200&h=200&auto=format&fit=crop',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CircleIconButton extends StatelessWidget {
  const CircleIconButton({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black45,
        shape: BoxShape.circle,
      ),
      child: Icon(icon, color: Colors.white, size: 20),
    );
  }
}

class SpecCard extends StatelessWidget {
  const SpecCard({
    super.key,
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFF7F3F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF454743),
            ),
          ),
          SizedBox(height: 4),
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  const ReviewItem({
    super.key,
    required this.name,
    required this.timeAgo,
    required this.comment,
    required this.likes,
    required this.avatarUrl,
  });

  final String name;
  final String timeAgo;
  final String comment;
  final String likes;
  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(avatarUrl),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    timeAgo,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF454743),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.star, size: 14, color: Color(0xFFFFB800)),
                  Icon(Icons.star, size: 14, color: Color(0xFFFFB800)),
                  Icon(Icons.star, size: 14, color: Color(0xFFFFB800)),
                  Icon(Icons.star, size: 14, color: Color(0xFFFFB800)),
                  Icon(Icons.star, size: 14, color: Color(0xFFFFB800)),
                ],
              ),
              SizedBox(height: 6),
              Text(comment),
              SizedBox(height: 6),
              Row(
                children: [
                  Icon(Icons.favorite_border, size: 16),
                  SizedBox(width: 4),
                  Text(likes),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
