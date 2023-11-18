import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/screens/home_page.dart';

// ignore: must_be_immutable
class Notifications extends StatefulWidget {
  double titleSize;
  Notifications({required this.titleSize});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications>
    with TickerProviderStateMixin {
  /**
   * 
   */

  late final TabController _tabController;
  /**
   * 
   */
  @override
  void initState() {
    /**
     * 
     */
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    /**
     * 
     */
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                    child: SvgPicture.asset(Address.notification),
                  ),
                  Text(
                    "اعلان‌ها",
                    style: TextStyle(
                        fontSize: widget.titleSize,
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
                        child: SvgPicture.asset(Address.arrowLeft),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        /**
         * 
         */
        bottom: TabBar(
            physics: BouncingScrollPhysics(),
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            controller: _tabController,
            tabs: [
              Tab(
                text: "سیستمی",
              ),
              Tab(
                text: "عمومی",
              )
            ]),
      ),
      /**
       * 
       */
      body: TabBarView(
        physics: BouncingScrollPhysics(),
        controller: _tabController,
        children: [
          SysNotice(size: size),
          GeneralNotice(size: size),
        ],
      ),
    );
  }
}

class GeneralNotice extends StatelessWidget {
  const GeneralNotice({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, size.height / 58.25, 0, 0),
          child: SizedBox(
            width: size.width / 1.075,
            height: size.height / 1.29,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: Data_Class.NotificationsPagePublicModelList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(
                        0,
                        size.height / 49.05263157894737,
                        0,
                        size.height / 49.05263157894737),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(size.width / 21.5, 0, 0, 0),
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1000),
                              image: DecorationImage(
                                  image: AssetImage(Data_Class
                                      .NotificationsPagePublicModelList[index]
                                      .writerProfilePhotoUr),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              Data_Class.NotificationsPagePublicModelList[index]
                                      .writersName +
                                  "." +
                                  Data_Class
                                      .NotificationsPagePublicModelList[index]
                                      .noticeTitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 16),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Row(
                              children: [
                                Text(
                                  Data_Class
                                          .NotificationsPagePublicModelList[
                                              index]
                                          .aFewDaysOrHoursAgo +
                                      " | ",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  Data_Class
                                      .NotificationsPagePublicModelList[index]
                                      .whatTimeOfDay,
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            ),
                          ],
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 83,
                              height: 50,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: size.width / 47.77),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            image: AssetImage(Data_Class
                                                .NotificationsPagePublicModelList[
                                                    index]
                                                .imageArticleUr),
                                            fit: BoxFit.cover),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.more_vert),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}

class SysNotice extends StatelessWidget {
  const SysNotice({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, size.height / 58.25, 0, 0),
          child: SizedBox(
            width: size.width / 1.075,
            height: size.height / 1.29,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: Data_Class.NotificationsPageSystemModelList.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.fromLTRB(
                        0,
                        size.height / 155.3333333333333,
                        0,
                        size.height / 155.3333333333333),
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.fromLTRB(size.width / 21.5, 0, 0, 0),
                          child: Container(
                            height: 50,
                            width: 50,
                            child: SvgPicture.asset(
                              Data_Class.NotificationsPageSystemModelList[index]
                                  .iconNoticeUr,
                              height: size.height / 18.64,
                              width: size.width / .6,
                            ),
                          ),
                        ),
                        Text(
                          Data_Class.NotificationsPageSystemModelList[index]
                              .noticeText,
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: size.height / 42.36363636363636,
                              width: size.width / 11.31578947368421,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: SolidColors.primaryColor,
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  Data_Class
                                      .NotificationsPageSystemModelList[index]
                                      .timeNotice,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: SolidColors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        )
      ],
    );
  }
}
