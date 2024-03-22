import 'package:flutter/material.dart';

class NavigationBaar extends StatefulWidget {
  const NavigationBaar({
    super.key,
  });

  @override
  State<NavigationBaar> createState() => _NavigationBaarState();
}

class _NavigationBaarState extends State<NavigationBaar> {
  List dropDownListData = [
    {"title": "Analytics", "value": "1"},
    {"title": "Design", "value": "2"},
    {"title": "Engineering", "value": "1"},
    {"title": "Analytics", "value": "1"},
  ];

  String defaultValue = "";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[300],
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildHeader(context),
            buildmenuitem(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        // height: 200,

        // color: Colors.lightBlue,
        padding: EdgeInsets.only(
            top: 12 + MediaQuery.of(context).padding.top, bottom: 24),
        child: Column(
          children: [
            Text(
              "Manage.Me",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Color(0xff0094D9)),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 220,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff7FC4DC),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add),
                  SizedBox(width: 10),
                  Text(
                    "New Form",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  Widget buildmenuitem(BuildContext context) => Container(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Menu",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff64748B),
                  fontSize: 20),
            ),
            SizedBox(height: 15),
            Container(
              height: 48,
              width: 226,
              decoration: BoxDecoration(
                color: Color(0xffE5E6EE),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.grid_view),
                    SizedBox(width: 5),
                    Text(
                      "Overview",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff191D23)),
                    ),
                  ],
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                // SizedBox(
                //   height: 20,
                // ),
                InputDecorator(
                  decoration: InputDecoration(
                    disabledBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.all(10),
                  ),
                  child: DropdownButton(
                      // padding: EdgeInsets.only(right: 30),
                      borderRadius: BorderRadius.circular(8),
                      dropdownColor: Color(0xff7FC4DC),
                      isDense: true,
                      underline: SizedBox(),
                      value: defaultValue,
                      isExpanded: true,
                      menuMaxHeight: 350,
                      items: [
                        const DropdownMenuItem(
                          child: Row(
                            children: [
                              Icon(
                                Icons.supervised_user_circle_sharp,
                                size: 28,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Teams",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Color(0xff191D23)),
                              ),
                            ],
                          ),
                          value: "",
                        ),
                        ...dropDownListData
                            .map<DropdownMenuItem<String>>((data) {
                          return DropdownMenuItem(
                            child: Text(data['title']),
                            value: data['value'],
                          );
                        })
                      ],
                      onChanged: (value) {}),
                ),
              ],
            ),
            SizedBox(
              height: 220,
            ),
            Row(
              children: [
                Icon(Icons.settings),
                SizedBox(width: 5),
                Text(
                  "Settings",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(),
          ],
        ),
      );
}
