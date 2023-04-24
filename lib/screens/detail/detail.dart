import 'package:chat_message_app/constants/colors.dart';
import 'package:chat_message_app/models/message.dart';
import 'package:chat_message_app/screens/detail/widget/contact_info.dart';
import 'package:chat_message_app/screens/detail/widget/detail_app_bar.dart';
import 'package:chat_message_app/screens/detail/widget/detail_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailPage extends StatelessWidget {
  final Message message;
  DetailPage(this.message);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      body: Column(
        children: [
          DetailAppBar(),
          ContactInfo(message),
          Expanded(
            child: DetailMessages(),
          ),
        ],
      ),
    );
  }
}
