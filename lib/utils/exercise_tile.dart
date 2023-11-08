import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  final IconData icon;
  final String exerciseName, noOFExercise;
  final Color color;
  const ExerciseTile(
      {super.key,
      required this.icon,
      required this.exerciseName,
      required this.noOFExercise,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  title
              Text(
                exerciseName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //  subtitle
              Text(
                "$noOFExercise exercise",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.more_horiz)
        ],
      ),
    );
  }
}
