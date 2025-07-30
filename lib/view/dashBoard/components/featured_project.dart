import 'package:aura_web_app/global_variable.dart';
import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/svgImage.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FeaturedProject extends StatelessWidget {
  const FeaturedProject({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Breakpoints.isDesktop(context) ? 128 : 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Featured Project",
                  style: AppTextStyle.extraLarge55SizeText.copyWith(
                    color: AppColors.appBlackColor,
                    fontSize :Breakpoints.isDesktop(context) ? 55 : 26,
                    fontFamily: FontFamily.poppinsMedium,
                  ),
                ),
                Container(
                  height: Breakpoints.isDesktop(context) ? 10 : 3,
                  width: Breakpoints.isDesktop(context) ? 300 : 100,
                  decoration: BoxDecoration(
                    color: AppColors.appGradientDarkColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 92),
          PropertyCarousel(),
        ],
      ),
    );
  }
}

class PropertyCarousel extends StatefulWidget {
  const PropertyCarousel({super.key});

  @override
  State<PropertyCarousel> createState() => _PropertyCarouselState();
}

class _PropertyCarouselState extends State<PropertyCarousel> {
  final ScrollController _controller = ScrollController();
  int visibleCards = 3;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 600) {
      visibleCards = 1;
    } else if (screenWidth < 1000) {
      visibleCards = 2;
    } else {
      visibleCards = 3;
    }
  }

  void scrollLeft() {
    double offset =
        _controller.offset -
        (_controller.position.viewportDimension / visibleCards) * visibleCards;
    _controller.animateTo(
      offset.clamp(0.0, _controller.position.maxScrollExtent),
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  void scrollRight() {
    double offset =
        _controller.offset +
        (_controller.position.viewportDimension / visibleCards) * visibleCards;
    _controller.animateTo(
      offset.clamp(0.0, _controller.position.maxScrollExtent),
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 47),
              child: GestureDetector(
                onTap: scrollLeft,
                child: SvgPicture.asset(SvgImage.back.value),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 498,
                child: ListView.builder(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10, // Replace with your real data count
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.only(right: index != (9) ? 68.0 : 0),
                      child: SizedBox(width: 401, child: PropertyCards()),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 47),
              child: GestureDetector(
                onTap: scrollRight,
                child: SvgPicture.asset(SvgImage.forward.value),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PropertyCards extends StatelessWidget {
  const PropertyCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            AppImage.landAsia.value,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 284.15,
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Vikram Jyoti Woods",
                  style: AppTextStyle.medium24Text.copyWith(
                    color: AppColors.appBlackColor,
                    fontFamily: FontFamily.poppinsMedium,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "5 BHK Independent House/Villa, Whitefield, Bangalore East",
                  style: AppTextStyle.medium20Text.copyWith(
                    color: Color(0xff7C7C7C),
                    fontFamily: FontFamily.poppinsMedium,
                  ),
                ),

                SizedBox(height: 12),
                Text(
                  "₹ 4.6 - 4.8 Cr",
                  style: AppTextStyle.medium24Text.copyWith(
                    color: AppColors.appGradientDarkColor,
                    fontFamily: FontFamily.poppinsSemiBold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
