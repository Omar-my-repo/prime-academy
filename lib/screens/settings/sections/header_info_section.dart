import 'package:flutter/material.dart';

class HeaderInfoSection extends StatelessWidget {
  const HeaderInfoSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/icons/manager.png'),
              radius: 30,
              backgroundColor: Colors.grey[300]!,
              // minRadius: 28,
            ),
          ),
          const SizedBox(width: 14),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'مرحباً',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  SizedBox(width: 4),
                  Text(
                    'محمد الدهبي',
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.blueAccent),
                  ),
                ],
              ),
              const SizedBox(height: 4),
            ],
          )
        ],
      ),
    );
  }
}
