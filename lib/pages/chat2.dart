import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
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
        child: Column(
          children: [
            _buildHeader(context),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildChatMessages(context),
                  ],
                ),
              ),
            ),
            _buildMessageInput(context),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Color(0xFF424549), width: 1),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            GestureDetector(
              onTap: () {
                // Handle back action
              },
              child: Transform(
                transform: Matrix4.identity()
                  ..translate(0.0, 0.0)
                  ..rotateZ(3.14),
                child: Container(
                  width: 33,
                  height: 33,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            NetworkImage("https://via.placeholder.com/33x33"),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.circle),
                ),
              ),
            ),
            SizedBox(width: 10),
            Container(
                width: 45,
                height: 45,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle)),
            SizedBox(width: 10),
            Text(
              'Community',
              style: TextStyle(
                color: Color(0xFFFBFCF6),
                fontSize: 40,
                fontFamily: 'Kdam Thmor Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
          ]),
          Container(
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
        ],
      ),
    );
  }

  Widget _buildChatMessages(BuildContext context) {
    return Column(
      children: [
        _buildChatDateHeader(context, 'Month Date, Year'),
        ChatMessage(
          name: 'Name 1',
          message: 'Chat 1',
          time: 'Da/t/e ti:me PM',
          userAvatarUrl: "https://via.placeholder.com/50x50",
        ),
        ChatMessage(
            name: 'Name 2',
            message: 'Chat 2',
            time: 'Da/t/e ti:me PM',
            userAvatarUrl: "https://via.placeholder.com/50x50",
            isReply: true,
            replyName: "@Name 1",
            replyMessage: "Chat 1"),
        _buildChatDateHeader(context, 'Month Date, Year'),
        ChatMessage(
          name: 'Name 3',
          message: 'Chat 3\nNew line',
          time: 'Da/t/e ti:me PM',
          userAvatarUrl: "https://via.placeholder.com/50x50",
        ),
        ChatMessage(
          name: 'Name',
          message: 'Chat 4',
          time: 'Date ti:me pm',
          userAvatarUrl: "https://via.placeholder.com/50x50",
          isReply: true,
          replyMessage: "New message",
        ),
      ],
    );
  }

  Widget _buildChatDateHeader(BuildContext context, String dateTime) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Color(0xFF424549), width: 1))),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Color(0xFF1D1D1D),
            child: Text(
              dateTime,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: 'Kdam Thmor Pro',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageInput(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF252525), Color(0xFF222222)],
          ),
          border: Border(top: BorderSide(color: Color(0xFF424549), width: 1))),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Container(
            width: 58.62,
            height: 56,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://via.placeholder.com/59x56"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                  hintText: 'Enter message',
                  hintStyle: TextStyle(color: Colors.white),
                  border: UnderlineInputBorder(borderSide: BorderSide.none)),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String userAvatarUrl;
  final bool isReply;
  final String? replyName;
  final String? replyMessage;

  ChatMessage({
    required this.name,
    required this.message,
    required this.time,
    required this.userAvatarUrl,
    this.isReply = false,
    this.replyName,
    this.replyMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              // Handle user profile view
            },
            child: Container(
              width: 50,
              height: 50,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (isReply) ...[
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Color(0xFF464649),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (replyName != null)
                          Text(replyName!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Kdam Thmor Pro',
                                fontWeight: FontWeight.w400,
                              )),
                        if (replyMessage != null)
                          Text(
                            '  $replyMessage',
                            style: TextStyle(
                              color: Color(0xFFA6A9AD),
                              fontSize: 14,
                              fontFamily: 'Kdam Thmor Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          )
                      ],
                    ),
                  ),
                  SizedBox(height: 5)
                ],
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Kdam Thmor Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      time,
                      style: TextStyle(
                        color: Color(0xFFFBFCF6),
                        fontSize: 14,
                        fontFamily: 'Kdam Thmor Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Text(
                  message,
                  style: TextStyle(
                    color: Color(0xFFA6A9AD),
                    fontSize: 18,
                    fontFamily: 'Kdam Thmor Pro',
                    fontWeight: FontWeight.w400,
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
