import 'package:flutter/material.dart';
import 'package:shop_app/pages/widgets/onboarding_button_widget.dart';
import 'package:shop_app/pages/widgets/onboarding_card_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final PageController controller = PageController();
    List<Widget> pages = [
      OnboardingPage(
          text: "1",
          controller: controller,
          onTap: () => controller.nextPage(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeIn)),
      OnboardingPage(
          text: "2",
          controller: controller,
          onTap: () => controller.nextPage(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeIn)),
      OnboardingPage(
          text: "3",
          controller: controller,
          onTap: () => controller.nextPage(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeIn)),
      OnboardingPage(
          text: "4",
          controller: controller,
          onTap: () => controller.nextPage(
              duration: const Duration(milliseconds: 600),
              curve: Curves.easeIn)),
    ];
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.close,
                color: theme.colorScheme.primary,
              )),
        ],
      ),
      body: SafeArea(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 16),
              SizedBox(
                height: 600,
                child: PageView.builder(
                  controller: controller,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              SmoothPageIndicator(
                controller: controller,
                count: 4,
                effect: CustomizableEffect(
                  spacing: 15,
                  activeDotDecoration: DotDecoration(
                    color: theme.colorScheme.onPrimary,
                    width: 8,
                    height: 8,
                    borderRadius: BorderRadius.circular(6),
                    dotBorder: DotBorder(
                      width: 2,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  dotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final PageController controller;

  const OnboardingPage(
      {Key? key,
      required this.text,
      required this.controller,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: CardWithText(
          text: text,
        ),
      ),
    ]);
  }
}
