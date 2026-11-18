import 'package:material_ui/material_ui.dart';

import '../data/mock_data.dart';
import '../widgets/product_catalog_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCF8F7),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Buscar',
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      fillColor: Color(0xFFF7F3F2),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F3F2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.map_outlined),
                ),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryChip(text: 'Todo', selected: true),
                  SizedBox(width: 8),
                  CategoryChip(text: 'Prendas', selected: false),
                  SizedBox(width: 8),
                  CategoryChip(text: 'Outfits', selected: false),
                  SizedBox(width: 8),
                  CategoryChip(text: 'Marcas', selected: false),
                  SizedBox(width: 8),
                  CategoryChip(text: 'Eventos', selected: false),
                ],
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FilterChipBox(text: 'Filtros'),
                  SizedBox(width: 12),
                  FilterChipBox(text: 'Precio'),
                  SizedBox(width: 12),
                  FilterChipBox(text: 'Color'),
                  SizedBox(width: 12),
                  FilterChipBox(text: 'Talla'),
                ],
              ),
            ),
            SizedBox(height: 24),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ProductCatalogCard(
                    title: MockData.abrigoNegro.title,
                    category: MockData.abrigoNegro.categoryTag,
                    rating: MockData.abrigoNegro.averageRating.toString(),
                    reviews: MockData.abrigoNegro.reviewsCount.toString(),
                    imageUrl: MockData.abrigoNegro.imageUrl,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ProductCatalogCard(
                    title: MockData.detailSuit.title,
                    category: MockData.detailSuit.categoryTag,
                    rating: MockData.detailSuit.averageRating.toString(),
                    reviews: MockData.detailSuit.reviewsCount.toString(),
                    imageUrl: MockData.detailSuit.imageUrl,
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
                    title: MockData.detailVestido.title,
                    category: MockData.detailVestido.categoryTag,
                    rating: MockData.detailVestido.averageRating.toString(),
                    reviews: MockData.detailVestido.reviewsCount.toString(),
                    imageUrl: MockData.detailVestido.imageUrl,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ProductCatalogCard(
                    title: MockData.detailCozy.title,
                    category: MockData.detailCozy.categoryTag,
                    rating: MockData.detailCozy.averageRating.toString(),
                    reviews: MockData.detailCozy.reviewsCount.toString(),
                    imageUrl: MockData.detailCozy.imageUrl,
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
                    title: MockData.detailStreetwear.title,
                    category: MockData.detailStreetwear.categoryTag,
                    rating: MockData.detailStreetwear.averageRating.toString(),
                    reviews: MockData.detailStreetwear.reviewsCount.toString(),
                    imageUrl: MockData.detailStreetwear.imageUrl,
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ProductCatalogCard(
                    title: MockData.detailPrimavera.title,
                    category: MockData.detailPrimavera.categoryTag,
                    rating: MockData.detailPrimavera.averageRating.toString(),
                    reviews: MockData.detailPrimavera.reviewsCount.toString(),
                    imageUrl: MockData.detailPrimavera.imageUrl,
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

class CategoryChip extends StatelessWidget {
  const CategoryChip({
    super.key,
    required this.text,
    required this.selected,
  });

  final String text;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? Color(0xFF020202) : Color(0xFFF7F3F2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : Color(0xFF1C1B1B),
          fontSize: 14,
        ),
      ),
    );
  }
}

class FilterChipBox extends StatelessWidget {
  const FilterChipBox({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFC6C7C1)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF454743),
          fontSize: 13,
        ),
      ),
    );
  }
}
