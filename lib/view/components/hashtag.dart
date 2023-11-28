import 'package:flutter/material.dart';
import 'package:techno_saz/res/data_class.dart';

class Hashtag extends StatelessWidget {
  const Hashtag({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
          3, 0, 3, size.height / 66.57),
      child: Container(
        // color: Colors.amber,
        height: size.height / 21.5,
        width: size.width / 1.02,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: DataClass.tagList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 0, 0),
              child: TextButton(
                
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "# ",
                      ),
                      Text(
                        DataClass.tagList[index].title,
                      ),
                    ],
                  ),
                ),
                onPressed: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
