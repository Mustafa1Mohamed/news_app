import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: Center(
        child: CircularProgressIndicator(
          strokeWidth: 10,
          strokeAlign: 5,
          color: Colors.black,
          backgroundColor: Colors.grey,
          semanticsLabel: 'Loading...',
          semanticsValue: 'Loading...',
        ),
      ),
    );
  }
}
