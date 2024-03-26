import 'package:blackcoffer/pages/explore.dart';
import 'package:blackcoffer/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myindex = 0;

  List<Widget> WidgetList = const [
    ExplorePage(),
    Text("Network"),
    Text("Chats"),
    Text("Contacts"),
    Text("Groups"),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(CupertinoIcons.add,
      color: Vx.white,),
      backgroundColor: const Color.fromARGB(255, 10, 38, 36),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
        backgroundColor: Vx.white,
        // drawer: Drawer(
        //   child: ListView(
        //     children: [
        //       ListTile(
        //         title: "Item1".text.make(),
        //         onTap: () {},
        //       )
        //     ],
        //   ),
        // ),
        appBar: AppBar(
          leading: Container(
              padding: EdgeInsets.only(top: 5),
              child: TextButton(
                child: Icon(
                  CupertinoIcons.line_horizontal_3_decrease,
                  color: Vx.white,
                  size: 35,
                ),
                onPressed: () {},
              )),
          actions: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 8),
                  //color: Colors.red,
                  height: 40, width: 40,
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(top: 3),
                  child: IconButton(
                      //splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      //color: Colors.red,
                      onPressed: () {
                        Navigator.pushNamed(context, Myroutes.refineRoute);
                      },
                      alignment: Alignment.centerLeft,
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              const Color.fromARGB(255, 10, 38, 36))),
                      icon: Icon(
                        Icons.filter_list_alt,
                        color: Vx.white,
                        size: 29,
                        //semanticLabel: "Refine",
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(right: 2),
                  height: 15,
                  //color: Vx.red600,
                  alignment: Alignment.topCenter,
                  //padding: EdgeInsets.only(bottom:3),
                  child: "Refine".text.size(5).color(Vx.white).make(),
                )
              ],
            ),
          ],
          title: Column(
            children: [
              Container(
                  alignment: Alignment.centerLeft,
                  child: "Howdy Harsh Singh !!"
                      .text
                      .color(Vx.white)
                      .fontWeight(FontWeight.w500)
                      .size(16)
                      .make()),
              SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  Container(
                    child: Icon(
                      CupertinoIcons.location_solid,
                      color: Vx.white,
                      size: 15,
                    ),
                  ),
                  Container(
                    child: "Patia, Bhubaneswar"
                        .text
                        .color(Vx.white)
                        .size(13)
                        .make(),
                  )
                ],
              )
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 10, 38, 36),
          bottom: TabBar(
              indicatorColor: Vx.white,
              indicatorSize: TabBarIndicatorSize.tab,
              splashFactory: NoSplash.splashFactory,
              indicator: UnderlineTabIndicator(),
              tabs: [
                Tab(child: "Personal".text.lg.color(Vx.white).make()),
                Tab(child: "Business".text.lg.color(Vx.white).make()),
                Tab(child: "Merchant".text.lg.color(Vx.white).make())
              ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 50,
          selectedItemColor: const Color.fromARGB(255, 10, 38, 36),
          unselectedItemColor: Vx.gray400,
          showUnselectedLabels: true,
          iconSize: 29,
          type: BottomNavigationBarType.fixed,
          currentIndex: myindex,
          onTap: (index) {
            setState(() {
              myindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.eye),
                label: "Explore",
                activeIcon: Icon(CupertinoIcons.eye_fill)),
            BottomNavigationBarItem(
                icon: Icon(Icons.lan_outlined),
                label: "Network",
                activeIcon: Icon(Icons.lan)),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.chat_bubble_text,
                ),
                label: "Chat",
                activeIcon: Icon(CupertinoIcons.chat_bubble_text_fill)),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.rectangle_stack_person_crop),
                label: "Contacts",
                activeIcon:
                    Icon(CupertinoIcons.rectangle_stack_person_crop_fill)),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.tag_rounded,
                  weight: 40,
                ),
                label: "Groups",
                activeIcon: Icon(Icons.tag)),
          ],
        ),
        body:
            // IndexedStack(
            //   children: WidgetList,
            //   index: myindex,

            // ),
            Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: 37,
                  width: MediaQuery.of(context).size.width / 1.3,
                  padding: EdgeInsets.only(left: 25),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextField(
                    //onChanged: (value) => runfilter(value),
                    decoration: InputDecoration(
                      //         border: OutlineInputBorder(
                      // borderRadius: BorderRadius.circular(20),
                      //     ),
                      enabledBorder: OutlineInputBorder(
                          //gapPadding: 20,

                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      focusedBorder: OutlineInputBorder(
                          //gapPadding: 20,

                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      isDense: true,
                      //isCollapsed: true,
                      //contentPadding: EdgeInsets.all(2),
                      prefixIcon: Container(
                        margin: EdgeInsets.only(bottom: 2),
                        padding: const EdgeInsets.only(left: 20.0, right: 20),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ),
                      // prefixIconConstraints:
                      //     BoxConstraints(minHeight: 20, maxWidth: 25),
                      hintText: "Search",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w400,
                          height: 1),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 7),
                  child: TextButton(
                    child: Icon(
                      CupertinoIcons.slider_horizontal_3,
                      size: 33,
                      color: const Color.fromARGB(255, 10, 38, 36),
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            // SizedBox(height: 40,),
            Expanded(child: WidgetList[myindex],)
          ],
        ),
      ),
    );
  }
}
