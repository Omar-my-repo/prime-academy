import 'package:flutter/material.dart';
import 'package:prime_academy/shared/widgets/screen_title.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ScreenTitle('الرسائل'),
          ),
          Divider(
            thickness: 1,
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                // separatorBuilder: (context, index) => const SizedBox(height: 10,),
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 0,
                    child: ListTile(
                      onTap: () {},
                      tileColor: Colors.white,
                      leading: CircleAvatar(
                        radius: 28,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/icons/manager.png'),
                          radius: 24,
                          backgroundColor: Colors.grey[300]!,
                          // minRadius: 28,
                        ),
                      ),
                      title: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('عمر محمد',
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500)),
                          const SizedBox(height: 4),
                          Text(
                            'محتوي اخر ساله',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
