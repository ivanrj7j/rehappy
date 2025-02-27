import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final List<ChatMessage> _messages = [];

  void _sendMessage() {
    final messageText = _messageController.text.trim();
    if (messageText.isNotEmpty) {
      setState(() {
        _messages.add(ChatMessage(
            sender: 'You',
            message: messageText,
            time: _formatTime(DateTime.now())));
      });
      _messageController.clear();
      _scrollToBottom();
    }
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  String _formatTime(DateTime dateTime) {
    String hour = dateTime.hour.toString().padLeft(2, '0');
    String minute = dateTime.minute.toString().padLeft(2, '0');
    return '$hour:$minute';
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF191919), Color(0xFF242424)],
          ),
        ),
        child: Column(
          children: [
            _buildHeader(),
            Expanded(
              child: _buildChatList(),
            ),
            _buildInputArea(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 130,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Color(0xFF424549)),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 0,
              top: 0,
              right: 0,
              child: Container(
                height: 130,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Color(0xFF424549)),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Align(
              alignment: Alignment.center,
              child: SizedBox(
                height: 62,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(width: 10),
                    Expanded(
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Community',
                              style: const TextStyle(
                                color: Color(0xFFFBFCF6),
                                fontSize: 30, // Reduced text size
                                fontFamily: 'Kdam Thmor Pro',
                                fontWeight: FontWeight.w400,
                              ),
                            ))),
                    Container(
                      width: 33,
                      height: 33,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://xsgames.co/randomusers/assets/images/favicon.png"),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatList() {
    return ListView.builder(
      controller: _scrollController,
      itemCount: _messages.length,
      itemBuilder: (context, index) {
        return _buildChatMessage(
            name: _messages[index].sender,
            time: _messages[index].time,
            chat: _messages[index].message);
      },
    );
  }

  Widget _buildChatMessage({
    required String name,
    required String time,
    required String chat,
    String? atName,
    String? additionalChat,
  }) {
    if (chat.startsWith('#streak ')) {
      String streakMessage = chat.substring(7); //remove #streak and space
      return Container(
          margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 255, 0, 1),
            borderRadius:
                BorderRadius.circular(10), // Rounded edges for streak box
            border: Border.all(
              color: const Color.fromRGBO(204, 204, 0, 1),
              width: 1,
            ),
          ),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontFamily: 'Kdam Thmor Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          time,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Kdam Thmor Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ]),
                  Text(
                    streakMessage,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontFamily: 'Kdam Thmor Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  if (additionalChat != null)
                    Text(
                      additionalChat,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'Kdam Thmor Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ]))
          ]));
    }
    if (chat.startsWith('#task ')) {
      String taskMessage = chat.substring(6); //remove #task and space
      return Container(
          margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 25, 0, 1),
              borderRadius:
                  BorderRadius.circular(10), // Rounded edges for task box
              border: Border.all(
                  color: const Color.fromRGBO(0, 64, 0, 1), width: 1)),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Kdam Thmor Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          time,
                          style: const TextStyle(
                            color: Color(0xFFFBFCF6),
                            fontSize: 14,
                            fontFamily: 'Kdam Thmor Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ]),
                  Text(
                    taskMessage,
                    style: const TextStyle(
                      color: Color(0xFFA6A9AD),
                      fontSize: 18,
                      fontFamily: 'Kdam Thmor Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  if (additionalChat != null)
                    Text(
                      additionalChat,
                      style: const TextStyle(
                        color: Color(0xFFA6A9AD),
                        fontSize: 18,
                        fontFamily: 'Kdam Thmor Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ]))
          ]));
    }

    return Column(
      children: [
        if (atName != null)
          Container(
              margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
              child: Row(children: [
                Container(
                  width: 30,
                  height: 15,
                  decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(10)),
                    border: Border(
                      left: BorderSide(width: 2, color: Color(0xFF464649)),
                      top: BorderSide(width: 2, color: Color(0xFF464649)),
                      right: BorderSide(color: Color(0xFF464649)),
                      bottom: BorderSide(color: Color(0xFF464649)),
                    ),
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  atName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Kdam Thmor Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(width: 5),
                Text(
                  chat,
                  style: const TextStyle(
                    color: Color(0xFFA6A9AD),
                    fontSize: 14,
                    fontFamily: 'Kdam Thmor Pro',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ])),
        Container(
          margin: const EdgeInsets.only(left: 10, top: 20, right: 10),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Kdam Thmor Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          time,
                          style: const TextStyle(
                            color: Color(0xFFFBFCF6),
                            fontSize: 14,
                            fontFamily: 'Kdam Thmor Pro',
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ]),
                  Text(
                    chat,
                    style: const TextStyle(
                      color: Color(0xFFA6A9AD),
                      fontSize: 18,
                      fontFamily: 'Kdam Thmor Pro',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  if (additionalChat != null)
                    Text(
                      additionalChat,
                      style: const TextStyle(
                        color: Color(0xFFA6A9AD),
                        fontSize: 18,
                        fontFamily: 'Kdam Thmor Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                ]))
          ]),
        ),
      ],
    );
  }

  Widget _buildInputArea() {
    return Container(
      height: 107,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF252525), Color(0xFF222222)],
        ),
        border: Border(
          top: BorderSide(width: 1, color: Color(0xFF424549)),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          children: [
            Container(
              width: 58.62,
              height: 56,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://xsgames.co/randomusers/assets/images/favicon.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                controller: _messageController,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Kdam Thmor Pro',
                  fontWeight: FontWeight.w400,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter message',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Kdam Thmor Pro',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                onEditingComplete: _sendMessage,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send, color: Colors.white),
              onPressed: _sendMessage,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDateSeparator({required String date}) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
              height: 1,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Color(0xFF424549)),
                ),
              )),
          Container(
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(color: Color(0xFF1D1D1D)),
            child: Text(
              date,
              style: const TextStyle(
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
}

class ChatMessage {
  final String sender;
  final String message;
  final String time;

  ChatMessage({
    required this.sender,
    required this.message,
    required this.time,
  });
}
