import 'package:flutter/material.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Messages'),
        // centerTitle: true,
      ),
      body: ListView.separated(
          itemCount: 6,
          separatorBuilder: (context, index) => const Divider(
                thickness: 1,
                height: 14,
                color: Colors.black12,
                indent: 70,
                endIndent: 10,
              ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                //naviget to message with user id
                // Navigator.of(context, rootNavigator: true)
                //     .pushNamed(MessagesScreen.routeName,
                //     arguments: chats[index]);
              },
              child: Container(
                //color: Colors.grey[100],
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),

                //height: 80,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/icons/manager.png'),
                        radius: 24,
                        backgroundColor: Colors.grey[300]!,
                        // minRadius: 28,
                      ),
                    ),
                    const SizedBox(width: 14),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Hassan',
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                          const SizedBox(height: 4),
                          Text(
                            'last message content',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
