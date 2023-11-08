import 'package:flutter/material.dart';
import 'package:mental_health_ui_app/utils/emotion_face_widget.dart';

import '../utils/exercise_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: const IconThemeData(color: Colors.blue),
        unselectedIconTheme: IconThemeData(color: Colors.grey[400]),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  // Greeting Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //  Hi Jared
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Hi Jared!",
                            style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "23 jan, 2023",
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),

                      // Notification
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.blue[300],
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),
                  // Search Bar
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          "Search",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),

                  // How do you feel?

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "How do you feel?",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.more_horiz, color: Colors.white),
                    ],
                  ),
                  const SizedBox(height: 25),
                  // Emotion  Face
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Badly
                      Column(
                        children: [
                          EmotionFace(emotionFace: "😔"),
                          SizedBox(height: 8),
                          Text(
                            "Badly",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // Fine
                      Column(
                        children: [
                          EmotionFace(emotionFace: "😊"),
                          SizedBox(height: 8),
                          Text(
                            "Fine",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // Well
                      Column(
                        children: [
                          EmotionFace(emotionFace: "😄"),
                          SizedBox(height: 8),
                          Text(
                            "Well",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      // Excelent
                      Column(
                        children: [
                          EmotionFace(emotionFace: "😍"),
                          SizedBox(height: 8),
                          Text(
                            "Excelent",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                  color: Colors.grey[300],
                ),
                child: Column(
                  children: [
                    //  Exercise with Icon more
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exercise",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),

                    const SizedBox(height: 20),
                    // Exercise List Item
                    Expanded(
                      child: ListView(
                        children: const [
                          ExerciseTile(
                            icon: Icons.favorite,
                            exerciseName: "Speaking Sklls",
                            noOFExercise: "16",
                            color: Colors.orange,
                          ),
                          ExerciseTile(
                            icon: Icons.person,
                            exerciseName: "Reading Speed",
                            noOFExercise: "8",
                            color: Colors.blue,
                          ),
                          ExerciseTile(
                            icon: Icons.star,
                            exerciseName: "Writing Skills",
                            noOFExercise: "21",
                            color: Colors.pink,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
