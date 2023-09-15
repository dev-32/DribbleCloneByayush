import 'package:flutter/material.dart';

import '../util/emotion_face.dart';
import '../util/exercise_tile.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          // First Part
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Hi, Ayush
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hi, Ayush!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          '15 Sept, 2023',
                          style: TextStyle(
                            color: Colors.blue[100],
                          ),
                        ),
                      ],
                    ),

                    //Notitification
                    Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                // Search Bar
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.white),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // how do you feel
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                // Mood Icons
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    //bad
                    Column(
                      children: [
                        EmotionFace(
                          emotion: '😔',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Sad',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),

                    // fine
                    Column(
                      children: [
                        EmotionFace(
                          emotion: '🙂',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Fine',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),

                    //well
                    Column(
                      children: [
                        EmotionFace(
                          emotion: '😄',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Well',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    //excellent
                    Column(
                      children: [
                        EmotionFace(
                          emotion: '😍',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Excellent',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              color: Colors.grey.shade200,
              child:  const SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      // Exercise Heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      // ListView of exercise
                      SizedBox(
                        height: 20,
                      ),
                      ExerciseTile(color: Colors.orangeAccent, icon: Icons.favorite, mainHeading: 'Speaking Skills', subHeading: '15 Exercises'),
                      ExerciseTile(color: Colors.blue, icon: Icons.person, mainHeading: 'Reading Skills', subHeading: '8 Exercises'),
                      ExerciseTile(color: Colors.pinkAccent, icon: Icons.star, mainHeading: 'Writing Skills', subHeading: '20 Exercises'),
                      ExerciseTile(color: Colors.green, icon: Icons.star, mainHeading: 'Yoga Skills', subHeading: '15 Exercises'),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
