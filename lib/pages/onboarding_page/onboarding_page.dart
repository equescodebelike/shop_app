import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/navigation/app_router.dart';
import 'package:shop_app/pages/widgets/filled_button_widget.dart';
import 'package:shop_app/pages/widgets/onboarding_card_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

@RoutePage()
class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final PageController controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    List<Widget> pages = [
      OnboardingPage(
          text:
              "Покупайте продукты не выходя из дома или получайте бонусы за прогулку за ними.",
          controller: controller,
          onTap: () => controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn)),
      OnboardingPage(
          text:
              "Удобная навигация внутри магазина не позволит вам потеряться или что то забыть.",
          controller: controller,
          onTap: () => controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn)),
      OnboardingPage(
          text: "Делитесь корзиной с близкими и друзьями.",
          controller: controller,
          onTap: () => controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn)),
      OnboardingPage(
          text: "Приятной работы с приложением.",
          controller: controller,
          onTap: () => controller.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeIn)),
    ];
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                context.router.popAndPush(const ShowCaseRoute());
              },
              icon: Icon(
                Icons.close,
                color: theme.colorScheme.primary,
              )),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 405,
              child: PageView.builder(
                onPageChanged: (index) {
                  // TODO: допилить логику
                  setState(() => isLastPage = index == 3);
                },
                controller: controller,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
            ),
            isLastPage
                ? CustomFilledButton(
                    onTap: () => context.router.push(
                      const ShowCaseRoute(),
                    ),
                    text: "Начать",
                  )
                : CustomFilledButton(
                    onTap: () => controller.nextPage(
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn),
                    text: "Далее"),
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
        padding: const EdgeInsets.fromLTRB(20, 23, 20, 0),
        child: CardWithText(
          text: text.toUpperCase(),
        ),
      ),
    ]);
  }
}
