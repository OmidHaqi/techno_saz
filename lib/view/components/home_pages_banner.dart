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
    return Container(
      // color: const Color.fromARGB(255, 7, 255, 106),
      height: size.height / 3.3,
      width: size.width / 1.02,
      child: Stack(
        children: [
          PageView.builder(
            physics: BouncingScrollPhysics(),
            controller: pageController,
            itemCount: DataClass.ArticleManagementPagepublishedModelList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.fromLTRB(
                    3,
                    size.height / 66.57,
                   3,
                    size.height / 66.57),
                child: Container(
                  
                  height: size.height / 4.8,
                  width: size.width / 1.096,
                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        image: AssetImage(DataClass
                            .ArticleManagementPagepublishedModelList[index]
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
                          child: SvgPicture.asset(Address.wave),
                        ),
                        Positioned(
                          right: 20,
                          top: 55,
                          child: Container(
                            // color: Colors.amber,
                            width: size.width / 1.5,
                            height: size.height / 15,
                            child: Text(
                              DataClass
                                  .ArticleManagementPagepublishedModelList[
                                      index]
                                  .titleArticleUr,
                              style: TextStyle(
                                height: 1.5,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: SolidColors.onPrimaryColor,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 110,
                          right: 30,
                          child: TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              overlayColor: MaterialStateProperty.all(
                                  Color.fromARGB(81, 240, 217, 210)),
                              backgroundColor: MaterialStateProperty.all(
                                  SolidColors.primaryColor),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18),
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                              child: Text(
                                Strings.more_str,
                                style: TextStyle(
                                    color: SolidColors.onPrimaryColor),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          Align(
            alignment: Alignment(0, 0.70),
            child: SmoothPageIndicator(
              textDirection: TextDirection.rtl,
              controller: pageController,
              count: DataClass.ArticleManagementPagepublishedModelList.length,
              effect: SwapEffect(
               
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor:
                    AdaptiveTheme.of(context).brightness == Brightness.light
                        ? SolidColors.primaryColor
                        : SolidColors.primaryVariantColor,
                dotColor:
                    AdaptiveTheme.of(context).brightness == Brightness.light
                        ? SolidColors.primaryVariantColor
                        : SolidColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
