import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';
import 'package:techno_saz/screens/home_page.dart';

class Notifications extends StatefulWidget {
  double titleSize;
  Notifications({required this.titleSize});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> with TickerProviderStateMixin {
  late final TabController _tabController;

    @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
    @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: SolidColors.white,
        title: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                        child: SvgPicture.asset(Adress.save),
                      ),
                      Text(
                       "اعلان‌ها",
                        style: TextStyle(
                            fontSize: widget.titleSize,
                            color: SolidColors.textColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            },
                            child: SvgPicture.asset(Adress.arrowLeft),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          bottom: TabBar(
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              indicatorColor:Colors.black,
            controller: _tabController,
            tabs:const <Widget> [ Tab(text: "سیستمی",),
            Tab(text: "عمومی",) ]),
        ),
        body: TabBarView(
        controller: _tabController,
        children: const <Widget>[
          Center(
            child: Text("It's cloudy here"),
          ),
          
          Center(
            child: Text("It's rainy here"),
          )
        ],
      ),
    );
  }
}
