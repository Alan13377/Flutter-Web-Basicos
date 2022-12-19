import 'package:flutter/material.dart';
import 'package:flutter_bases/locator.dart';
import 'package:flutter_bases/services/navigation_services.dart';
import 'package:flutter_bases/ui/widgets/custom_text_button.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, BoxConstraints constrains) {
      return (constrains.maxWidth > 520 ? _TabletDesktopMenu() : _MobileMenu());
    });
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(children: [
        CustomTextButton(
          text: "Contador Stateful",
          color: Colors.black,
          onPressed: () {
            locator<NavigationService>().navigateTo("/stateful");
            //navigationService.navigateTo("/stateful");
          },
        ),
        SizedBox(
          width: 10,
        ),
        CustomTextButton(
          onPressed: () {
            locator<NavigationService>().navigateTo("/riverpod");
            //navigationService.navigateTo("/riverpod");
          },
          text: "Contador Riverpod",
          color: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        CustomTextButton(
          onPressed: () {
            locator<NavigationService>().navigateTo("/noexiste");
            //navigationService.navigateTo("/noexiste");
          },
          text: "Otra Pagina",
          color: Colors.black,
        ),
      ]),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        CustomTextButton(
          text: "Contador Stateful",
          color: Colors.black,
          onPressed: () {
            locator<NavigationService>().navigateTo("/stateful");
            //navigationService.navigateTo("/stateful");
          },
        ),
        SizedBox(
          width: 10,
        ),
        CustomTextButton(
          onPressed: () {
            locator<NavigationService>().navigateTo("/riverpod");
            //navigationService.navigateTo("/riverpod");
          },
          text: "Contador Riverpod",
          color: Colors.black,
        ),
        SizedBox(
          width: 10,
        ),
        CustomTextButton(
          onPressed: () {
            locator<NavigationService>().navigateTo("/noexiste");
            //navigationService.navigateTo("/noexiste");
          },
          text: "Otra Pagina",
          color: Colors.black,
        ),
      ]),
    );
  }
}
