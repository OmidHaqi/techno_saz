import 'package:flutter/material.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/screens/appBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: appBar(),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 16, 2, 16),
                child: Container(
                  height: size.height / 4.8,
                  width: size.width / 1.09,
                  child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            Container(
                              height: size.height / 4.8,
                              width: size.width / 1.09,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(Adress.baner1))),
                            )
                          ],
                        );
                      }),
                ),
              )
            ]),
          ],
        ),
      ),
    );
  }
}
