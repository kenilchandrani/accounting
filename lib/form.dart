import 'package:flutter/material.dart';

class form extends StatefulWidget {
  const form({super.key});

  @override
  State<form> createState() => _formState();
}

class _formState extends State<form> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F1F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF0F1F5),
        surfaceTintColor: Color(0xffF0F1F5),
        leading: Icon(Icons.format_align_left),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 33,
              width: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffD9D9D9),
              ),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Form",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            buildColumn("First Name", "Enter Your name", Icons.person, 52),
            SizedBox(height: 10),
            buildColumn("Last name", "Enter Last name", Icons.person, 52),
            SizedBox(height: 10),
            buildColumn("Amount", "Enter Amount", Icons.attach_money, 52),
            SizedBox(height: 10),
            buildColumn("Ledger_type", "Enter Ledger_type",
                Icons.my_library_books_outlined, 52),
            SizedBox(height: 10),
            buildColumn("Main_schedule", " Enter Main_schedule",
                Icons.calendar_month, 52),
            SizedBox(height: 10),
            buildColumn(
                "Sub_schedule", "Enter Sub_schedule", Icons.calendar_month, 52),
            SizedBox(height: 10),
            buildColumn("Ledger_group", "Enter ledger_group", Icons.groups, 52),
            SizedBox(height: 10),
            buildColumn("General_ledger_name", "Enter General_ledger_name",
                Icons.library_books_outlined, 52),
            SizedBox(height: 10),
            buildColumn("GL_remarks", "Enter GL_remarks",
                Icons.edit_calendar_outlined, 113),
            SizedBox(height: 10),
            Container(
              width: 360,
              height: 52,
              decoration: BoxDecoration(
                color: Color(0xff7FC4DC),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(3, 7),
                    blurRadius: 30,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
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

  Column buildColumn(
      String text, String hinttext, IconData icon, double Height) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        SizedBox(height: 5),
        Container(
          width: 360,
          height: Height,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(3, 7),
                  blurRadius: 30,
                ),
              ]),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(icon),
              hintText: hinttext,
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
