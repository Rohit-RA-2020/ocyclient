import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ocyclient/blocs/navigation_bloc.dart';
import 'package:ocyclient/widgets/Utils/common_widgets.dart';
import 'package:provider/provider.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    NavigationBloc nb = Provider.of<NavigationBloc>(context);

    return Container(
      color: const Color(0xff0f254e),
      height: size.width <= 700 ? null : 300,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 40,
          ),
          size.width > 700
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    about(size),
                    contactUs(size),
                    legal(size, nb),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    about(size),
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        contactUs(size),
                        legal(size, nb),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
        ],
      ),
    );
  }

  Widget contactUs(Size size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Contact Us",
          style: TextStyle(
            color: Colors.white54,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        getIconButton(
          title: "Email",
          func: () {
            // nb.toRoute("/licenses");
          },
          icon: FontAwesomeIcons.envelope,
        ),
        const SizedBox(
          height: 20,
        ),
        getIconButton(
          title: "FAQ",
          func: () {
            // nb.toRoute("/licenses");
          },
          icon: FontAwesomeIcons.question,
        ),
        const SizedBox(
          height: 20,
        ),
        getIconButton(
          title: "Support",
          func: () {
            // nb.toRoute("/licenses");
          },
          icon: FontAwesomeIcons.headset,
        ),
      ],
    );
  }

  Widget legal(Size size, NavigationBloc nb) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Legal",
          style: TextStyle(color: Colors.white54),
        ),
        const SizedBox(
          height: 20,
        ),
        getIconButton(
          title: "Terms",
          func: () {
            // nb.toRoute("/licenses");
          },
          icon: FontAwesomeIcons.scaleBalanced,
        ),
        const SizedBox(
          height: 20,
        ),
        getIconButton(
          title: "Privacy",
          func: () {
            // nb.toRoute("/licenses");
          },
          icon: FontAwesomeIcons.userShield,
        ),
        const SizedBox(
          height: 20,
        ),
        getIconButton(
          title: "Licenses",
          func: () {
            nb.toRoute("/licenses");
          },
          icon: FontAwesomeIcons.fileInvoice,
        ),
      ],
    );
  }

  Widget about(Size size) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: "{",
            style: TextStyle(
              fontSize: size.width < 1100 && size.width > 900 ? 14 : 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: "ProximaNova",
            ),
            children: <TextSpan>[
              TextSpan(
                text: " Open ",
                style: TextStyle(
                  fontSize: size.width < 1100 && size.width > 900 ? 14 : 20,
                  fontWeight: FontWeight.normal,
                  color: Colors.white38,
                ),
              ),
              TextSpan(
                text: "Codeyard ",
                style: TextStyle(
                  fontSize: size.width < 1100 && size.width > 900 ? 14 : 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: "} ;",
                style: TextStyle(
                  fontSize: size.width < 1100 && size.width > 900 ? 14 : 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: 30,
                height: 30,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: getIconForButton(FontAwesomeIcons.discord),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: 30,
                height: 30,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: getIconForButton(FontAwesomeIcons.github),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: 30,
                height: 30,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: getIconForButton(FontAwesomeIcons.linkedinIn),
                  ),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                width: 30,
                height: 30,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {},
                    child: getIconForButton(FontAwesomeIcons.youtube),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 40,
        ),
        const Text(
          "Made with ❤ \nby Shatanik Mahanty",
          textAlign: TextAlign.center,
          style: TextStyle(
            height: 1.5,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: "ProximaNova",
            fontSize: 19,
          ),
        ),
      ],
    );
  }

  List<Widget> getFooterWidgets(Size size, NavigationBloc nb) {
    return [
      about(size),
      contactUs(size),
      legal(size, nb),
    ];
  }
}
