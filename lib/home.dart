import 'package:flutter/material.dart';
import 'i18n/intl_localization.dart';

class DemoMultiLing extends StatefulWidget {
  const DemoMultiLing({super.key});

  @override
  _DemoMultiLingState createState() => _DemoMultiLingState();
}

class _DemoMultiLingState extends State<DemoMultiLing> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            // Mode portrait
            return const PortraitLayout();
          } else {
            // Mode paysage
            return const LandscapeLayout();
          }
        },
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  const PortraitLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // Image en arrière-plan
        Image.asset(
          'assets/image/naruto.jpg',
          // Utilisez le bon chemin vers votre image
          fit: BoxFit.cover,
        ),
        Center(
          child: Card(
            elevation: 4.0,
            margin: EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              width: MediaQuery.of(context).size.width * 0.75,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    Locs.of(context).trans('MESSAGE'), // Utilisez la traduction ici
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  const LandscapeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Center(
          child: Card(
            elevation: 4.0,
            margin: EdgeInsets.all(16.0),
            child: Container(
              padding: EdgeInsets.all(16.0),
              width: MediaQuery.of(context).size.width * 0.75,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          Locs.of(context).trans('MESSAGE'), // Utilisez la traduction ici
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/image/naruto.jpg', // Utilisez le bon chemin vers votre image
                      height: 100.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}