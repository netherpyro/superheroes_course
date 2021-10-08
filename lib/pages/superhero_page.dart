import 'package:flutter/material.dart';
import 'package:superheroes/resources/superheroes_colors.dart';
import 'package:superheroes/widgets/action_button.dart';

class SuperheroPage extends StatelessWidget {
  final String name;

  const SuperheroPage({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SuperheroesColors.background,
      body: SafeArea(
        child: Stack(
          children: [
            Center(
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: SuperheroesColors.white,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ActionButton(
                text: "Back".toUpperCase(),
                onTap: () => Navigator.of(context).pop(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
