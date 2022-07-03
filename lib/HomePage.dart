import 'package:connect/Chat.dart';
import 'package:connect/core/widgets/list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Chat10.dart';
import 'Chat11.dart';
import 'Chat12.dart';
import 'Chat13.dart';
import 'Chat14.dart';
import 'Chat15.dart';
import 'Chat16.dart';
import 'Chat17.dart';
import 'Chat18.dart';
import 'Chat2.dart';
import 'Chat3.dart';
import 'Chat4.dart';
import 'Chat5.dart';
import 'Chat6.dart';
import 'Chat7.dart';
import 'Chat8.dart';
import 'Chat9.dart';
import 'Profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int x = 0;
  int index = 0;

  bool isSearch = false;

  List list = [page1(), page2()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.blueGrey[900],
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      // const SizedBox(
                      //   height: 30,
                      // ),
                      Row(
                        children: [
                          MaterialButton(
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('images/4.jpeg'),
                              radius: 30.0,
                            ),
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Profile(),
                                    ));
                              });
                            },
                          ),
                          const SizedBox(
                            width: 124.0,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.wb_sunny),
                            color: Colors.white,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        children: const [
                          Text(
                            'Omar Abdel Aziz',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              overflow: TextOverflow.ellipsis,
                            ),
                            maxLines: 1,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: const [
                          Text(
                            '+201153083387',
                            style:
                                TextStyle(fontSize: 12.0, color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.blueGrey[800],
                height: 5,
                thickness: 1.2,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.group),
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        const Text(
                          'New Group',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person),
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        const Text(
                          'Contacts',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person_add_alt_1_sharp),
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        const Text(
                          'People Nearbly',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.save_alt),
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        const Text(
                          'Saved Message',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.phone),
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        const Text(
                          'Calls',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.settings),
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        const Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.blueGrey[800],
                height: 10,
                thickness: 1.2,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 2, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.person_add),
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Invite Freinds',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_box_rounded),
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Connect Features',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.blueGrey[800],
                height: 10,
                thickness: 0.8,
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 2, 0, 0),
                child: Container(
                  width: 220,
                  child: MaterialButton(
                    splashColor: Colors.grey,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white12,
                      ),
                      // width: 170,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.east),
                            color: Colors.white,
                          ),
                          // SizedBox(
                          //   width: 18,
                          // ),
                          Text(
                            'Go Home',
                            style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        titleSpacing: 10,
        title: !isSearch
            ? const Text(
                'Connect',
              )
            : TextField(
                cursorColor: Colors.blueGrey[900],
                minLines: 1,
                maxLines: 100,
                textDirection: TextDirection.rtl,
                style: const TextStyle(
                  color: Colors.white,
                ),
                decoration: const InputDecoration(
                    icon: Icon(Icons.search), hintText: 'Search'),
              ),
        actions: [
          isSearch
              ? IconButton(
                  icon: Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      this.isSearch = false;
                    });
                  })
              : IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    setState(() {
                      this.isSearch = true;
                    });
                  }),
        ],
        backgroundColor: Colors.blueGrey[600],
        elevation: 0.0,
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white10,
        selectedIndex: index,
        onDestinationSelected: (index) => setState(() {
          this.index = index;
        }),
        height: 60,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.chat_outlined),
            selectedIcon: Icon(
              Icons.chat_outlined,
              color: Colors.white,
            ),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: Icon(Icons.adjust),
            selectedIcon: Icon(
              Icons.adjust,
              color: Colors.white,
            ),
            label: 'Status',
          ),
          NavigationDestination(
            icon: Icon(Icons.call),
            selectedIcon: Icon(
              Icons.call,
              color: Colors.white,
            ),
            label: 'Calls',
          )
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.white10,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.chat),
      //       label: 'Chats',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.adjust),
      //       label: 'Status',
      //     ),
      //   ],
      //   currentIndex: x,
      //   selectedItemColor: Colors.blue,
      // ),
      body: list[index],
      backgroundColor: Colors.blueGrey[500],
    );
  }
}

class page1 extends StatelessWidget {
  const page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Chat()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/5.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Ahmed Fayez',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "How are You now ?, You Feel Better ?",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //1
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat2()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/18.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Mostafa Salem',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "Hey Bro .. How are you ?",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //2
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat3()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/17.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Amraan',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "أي أخويا عامل اي طمني عليك ياسطا واحشني اووي",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //3
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat4()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/3.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Vivian Emel',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "هنروح الجامعة بكرا الساعه 7 علشان عندنا امتحان",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //4
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat5()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/4.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Omar Zizo',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "أنا أستعمل الكونيكت الأن .",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //5
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat6()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/16.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'ENG: Mahmoud Sobih',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "حلو كل اللي أنا طالبه منكم فالأسيمنت ومش عاوز حاجه متسابه",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //6
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat7()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/15.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Hatem khaled',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "الزمتالك هيلعب أنهاردا ياخوياااااا",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //7
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat8()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/14.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Mostafa Future',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "عامل اي يا غالي واحشني",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //8
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat9()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/13.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Waleed',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "أي ياخويا الشغل عامل اي ؟ ",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //9
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat10()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/12.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Youssef Zakaria',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "عامل أي ياض يا عمر واحشني اوي مش هنشةفك ولا اي",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //10
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat11()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/11.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Amy Said',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "تعالالي دلوقتي يا عمر",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //11
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat12()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/10.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Mostafa Ehab',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "How are You now ?",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //12
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat13()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/9.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Oosha',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "اي يلااااا",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //13
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat14()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/8.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Said',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "How are You now ?",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //14
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat15()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/7.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Abdalla',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "How are You now ?",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //15
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat16()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/6.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Omar Essam',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "How are You now ?",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //16
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat17()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/1.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Amira Adel',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "عاوزين نعمل مشروع كبيبر ان شاء الله ف أخر الكورس",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //17
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Chat18()));
                },
                child: Row(
                  children: [
                    Column(
                      children: const [
                        CircleAvatar(
                          backgroundImage: AssetImage('images/2.jpeg'),
                          radius: 28.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: 150.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: const Text(
                              'Salma Essam',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                height: 1,
                              ),
                              maxLines: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: const Text(
                              "عمر أبعت الصور",
                              style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white54,
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 1,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ), //18
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                child: Divider(
                  color: Colors.blueGrey[800],
                  height: 10,
                  thickness: 1.2,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("images/1.jpeg"),
                ),
                Positioned(
                    right: 10,
                    bottom: 10,
                    child: Icon(Icons.add_circle_outlined)),
              ],
            ),
            Column(
              children: [
                Text(
                  "My status",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                Text(
                  "Tap to add status update",
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ],
        ),
        ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: list.length,
            itemBuilder: (BuildContext context, int index) {
              // final Message chat = chats[index];
              return Padding(
                padding: const EdgeInsets.only(left: 12, top: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundImage:
                                  AssetImage(list[index]['imagePath']!),
                              radius: 28.0,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Container(
                          width: 150.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                child: Text(
                                  list[index]['name']!,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis,
                                    height: 1,
                                  ),
                                  maxLines: 1,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Container(
                                width: double.infinity,
                                child: Text(
                                  list[index]['time']!,
                                  style: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white54,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 1,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ), //1
                    SizedBox(
                      height: 15.0,
                    ),
                    /*  Padding(
                  padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
                  child: Divider(
                    color: Colors.blueGrey[800],
                    height: 10,
                    thickness: 1.2,
                  ),
                ),*/
                  ],
                ),
              );
            }),
      ],
    );
  }
}
