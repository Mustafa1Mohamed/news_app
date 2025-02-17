import 'package:flutter/material.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        image: const DecorationImage(
          image: AssetImage('assets/business.avif'),
          fit: BoxFit.fill,
        ),
      ),
      child: const Center(
        child: Text(
          'Business News',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
