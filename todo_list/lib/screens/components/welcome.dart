import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  final String name;
  final String avatar;

  const Welcome({super.key, required this.name, required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                "Welcome $name!",
                style: const TextStyle(
                    fontWeight: FontWeight.w900, fontSize: 25.0),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: ImageIcon(
                  AssetImage('assets/icons/dome-of-the-rock.png'),
                  size: 30,
                  color: Colors.yellow,
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage(avatar),
            foregroundColor: Colors.transparent,
          ),
        ],
      ),
    );
  }
}
