import 'package:aura_web_app/utils/app_colors.dart';
import 'package:aura_web_app/utils/svgImage.dart';
import 'package:aura_web_app/utils/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class CitiesWidget extends StatelessWidget {
  const CitiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 128),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Explore Real Estate in Popular Indian Cities",
                  style: AppTextStyle.extraLarge55SizeText.copyWith(
                    color: AppColors.appBlackColor,
                    fontFamily: FontFamily.poppinsMedium,
                  ),
                ),
                Container(
                  height: 10,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.appGradientDarkColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 92),
          CityCarousel(),
        ],
      ),
    );
  }
}

class CityCarousel extends StatefulWidget {
  const CityCarousel({super.key});

  @override
  State<CityCarousel> createState() => _CityCarouselState();
}

class _CityCarouselState extends State<CityCarousel> {
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
                height: 322,
                child: ListView.builder(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10, // Replace with your real data count
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:  EdgeInsets.only(right: index != (9) ? 46.0 : 0),
                      child: SizedBox(width: 304, child: CityCards()),
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

class CityCards extends StatefulWidget {
  const CityCards({super.key});

  @override
  State<CityCards> createState() => _CityCardsState();
}

class _CityCardsState extends State<CityCards> {
  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();

  @override
  void initState() {
    super.initState();

    _scrollController1.addListener(() {
      if (_scrollController2.offset != _scrollController1.offset) {
        _scrollController2.jumpTo(_scrollController1.offset);
      }
    });

    _scrollController2.addListener(() {
      if (_scrollController1.offset != _scrollController2.offset) {
        _scrollController1.jumpTo(_scrollController2.offset);
      }
    });
  }

  @override
  void dispose() {
    _scrollController1.dispose();
    _scrollController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150,
          child: ListView.builder(
            controller: _scrollController1,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: 10,
            itemBuilder: (context, index) {
              return PropertyLocationCard(
                image: AppImage.landAsia.value,
                title: "Delhi/NCR",
                subtitle: "16,500+ Properties",
              );
            },
          ),
        ),
        const SizedBox(height: 22),
        SizedBox(
          height: 150,
          child: ListView.builder(
            controller: _scrollController2,
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: 10,
            itemBuilder: (context, index) {
              return PropertyLocationCard(
                image: AppImage.landAsia.value,
                title: "Mumbai",
                subtitle: "16,500+ Properties",
              );
            },
          ),
        ),
      ],
    );
  }
}

class PropertyLocationCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const PropertyLocationCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 304,
      margin: const EdgeInsets.only(right: 8),
      child: Row(
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.asset(image, width: 150,      height: 150,fit: BoxFit.cover,)),
          const SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    style: AppTextStyle.medium24Text.copyWith(
                      color: AppColors.appBlackColor,
                      fontFamily: FontFamily.poppinsSemiBold,
                    ),
                  ),

                  Text(
                    subtitle,
                    maxLines: 1,
                    style: AppTextStyle.small14Text.copyWith(
                      color: AppColors.appDarkGrayColor,
                      fontFamily: FontFamily.poppinsMedium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}