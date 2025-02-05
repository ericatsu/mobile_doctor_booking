import 'package:flutter/material.dart';
import 'package:mobile_doctor_booking/model/community_post.dart';
import 'package:mobile_doctor_booking/screens/home/widgets/community_post_card.dart';

class CommunityFeedWidget extends StatelessWidget {
  const CommunityFeedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Community Achievements",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: communityPosts.length,
            itemBuilder: (context, index) {
              return CommunityPostCard(post: communityPosts[index]);
            },
          ),
        ],
      ),
    );
  }
}
