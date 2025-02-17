import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            'https://media.istockphoto.com/id/1976099664/photo/artificial-intelligence-processor-concept-ai-big-data-array.webp?s=2048x2048&w=is&k=20&c=VPBbXakrFoSGtUQxU9tpRdL5AgupGZYVGEIk7Ckg9c4=',
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Hello my name is mustafa I am a flutter developer in learning phase may allah help me to learn more and more and in the end allah bles us',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Hello my name is mustafa I am a flutter developer in learning phase may allah help me to learn more and more and in the end allah bles us',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
        ),
        const SizedBox(
          height: 22,
        ),
      ],
    );
  }
}
