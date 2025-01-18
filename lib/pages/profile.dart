import 'package:flutter/material.dart';

class ProfileFrame extends StatelessWidget {
  final String profileImageUrl;
  final String userName;
  final int followersCount = 10;
  final int followingCount = 10;
  final String bio;
  final VoidCallback onEditProfile; // Callback for edit profile button

  const ProfileFrame({
    super.key,
    required this.profileImageUrl,
    required this.userName,
    this.bio = "Hehe",
    required this.onEditProfile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Picture
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(profileImageUrl),
          ),
          const SizedBox(height: 16),
          // User Name
          Text(
            userName,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          // Bio
          if (bio.isNotEmpty)
            Text(
              bio,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          const SizedBox(height: 16),
          // User Stats (Followers and Following)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildStatItem('Followers', followersCount),
              const SizedBox(width: 30),
              _buildStatItem('Following', followingCount),
            ],
          ),
          const SizedBox(height: 20),
          // Edit Profile Button
          ElevatedButton(
            onPressed: onEditProfile,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF35C2C1),
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
            ),
            child: const Text('Edit Profile'),
          ),
        ],
      ),
    );
  }

  // Helper Function to generate the stat items
  Widget _buildStatItem(String label, int count) {
    return Column(
      children: [
        Text(
          count.toString(),
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
      ],
    );
  }
}
