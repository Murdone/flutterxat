import 'package:flutter/material.dart';
import 'package:flutter_fer_02/presentation/widget/chat/her_message_bubble.dart';
import 'package:flutter_fer_02/presentation/widget/chat/my_message_bubble.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/588353819312054274/1FN4L8aG_400x400.jpg'),
          ),
        ),
        title: const Text('Mi amor ❤️'),
        centerTitle: false,
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
               
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                      ? const HerMessageBubble()
                      : const MyMessageBubble();
                },
              ),
            ),
            const Text('Hola Mundo')
          ],
        ),
      ),
    );
  }
}
