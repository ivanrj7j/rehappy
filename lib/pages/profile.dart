import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
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
        child: SingleChildScrollView( // Make the column scrollable
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeaderIcons(context),
                _buildProfileInfo(context),
                _buildBioSection(context),
                SizedBox(height: 20),
                _buildCommunitiesSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderIcons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Transform(
          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
          child: Container(
            width: 33,
            height: 33,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/33x33"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        Transform(
          transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
          child: Container(
            width: 33,
            height: 33,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/33x33"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileInfo(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            bottom: 10,
            child: Text(
              'Name',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'Kdam Thmor Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBioSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Bio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Kdam Thmor Pro',
                  fontWeight: FontWeight.w400,
                ),
              ),
              GestureDetector(
                  onTap: (){
                    // Handle edit profile action
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage("https://via.placeholder.com/20x20"),
                          fit: BoxFit.fill,
                        )
                    ),
                  )
              ),
            ],
          ),
          SizedBox(height: 10),
          TextField(
            maxLines: 3,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: 'Enter your bio',
                hintStyle: TextStyle(color: Color(0xFFA6A9AD)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(5),
                )
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommunitiesSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'communities joined',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Kdam Thmor Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
            Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://via.placeholder.com/20x20"),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        MemberList(),
      ],
    );
  }
}




class MemberList extends StatelessWidget {
  final List<String> memberNames = List.generate(10, (index) => 'Member ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: memberNames.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index){
          return _buildMemberBox(context, memberNames[index]);
        },
      ),
    );
  }

  Widget _buildMemberBox(BuildContext context, String name) {
    return Container(
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
    );
  }
}