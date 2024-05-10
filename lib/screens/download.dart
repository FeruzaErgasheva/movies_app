import 'package:flutter/material.dart';
import 'package:movie_app/components/download_card.dart';

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 8, 49),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Download",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "List Movie",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade500,
                          letterSpacing: 1.4),
                    ),
                    Text(
                      "Downloading",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 21, 50, 212),
                          letterSpacing: 1.4),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1.5,
                  color: Colors.grey.shade200,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        color: Color.fromARGB(255, 21, 50, 212),
                        width: 190,
                        height: 1.5,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DownloadCard(
                    image_url:
                        "https://wwwimage-us.pplusstatic.com/thumbnails/photos/w370-q80/movie_asset/15/33/69/mg_salone_poster_1400x2100.jpg",
                    title: "Captain America: The First\nAvenger (2011)",
                    logo:
                        "https://www.freepnglogos.com/uploads/marvel-logo-png/marvel-studios-marvel-database-fandom-powered-wikia-10.png"),
                SizedBox(
                  height: 20,
                ),
                DownloadCard(
                    image_url:
                        "https://cdn.moviefone.com/admin-uploads/posters/fastx-movie-poster_1678807228.jpg?d=360x540&q=60",
                    title: "Disney's Aladdin",
                    logo:
                        "https://www.freepnglogos.com/uploads/marvel-logo-png/marvel-studios-marvel-database-fandom-powered-wikia-10.png")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
