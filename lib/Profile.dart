import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey[600],
      ),
      body: Column(
        children: [
          Container(
              width: double.infinity,
              height: 190,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      const CircleAvatar(
                        radius: 75,
                        backgroundImage: AssetImage('images/4.jpeg'),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(
                            bottom: 3.0, end: 3.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.camera_alt_outlined,
                                  color: Colors.white,
                                ),
                              ),
                              radius: 20.0,
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                  color: Colors.grey,
                ),
                const Text(
                  'Omar Abdel Aziz',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Icon(
                  Icons.edit,
                  color: Colors.lightGreen[600],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: 250,
                child: Divider(
                  color: Colors.grey,
                  height: 20,
                  thickness: 0.5,
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey[500],
    );
  }
}
