import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24.0,
        bottom: 24.0,
        left: 16.0,
      ),
      decoration: BoxDecoration(
        color: const Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26.0,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(
                top: 16.0,
                bottom: 16.0,
              ),
              child: Text(
                'Build your career with Faisal Nasir',
                style: TextStyle(
                  color: Colors.black.withOpacity(.5),
                  fontSize: 18.0,
                ),
              ),
            ),
            trailing: IconButton(
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,
                size: 24.0,
              ),
              onPressed: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 24.0,
            ),
            child: Text(
              'May 21,2022',
              style: TextStyle(
                color: Colors.black.withOpacity(0.4),
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
