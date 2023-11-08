import 'package:flutter/material.dart';

class EmotionFace extends StatelessWidget {
  final emotionFace;
  const EmotionFace({super.key, required this.emotionFace});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue[300],
      ),
      child: Text(
        emotionFace,
        style: const TextStyle(fontSize: 25),
      ),
    );
  }
}
