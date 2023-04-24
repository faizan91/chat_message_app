import 'package:chat_message_app/models/user.dart';
import 'package:flutter/material.dart';

class Message {
  User user;
  String lastMessage;
  String lastTime;
  bool isContinue;

  Message(this.user, this.lastMessage, this.lastTime,
      {this.isContinue = false});

  static List<Message> generateHomePageMessages() {
    return [
      Message(users[0], 'Hey there! What\'s up? Is everything okay?', '18:32'),
      Message(users[1], 'Can I call you back? I\'m at the hospital.', '14:05'),
      Message(
          users[2], 'Yeah, do you have any good songs to suggest?', '14:32'),
      Message(
          users[3], 'Hi, I went to shopping today and I missed you.', '14:00'),
      Message(
          users[4], 'I passed you on the ride into work, what\'s up?', '12:11'),
      Message(users[5], 'Hey there! What\'s up? Is everything okay?', '12:00'),
    ];
  }

  static List<Message> generateMessagesFromUser() {
    return [
      Message(users[0], 'Hey there! What\'s up? Is everything okay?', '18:32'),
      Message(
          me,
          'Nothing Just Chilling and watching youtube. What are you up to?',
          '18:35'),
      Message(
        users[0],
        'Same here man! been watching youtube since the past 5 hours.',
        '18:39',
        isContinue: true,
      ),
      Message(users[0], 'Its had to be productive, man', '18:43'),
      Message(me, 'Yeah, i know. In the sam position.', '18:47'),
      Message(users[0], 'lol', '18:55'),
    ];
  }
}

var users = User.generateUsers();
var me =
    User(0, 'Faizan', 'Hussain', 'assets/images/user0.png', Color(0xFFFFFFF));
