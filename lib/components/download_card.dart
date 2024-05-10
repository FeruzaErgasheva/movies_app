import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DownloadCard extends StatelessWidget {
  String image_url;
  String title;
  String logo;
  DownloadCard(
      {super.key,
      required this.image_url,
      required this.title,
      required this.logo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.grey.shade600.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20)),
      // padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                image_url,
                fit: BoxFit.cover,
                width: 120,
                height: 120,
              )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    logo,
                    width: 50,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 1.5,
                                width: 120,
                                color: Colors.grey,
                                child: Row(
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 1.5,
                                      color: const Color.fromARGB(
                                          255, 42, 60, 163),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "720k/s",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.indigo,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text(
                                "250MB/1.5GB",
                                style: TextStyle(
                                    fontSize: 10, color: Colors.grey.shade400),
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        CupertinoIcons.play_circle,
                        color: Colors.grey.shade500,
                        size: 26,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.grey.shade500,
                        size: 26,
                      )
                    ],
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
