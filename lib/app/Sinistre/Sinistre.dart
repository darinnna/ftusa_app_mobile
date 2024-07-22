import 'package:flutter/material.dart';

class StepOne extends StatelessWidget {
  final bool option1Checked;
  final bool option2Checked;
  final Function(String, String) buildSquare;
  final Function(String, bool, Function(bool?) onChanged) buildCheckBox;

  StepOne(this.option1Checked, this.option2Checked, this.buildSquare,
      this.buildCheckBox);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 40),
            Center(
              child: Image.asset(
                "assets/images/Ftusa.png",
                width: 100,
                height: 100,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Type de déclaration',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color(0xFF38BFD9),
              ),
            ),
            SizedBox(height: 10),
            Divider(
              color: Color.fromARGB(255, 160, 158, 158),
              thickness: 1,
            ),
            SizedBox(height: 30),
            Text(
              'Combien de véhicules sont impliqués ?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildSquare('assets/images/vehicule.png', '1 Véhicule'),
                buildSquare('assets/images/vehicule2.png', '2 Véhicules'),
                buildSquare('assets/images/vehicule3.png', '3+ Véhicules'),
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Y\' a t-il des dégâts corporels ?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildCheckBox('Oui', option1Checked, (bool? value) {}),
                SizedBox(
                    width: 20), // Ajout d'un espace entre les cases à cocher
                buildCheckBox('Non', option2Checked, (bool? value) {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
