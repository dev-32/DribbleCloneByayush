import 'package:flutter/material.dart';

class EmotionFace extends StatelessWidget {
  const EmotionFace({super.key, required this.emotion});
  final String emotion;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Center(child: Text(emotion,
      style: const TextStyle(
        fontSize: 28
      ),)),
    );
  }
}
