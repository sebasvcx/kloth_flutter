class ArticleInfo {
  const ArticleInfo({
    required this.id,
    required this.title,
    required this.brand,
    required this.price,
    required this.categoryTag,
    required this.colorName,
    required this.categoryName,
    required this.description,
    required this.imageUrl,
    required this.averageRating,
    required this.reviewsCount,
    this.aiSummary,
    this.isFavorite = false,
    this.reviews = const [],
  });

  final String id;
  final String title;
  final String brand;
  final String price;
  final String categoryTag;
  final String colorName;
  final String categoryName;
  final String description;
  final String imageUrl;
  final double averageRating;
  final int reviewsCount;
  final String? aiSummary;
  final bool isFavorite;
  final List<ReviewData> reviews;
}

class PostItem {
  const PostItem({
    required this.id,
    required this.creatorName,
    required this.timeAgo,
    required this.avatarUrl,
    required this.commentsCount,
    required this.tags,
    required this.product,
  });

  final String id;
  final String creatorName;
  final String timeAgo;
  final String avatarUrl;
  final String commentsCount;
  final List<String> tags;
  final ArticleInfo product;
}

class ReviewData {
  const ReviewData({
    required this.id,
    required this.authorName,
    required this.authorAvatarUrl,
    required this.rating,
    required this.comment,
    required this.likes,
    required this.timeAgo,
  });

  final String id;
  final String authorName;
  final String authorAvatarUrl;
  final double rating;
  final String comment;
  final int likes;
  final String timeAgo;
}

class ProfileData {
  const ProfileData({
    required this.email,
    required this.username,
    required this.bio,
    required this.location,
    required this.website,
    required this.profileImageUrl,
    required this.followersCount,
    required this.followingCount,
  });

  final String email;
  final String username;
  final String bio;
  final String location;
  final String website;
  final String profileImageUrl;
  final int followersCount;
  final int followingCount;
}
