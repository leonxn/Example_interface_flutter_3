import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  //const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 15,
            ),
            child: Icon(Icons.bookmark, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 5,
              right: 15,
            ),
            child: Icon(Icons.ios_share, color: Colors.black),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.network(
              "https://img.freepik.com/fotos-premium/juego-tronos-dragon-fondos-pantalla_881868-328.jpg"),
          Padding(
            padding: EdgeInsets.only(
              right: 15,
              left: 15,
              top: 12,
              bottom: 20,
            ),
            child: Text(
              "Monarch population soars 4,900 percent since last year in thrilling 2021 western migration",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.network(
                    "https://static.vecteezy.com/system/resources/previews/009/292/244/non_2x/default-avatar-icon-of-social-media-user-vector.jpg",
                    width: 65,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 140.0),
                child: Column(
                  children: [Text("By Carlos León")],
                ),
              ),
              Column(
                children: [Text("The Ago")],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 5,
              left: 5,
              top: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconOption(
                  '8 Comentarios',
                  Icons.chat_bubble,
                ),
                iconOption(
                  '34 Likes',
                  Icons.favorite,
                ),
                iconOption(
                  'Share',
                  Icons.share_rounded,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 32,
              left: 32,
              top: 5,
            ),
            child: Column(
              children: [
                Text(
                  "Cras sed urna elementum, sodales quam ut, tristique dui. Vivamus ultricies posuere lorem, non finibus lacus efficitur vel. In ultricies commodo leo, sit amet tincidunt nibh eleifend egestas. Ut ut volutpat nisl. Fusce neque augue, vestibulum quis accumsan a, efficitur quis arcu. Aenean vitae suscipit leo. Vestibulum dui est, sodales dapibus odio non, malesuada tincidunt felis. Integer cursus vulputate libero, at molestie risus auctor vel. Nunc ornare, tellus volutpat consectetur pharetra, felis quam tempus ex, nec vestibulum sapien justo id orci. Proin vel ipsum neque. Duis fringilla sapien sagittis, efficitur mi sed, luctus libero. Fusce consequat magna id mauris molestie egestas at quis dolor.",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 25.0,
                  top: 12,
                ),
                child: Icon(
                  Icons.arrow_circle_up_outlined,
                  size: 50.0,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

Widget iconOption(String accionLabel, IconData iconoOption) {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          iconoOption,
          color: Colors.black,
        ),
      ),
      Text(
        accionLabel,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ],
  );
}
