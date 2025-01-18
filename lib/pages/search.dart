import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF191919), Color(0xFF242424)],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildSearchBar(context),
              SizedBox(height: 20),
              _buildPopularCommunities(context),
              SizedBox(height: 20),
              _buildLastVisitedCommunities(context),
              SizedBox(height: 20),
              _buildRecommendedCommunities(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF191919), Color(0xFF1A1A1A)],
        ),
        border: Border(
          bottom: BorderSide(color: Color(0xFF424549), width: 1),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              // Handle back navigation or clear search
            },
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(3.14),
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/32x32"),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Container(
                    padding: EdgeInsets.all(5),
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/31x31"),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle),
                    ),
                  ),
                  border: UnderlineInputBorder(borderSide: BorderSide.none)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopularCommunities(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Popular',
            style: TextStyle(
              color: Color(0xFFA6A9AD),
              fontSize: 16,
              fontFamily: 'Kdam Thmor Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          CommunityList(),
        ],
      ),
    );
  }

  Widget _buildLastVisitedCommunities(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Last Visited',
            style: TextStyle(
              color: Color(0xFFA6A9AD),
              fontSize: 16,
              fontFamily: 'Kdam Thmor Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          CommunityList(),
        ],
      ),
    );
  }

  Widget _buildRecommendedCommunities(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recommended',
            style: TextStyle(
              color: Color(0xFFA6A9AD),
              fontSize: 16,
              fontFamily: 'Kdam Thmor Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          CommunityList(),
        ],
      ),
    );
  }
}

class CommunityList extends StatelessWidget {
  final List<String> communityNames =
      List.generate(10, (index) => 'Community ${index + 1}');

  CommunityList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: communityNames.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return _buildCommunityBox(context, communityNames[index]);
        },
      ),
    );
  }

  Widget _buildCommunityBox(BuildContext context, String name) {
    return GestureDetector(
      onTap: () {
        // Handle community box tap
      },
      child: SizedBox(
        width: 50,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: 50,
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFFBFCF6),
                    fontSize: 8,
                    fontFamily: 'Kdam Thmor Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
