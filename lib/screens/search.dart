import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/components/movie_card.dart';
import 'package:movie_app/components/search_genereator.dart';

// class SearchPage extends StatelessWidget {
//   const SearchPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: const Color.fromARGB(255, 1, 8, 49),
//         body: SafeArea(
//           child: SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextField(
//                     style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.grey.shade400,
//                         letterSpacing: 1.1),
//                     decoration: InputDecoration(
//                       prefixIcon: Icon(
//                         Icons.search,
//                         color: Colors.grey.shade400,
//                       ),
//                       hintStyle: TextStyle(
//                           fontSize: 14,
//                           color: Colors.grey.shade400,
//                           letterSpacing: 1.1),
//                       hintText: "Search by title, genre, actor",
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide.none,
//                           borderRadius: BorderRadius.circular(50)),
//                       filled: true,
//                       fillColor:
//                           Color.fromARGB(255, 161, 161, 161).withOpacity(0.5),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Text(
//                     "Recent Searches",
//                     style: TextStyle(
//                         letterSpacing: 1.1,
//                         fontSize: 15,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w300),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   Column(
//                     children: [
//                       Row(
//                         children: [
//                           SearchGenerator(
//                             text: "Marvel",
//                           ),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           SearchGenerator(text: "Captain america")
//                         ],
//                       ),
//                       SizedBox(
//                         height: 15,
//                       ),
//                       Row(
//                         children: [
//                           SearchGenerator(text: "Captain Marvel"),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           SearchGenerator(text: "Thar"),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),

//                   //popular
//                   Text(
//                     "Popular",
//                     style: TextStyle(
//                         letterSpacing: 1.1,
//                         fontSize: 15,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w300),
//                   ),

//                   SizedBox(
//                     height: 15,
//                   ),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: [
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpe9YT-aHu8mEnSTwPhyVx_GcVyWDZf-x3QGJFKgqX9w&s"),
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCmmRcsMcWQpOPHe1Xq5RAoc3MlUvkcNrJbxYqDxsvmg&s"),
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzrakL3yHEwPcThszwwpJ3jkhl3tRnDhFYmNgCMz_cWg&s"),
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj52EL1N_TphnrH930jmRTfp8RAGhvCFA7QtMq8hBuEw&s"),
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpe9YT-aHu8mEnSTwPhyVx_GcVyWDZf-x3QGJFKgqX9w&s"),
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpe9YT-aHu8mEnSTwPhyVx_GcVyWDZf-x3QGJFKgqX9w&s"),
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpe9YT-aHu8mEnSTwPhyVx_GcVyWDZf-x3QGJFKgqX9w&s"),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                   //recommendations for you
//                   Text(
//                     "Recommendations for you",
//                     style: TextStyle(
//                         letterSpacing: 1.1,
//                         fontSize: 15,
//                         color: Colors.white,
//                         fontWeight: FontWeight.w300),
//                   ),
//                   SizedBox(
//                     height: 15,
//                   ),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: [
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpe9YT-aHu8mEnSTwPhyVx_GcVyWDZf-x3QGJFKgqX9w&s"),
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCmmRcsMcWQpOPHe1Xq5RAoc3MlUvkcNrJbxYqDxsvmg&s"),
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzrakL3yHEwPcThszwwpJ3jkhl3tRnDhFYmNgCMz_cWg&s"),
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQj52EL1N_TphnrH930jmRTfp8RAGhvCFA7QtMq8hBuEw&s"),
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpe9YT-aHu8mEnSTwPhyVx_GcVyWDZf-x3QGJFKgqX9w&s"),
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpe9YT-aHu8mEnSTwPhyVx_GcVyWDZf-x3QGJFKgqX9w&s"),
//                         MovieCard(
//                             image_url:
//                                 "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpe9YT-aHu8mEnSTwPhyVx_GcVyWDZf-x3QGJFKgqX9w&s"),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 8, 49),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade400,
                      letterSpacing: 1.1),
                  decoration: InputDecoration(
                    suffixIcon: Icon(
                      CupertinoIcons.xmark_circle,
                      size: 30,
                      color: Colors.grey.shade500,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade400,
                    ),
                    hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade400,
                        letterSpacing: 1.1),
                    hintText: "Death Note",
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(50)),
                    filled: true,
                    fillColor:
                        Color.fromARGB(255, 161, 161, 161).withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Results for comedy",
                  style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 16,
                      color: Colors.grey.shade400),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        MovieCard(
                            image_url:
                                "https://m.media-amazon.com/images/I/716ASj7z2GL._AC_UF894,1000_QL80_.jpg"),
                        MovieCard(
                            image_url:
                                "https://m.media-amazon.com/images/I/716ASj7z2GL._AC_UF894,1000_QL80_.jpg"),
                        MovieCard(
                            image_url:
                                "https://m.media-amazon.com/images/I/716ASj7z2GL._AC_UF894,1000_QL80_.jpg"),
                      ],
                    ),
                    Row(
                      children: [
                        MovieCard(
                            image_url:
                                "https://m.media-amazon.com/images/I/716ASj7z2GL._AC_UF894,1000_QL80_.jpg"),
                        MovieCard(
                            image_url:
                                "https://m.media-amazon.com/images/I/716ASj7z2GL._AC_UF894,1000_QL80_.jpg"),
                        MovieCard(
                            image_url:
                                "https://m.media-amazon.com/images/I/716ASj7z2GL._AC_UF894,1000_QL80_.jpg"),
                      ],
                    ),
                    Row(
                      children: [
                        MovieCard(
                            image_url:
                                "https://m.media-amazon.com/images/I/716ASj7z2GL._AC_UF894,1000_QL80_.jpg"),
                        MovieCard(
                            image_url:
                                "https://m.media-amazon.com/images/I/716ASj7z2GL._AC_UF894,1000_QL80_.jpg"),
                        MovieCard(
                            image_url:
                                "https://m.media-amazon.com/images/I/716ASj7z2GL._AC_UF894,1000_QL80_.jpg"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
