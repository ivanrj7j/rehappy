import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  const Options({super.key});

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
          // Make the column scrollable
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeaderIcons(context),
                _buildCommunityInfoSection(context),
                _buildCommunityDescription(context),
                SizedBox(height: 20),
                _buildMembersSection(context),
                SizedBox(height: 20),
                _buildAdminsSection(context),
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
          transform: Matrix4.identity()
            ..translate(0.0, 0.0)
            ..rotateZ(3.14),
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
          transform: Matrix4.identity()
            ..translate(0.0, 0.0)
            ..rotateZ(3.14),
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

  Widget _buildCommunityInfoSection(BuildContext context) {
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
            bottom: 60,
            child: Text(
              'Community',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontFamily: 'Kdam Thmor Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Text(
              'Number of Members',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFA6A9AD),
                fontSize: 16,
                fontFamily: 'Kdam Thmor Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommunityDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Community Description',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Kdam Thmor Pro',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10),
          TextField(
            maxLines: 3,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                hintText: 'Enter description about the community',
                hintStyle: TextStyle(color: Color(0xFFA6A9AD)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade700),
                  borderRadius: BorderRadius.circular(5),
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildMembersSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'No: Members',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Kdam Thmor Pro',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 10),
        MemberList(),
      ],
    );
  }

  Widget _buildAdminsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'No: Admins',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Kdam Thmor Pro',
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 10),
        MemberList(),
      ],
    );
  }
}

class MemberList extends StatelessWidget {
  final List<String> memberNames =
      List.generate(20, (index) => 'Member ${index + 1}');

  MemberList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: memberNames.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          return _buildMemberBox(context, memberNames[index]);
        },
      ),
    );
  }

  Widget _buildMemberBox(BuildContext context, String name) {
    return SizedBox(
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
