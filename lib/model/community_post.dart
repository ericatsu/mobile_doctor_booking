class CommunityPost {
  final String userName;
  final String userImage;
  final String achievement;
  final String timeAgo;
  final int likes;
  final String description;

  const CommunityPost({
    required this.userName,
    required this.userImage,
    required this.achievement,
    required this.timeAgo,
    required this.likes,
    required this.description,
  });
}

final List<CommunityPost> communityPosts = [
  const CommunityPost(
    userName: "Sarah Johnson",
    userImage: "assets/images/doc3.png",
    achievement: "7-Day Water Goal Streak",
    timeAgo: "2h ago",
    likes: 24,
    description: "Finally hit my daily water intake goal for a whole week! 💧",
  ),
  const CommunityPost(
    userName: "Mike Peters",
    userImage: "assets/images/doc3.png",
    achievement: "Veggie Master",
    timeAgo: "5h ago",
    likes: 18,
    description: "Added 5 different colored vegetables to my meals today! 🥗",
  ),
  // Add more community posts...
];
