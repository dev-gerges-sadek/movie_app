import 'package:assessment1/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Map<String, dynamic>> movies = [
    {'Color': Colors.grey, 'image': 'assets/Narcos.png'},
    {'Color': Colors.yellow, 'image': 'assets/Annabelle.png'},
    {'Color': Colors.grey, 'image': 'assets/May18.png'},
    {'Color': Colors.grey, 'image': 'assets/ToyStory.png'},
    {'Color': Colors.grey, 'image': 'assets/Narcos.png'},
    {'Color': Colors.yellow, 'image': 'assets/Annabelle.png'},
    {'Color': Colors.grey, 'image': 'assets/May18.png'},
    {'Color': Colors.grey, 'image': 'assets/ToyStory.png'},
    {'Color': Colors.grey, 'image': 'assets/Narcos.png'},
  ];
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: bottomBar(),

        // bottomNavigationBar: BottomAppBar(
        //   color: const Color.fromARGB(255, 48, 46, 46),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       Expanded(
        //         child: Column(
        //           mainAxisSize: MainAxisSize.min,
        //           children: [
        //             Column(
        //               mainAxisSize: MainAxisSize.min,
        //               children: [
        //                 IconButton(
        //                   onPressed: () {},
        //                   icon: Icon(Icons.home),
        //                   color: Colors.yellowAccent,
        //                   iconSize: 30,
        //                 ),
        //                 Text(
        //                   'Home',
        //                   style: TextStyle(color: Colors.white, fontSize: 12),
        //                 ),
        //               ],
        //             ),
        //             Column(
        //               mainAxisSize: MainAxisSize.min,
        //               children: [
        //                 IconButton(
        //                   onPressed: () {},
        //                   icon: Icon(Icons.search),
        //                   color: Colors.white,
        //                 ),
        //                 Text(
        //                   'Search',
        //                   style: TextStyle(color: Colors.white, fontSize: 12),
        //                 ),
        //               ],
        //             ),
        //             Column(
        //               mainAxisSize: MainAxisSize.min,
        //               children: [
        //                 IconButton(
        //                   onPressed: () {},
        //                   icon: Icon(Icons.movie),
        //                   color: Colors.white,
        //                 ),
        //                 Text(
        //                   'Movies',
        //                   style: TextStyle(color: Colors.white, fontSize: 12),
        //                 ),
        //               ],
        //             ),
        //             Column(
        //               mainAxisSize: MainAxisSize.min,
        //               children: [
        //                 IconButton(
        //                   onPressed: () {},
        //                   icon: Icon(Icons.bookmarks),
        //                   color: Colors.white,
        //                 ),
        //                 Text(
        //                   'Bookmarks',
        //                   style: TextStyle(color: Colors.white, fontSize: 12),
        //                 ),
        //               ],
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Dora.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned.fill(
                    child: Center(
                      child: Icon(
                        Icons.play_circle_fill_rounded,
                        size: 100,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 8),

              SizedBox(
                width: double.infinity,
                child: Text(
                  'Dora and The Lost City of Gold     .',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),

              SizedBox(
                width: double.infinity,
                child: Text(
                  '2019 • PG-13 • 2h 7m',
                  textAlign: TextAlign.center,

                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
              ),

              const SizedBox(height: 20),
              Container(
                height: 220,
                width: double.infinity,
                color: const Color.fromARGB(255, 71, 70, 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: Text(
                        'New Releases',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: movies.length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 100,
                            margin: const EdgeInsets.only(left: 12),
                            child: Stack(
                              children: [
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        movies[index]['image']!,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),

                                Positioned(
                                  top: 6,
                                  left: 6,
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.bookmark_add),
                                    color: movies[index]['Color']!,
                                    iconSize: 22,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 220,
                width: double.infinity,
                color: const Color.fromARGB(255, 71, 70, 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 8,
                      ),
                      child: Text(
                        'Recommended',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,

                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 110,
                            margin: const EdgeInsets.only(left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      height: 120,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          image: AssetImage('assets/May18.png'),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 6,
                                      left: 6,
                                      child: Icon(
                                        Icons.bookmark_add,
                                        color: Colors.grey,
                                        size: 22,
                                      ),
                                    ),
                                  ],
                                ),

                                Expanded(
                                  child: const Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 14,
                                      ),

                                      Text(
                                        '7.7',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                Expanded(
                                  child: const Text(
                                    'Deadpool 2',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: const Text(
                                    '2018 • R • 1h 59m',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 11,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
