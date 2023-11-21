import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:techno_saz/res/colors.dart';
import 'package:techno_saz/res/data_class.dart';
import 'package:techno_saz/res/paths.dart';
import 'package:techno_saz/res/strings.dart';

class HomePageBanner extends StatelessWidget {
  const HomePageBanner({
    super.key,
    required this.size,
    required this.pageController,
  });

  final Size size;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: 250,
      child: Stack(
        children: [
          PageView.builder(
            physics: BouncingScrollPhysics(),
            controller: pageController,
            itemCount:
                DataClass.ArticleManagementPagepublishedModelList.length,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 1, 0, 16),
                    child: SizedBox(
                      height: size.height / 3.9,
                      width: size.width / 1.02,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(8, 0, 4, 0),
                        child: Container(
                          height: size.height / 4.5,
                          width: size.width / 1.04,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            image: DecorationImage(
                                image: AssetImage(DataClass
                                    .ArticleManagementPagepublishedModelList[
                                        index]
                                    .imageArticleUr),
                                fit: BoxFit.cover),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              gradient: LinearGradient(
                                  colors: GradientColors.onBaner,
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 0,
                                  left: 0,
                                  child:
                                      SvgPicture.asset(Address.wave),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 75,
                                  child: Text(
                                    DataClass
                                        .ArticleManagementPagepublishedModelList[
                                            index]
                                        .titleArticleUr,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color:
                                          SolidColors.onPrimaryColor,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 110,
                                  right: 30,
                                  child: TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      overlayColor:
                                          MaterialStateProperty.all(
                                              Color.fromARGB(
                                                  81, 240, 217, 210)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              SolidColors
                                                  .primaryColor),
                                      shape:
                                          MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(
                                                  18),
                                        ),
                                      ),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(
                                              16, 0, 16, 0),
                                      child: Text(
                                        Strings.more_str,
                                        style: TextStyle(
                                            color: SolidColors
                                                .onPrimaryColor),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Align(
            alignment: Alignment(0, 0.70),
            child: SmoothPageIndicator(
              textDirection: TextDirection.rtl,
              controller: pageController,
              count: DataClass.ArticleManagementPagepublishedModelList.length,
              effect: ExpandingDotsEffect(
                  dotHeight: 10,
                  dotWidth: 10,
                  activeDotColor:
                      AdaptiveTheme.of(context).brightness ==
                              Brightness.light
                          ? SolidColors.primaryColor
                          : SolidColors.primaryVariantColor,
                          dotColor: AdaptiveTheme.of(context).brightness ==
                              Brightness.light
                          ? SolidColors.primaryVariantColor
                          : SolidColors.primaryColor, ),
            ),
          ),
        ],
      ),
    );
  }
}
