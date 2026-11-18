import 'package:material_ui/material_ui.dart';

import '../data/models.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.post});

  final PostItem post;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFC6C7C1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(post.avatarUrl),
                ),
                SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.creatorName,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF020202),
                      ),
                    ),
                    Text(
                      post.timeAgo,
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
          Stack(
            children: [
              Image.network(
                post.product.imageUrl,
                height: 320,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFF790005),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    post.product.categoryTag,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.product.title,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF020202),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.star, size: 16, color: Color(0xFFFFB800)),
                    SizedBox(width: 4),
                    Text(
                      post.product.averageRating.toString(),
                      style: TextStyle(fontSize: 14),
                    ),
                    SizedBox(width: 4),
                    Text(
                      '(${post.product.reviewsCount} reseñas)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF454743),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.chat_bubble_outline, size: 20),
                    SizedBox(width: 4),
                    Text(post.commentsCount),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  post.product.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xFF454743),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
