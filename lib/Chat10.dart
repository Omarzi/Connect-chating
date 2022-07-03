import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share/share.dart';

class Chat10 extends StatefulWidget {
  const Chat10({Key? key}) : super(key: key);

  @override
  State<Chat10> createState() => _ChatState();
}

class _ChatState extends State<Chat10> {
  dynamic x;

  @override
  Widget build(BuildContext context) {
    TextEditingController n1 = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: double.infinity,
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/12.jpeg'),
                radius: 20.0,
              ),
              const SizedBox(
                width: 7.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DetailsPage()));
                },
                child: Container(
                  width: 97,
                  child: const Text(
                    'Youssef Zakaria',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              FlutterRingtonePlayer.play(
                android: AndroidSounds.ringtone,
                ios: IosSounds.bell,
                looping: false,
                volume: 0.6,
                // asAlarm: ,
              );
            },
            icon: Icon(
              Icons.phone,
            ),
          ),
          IconButton(
            onPressed: () {
              String text = n1.text.toString();
              Share.share(text.toString());
            },
            icon: Icon(
              Icons.share,
              size: 20.0,
              color: Colors.white,
            ),
          ),
        ],
        backgroundColor: Colors.blueGrey[600],
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                (x == null) ? Text('') : Image.file(x),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            width: double.infinity,
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 25.0,
                      backgroundColor: Colors.blueGrey,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.keyboard_voice_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5.0,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Colors.blueGrey[500],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        width: 153.0,
                        child: TextField(
                          cursorColor: Colors.blueGrey[900],
                          minLines: 1,
                          maxLines: 100,
                          controller: n1,
                          textDirection: TextDirection.rtl,
                          decoration: const InputDecoration(
                            hintText: 'Message',
                          ),
                        ),
                      ),
                      Container(
                        width: 50.0,
                        child: MaterialButton(
                          onPressed: () {
                            String text = n1.text.toString();
                            Share.share(text.toString());
                          },
                          child: IconButton(
                            onPressed: () async {
                              ImagePicker y = ImagePicker();
                              dynamic z =
                                  await y.getImage(source: ImageSource.camera);
                              setState(() {
                                if (z != null) x = File(z.path);
                              });
                            },
                            icon: Icon(
                              Icons.camera_alt_outlined,
                              size: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50.0,
                        child: MaterialButton(
                          onPressed: () {
                            String text = n1.text.toString();
                            Share.share(text.toString());
                          },
                          child: IconButton(
                            onPressed: () async {
                              ImagePicker y = ImagePicker();
                              dynamic z =
                                  await y.getImage(source: ImageSource.gallery);
                              setState(() {
                                if (z != null) x = File(z.path);
                              });
                            },
                            icon: Icon(
                              Icons.camera,
                              size: 20.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 17.0,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[600],
        elevation: 15.0,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 185,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // children: [Image.asset('images/5.jpeg')],
              children: const [
                CircleAvatar(
                  backgroundImage: AssetImage('images/12.jpeg'),
                  radius: 50.0,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Youssef Zakaria',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  '+201013063405',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Online',
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                  const Text(
                    'Audio',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                  const Text(
                    'Video',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 15.0,
              ),
              Column(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.search,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                  const Text(
                    'Search',
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            color: Colors.black38,
            width: double.infinity,
            height: 10.0,
            child: Row(
              children: [],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 10, 10),
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: const [
                        SizedBox(
                          width: 23,
                        ),
                        Text(
                          'صلي علي أشرف الخلق',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          '4 days ago',
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            color: Colors.black38,
            width: double.infinity,
            height: 10.0,
            child: Row(
              children: [],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      color: Colors.white54,
                    )),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Mute notifications',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.music_note,
                      color: Colors.white54,
                    )),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Custom notifications',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.photo,
                      color: Colors.white54,
                    )),
                SizedBox(
                  width: 12,
                ),
                Text(
                  'Media visibility',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            color: Colors.black38,
            width: double.infinity,
            height: 10.0,
            child: Row(
              children: [],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.block,
                          color: Colors.red,
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Block',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.lock,
                          color: Colors.red,
                        )),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Report',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black38,
            width: double.infinity,
            height: 29.0,
            child: Row(
              children: [],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.blueGrey[900],
    );
  }
}
