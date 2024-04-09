import 'package:cloud_firestore_platform_interface/src/timestamp.dart';
import 'package:flutter/material.dart';
import 'package:hw4/themes/themeprovider.dart';
import 'package:provider/provider.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSentByCurrentUser;

  const ChatBubble({
    Key? key,
    required this.message,
    required this.isSentByCurrentUser, required Timestamp timestamp,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Provider.of<Themeprovider>(context, listen: false).isdarkMode;
    EdgeInsetsGeometry margin = isSentByCurrentUser
        ? const EdgeInsets.only(left: 80, bottom: 2.5, top: 2.5)
        : const EdgeInsets.only(right: 80, bottom: 2.5, top: 2.5);

    return Container(
      decoration: BoxDecoration(
        color: isSentByCurrentUser ? Colors.green : Colors.grey.shade500,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(16),
      margin: margin,
      child: Text(
        message,
        style: TextStyle(color: isDarkMode ? Colors.white : Colors.black),
      ),
    );
  }
}
