import 'package:flutter/material.dart';

class FormDetails extends StatefulWidget {
  const FormDetails({super.key});

  @override
  State<FormDetails> createState() => _FormDetailsState();
}

class _FormDetailsState extends State<FormDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F1F5),
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        backgroundColor: Color(0xffF0F1F5),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Icon(Icons.format_align_left_outlined),
                  ]),
                  Row(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xffD9D9D9),
                            child: IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () {
                                ();
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 10),
                      Column(
                        children: [
                          Container(
                            height: 33,
                            width: 33,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffD9D9D9),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  Text(
                    "Form Details",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ListView(
                shrinkWrap: true,
                children: [
                  buildContainer(),
                  SizedBox(height: 8),
                  buildContainer(),
                  SizedBox(height: 8),
                  buildContainer(),
                  SizedBox(height: 8),
                  buildContainer(),
                  SizedBox(height: 8),
                  buildContainer(),
                  SizedBox(height: 8),
                  buildContainer(),
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

  Container buildContainer() {
    return Container(
      height: 150,
      width: 333,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffffffff),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ledger Type",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff7FC4DC),
                        ),
                        child: Icon(
                          Icons.edit_outlined,
                          size: 15,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff7FC4DC),
                        ),
                        child: Icon(
                          Icons.delete,
                          size: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Main_schedule",
                      style: TextStyle(
                          color: Color(0xffA7A5A5),
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Sub_schedule",
                      style: TextStyle(
                          color: Color(0xffA7A5A5),
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "GL_remarks",
                      style: TextStyle(
                          color: Color(0xffA7A5A5),
                          fontWeight: FontWeight.bold,
                          fontSize: 13),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50, bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ledger_group",
                        style: TextStyle(
                            color: Color(0xffA7A5A5),
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "General_ledger_name",
                        style: TextStyle(
                            color: Color(0xffA7A5A5),
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
