import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  String image_url;
  MovieCard({super.key, required this.image_url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          image_url,
          fit: BoxFit.cover,
          width: 120,
          height: 180,
        ),
      ),
    );
  }
}
