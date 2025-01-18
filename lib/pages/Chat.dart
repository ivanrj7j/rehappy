import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
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
                    Transform(
                      transform: Matrix4.identity()
                        ..translate(0.0, 0.0)
                        ..rotateZ(3.14),
                      child: Container(
                        width: 33,
                        height: 33,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/33x33"),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                        child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Community',
                              style: const TextStyle(
                                color: Color(0xFFFBFCF6),
                                fontSize: 40,
                                fontFamily: 'Kdam Thmor Pro',
                                fontWeight: FontWeight.w400,
                              ),
                            ))),
                    Container(
                      width: 33,
                      height: 33,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image:
                              NetworkImage("https://via.placeholder.com/33x33"),
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
          Positioned(
            left: 52,
            top: 52,
            child: Container(
              width: 45,
              height: 45,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChatList() {
    return ListView(
      children: [
        _buildChatMessage(
            name: 'Name 1',
            time: 'Da/t/e ti:me PM',
            chat: 'Chat 1',
            isFirstMessage: true),
        _buildChatMessage(
            name: 'Name 2',
            time: 'Da/t/e ti:me PM',
            chat: 'Chat 1',
            atName: '@Name 1',
            isFirstMessage: false),
        _buildDateSeparator(date: 'Month Date, Year'),
        _buildChatMessage(
            name: 'Name 3',
            time: 'Da/t/e ti:me PM',
            chat: 'Chat 3\nNew line',
            isFirstMessage: true),
        _buildChatMessage(
            name: 'Name 4',
            time: 'Date ti:me pm',
            chat: 'Chat 4',
            additionalChat: 'New message',
            isFirstMessage: true),
      ],
    );
  }

  Widget _buildChatMessage({
    required String name,
    required String time,
    required String chat,
    String? atName,
    String? additionalChat,
    bool isFirstMessage = false,
  }) {
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
            ])),
      ],
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
                  image: NetworkImage("https://via.placeholder.com/59x56"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Enter message',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
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
