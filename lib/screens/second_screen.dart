import 'package:dribble_clone_design/util/category_tile.dart';
import 'package:dribble_clone_design/util/consult_tiles.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hi, Ayush!',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text('15 Sep, 2023',
                        style: TextStyle(
                          color: Colors.white60,
                        ),)
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.notifications,
                            color: Colors.white,
                            size: 27,
                          )),
                    ),
                  ],
                ),
                // Search Box
                const SizedBox(height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.white,),
                      SizedBox(width: 10,),
                      Text('Search',
                      style: TextStyle(
                        color: Colors.white
                      ),),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Category",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CatergoryTile(categName:'Relationship',
                                color: Colors.purple.shade300),
                            CatergoryTile(categName: 'Career', color: Colors.blue.shade300),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left:8, right: 8,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CatergoryTile(categName:'Education',
                                color: Colors.orange.shade300),
                            CatergoryTile(categName: 'Other', color: Colors.pink.shade300),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Consultant",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      const Column(
                        children: [
                          ConsultTile(headName: 'Bobby Singer'
                          , subHeadName: "Education"),
                          ConsultTile(headName:"Ayush Gupta",
                          subHeadName: "App Developer",),
                          ConsultTile(headName: "Elon Musk",
                          subHeadName: 'Business'),

                        ],
                      )


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
