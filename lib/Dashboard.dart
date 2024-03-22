import 'package:flutter/material.dart';

import 'NavigatonBar.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavigationBaar(),
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.help_center),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  width: 420,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Overview",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                    ),
                  ),
                ),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 60, horizontal: 20),
                    child: SizedBox(
                      height: 200,
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          buildContainer(),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 100,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Color(0xff7FC4DC),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 5),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.wallet,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Total Salary",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 60,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "₹",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Total Salary",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          buildContainer(),
                        ],
                      ),
                    ),
                  ),
                ),
                // Positioned(child:  menubtn(press: (){
                //    const MenuScreen();
                //   print("");
                // },),),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: SizedBox(
                height: 120,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      // height: 75,
                      width: 135,
                      decoration: BoxDecoration(
                        color: Color(0xff7FC4DC),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Color(0xff99CFE3),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    color: Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    size: 18,
                                    color: Color(0xff7FC4DC),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Savings",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    buildContainer1(
                        iconData: Icons.ring_volume, text: "Reminders"),
                    SizedBox(
                      width: 15,
                    ),
                    buildContainer1(iconData: Icons.add, text: "subtitle"),
                    SizedBox(
                      width: 15,
                    ),
                    buildContainer1(
                        iconData: Icons.rice_bowl_rounded, text: "title"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest Entries",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 22),
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Color(0xffD5D5F0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.pages_rounded),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 46,
                        width: 46,
                        decoration: BoxDecoration(
                            color: Color(0xffE5F3F8),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Food",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          Text(
                            "20 Feb 2024",
                            style: TextStyle(color: Color(0xffB1B1B1)),
                          )
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "-\$200 + Vat 1%",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 14),
                      ),
                      Text(
                        "Google Pay",
                        style: TextStyle(color: Color(0xffB1B1B1)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff7FC4DC),
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  ();
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  ();
                },
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    ();
                  },
                ),
              ),
              IconButton(
                icon: const Icon(Icons.favorite_border_outlined),
                onPressed: () {
                  ();
                },
              ),
              IconButton(
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () {
                  ();
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer1({required IconData iconData, required text}) {
    return Container(
      height: 75,
      width: 140,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 2,
            spreadRadius: 1,
            offset: Offset(2, -2),
            color: Colors.white10,
          ),
        ],
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: Color(0xffE5E1EE),
                borderRadius: BorderRadius.circular(6)),
            child: Icon(iconData),
          ),
          SizedBox(height: 10),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Container buildContainer() {
    return Container(
      height: 100,
      width: 130,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.wallet,
                  color: Color(0xffC8C8C8),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Total Salary",
                  style: TextStyle(
                      color: Color(0xffC8C8C8),
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "₹",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Total Salary",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
