import 'package:flutter/material.dart';
import 'package:flusa/app/Sinistre/SinistreBloc.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fond de l'interface en blanc
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Bonjour !', // Texte "Bonjour !"
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF38BFD9),
              ),
            ),
            SizedBox(height: 30), // Espacement entre le texte et l'image
            Image.asset(
              "assets/images/Ftusa.png",
              width: 100,
              height: 100,
            ),
            SizedBox(height: 50),
            DashboardButton(
              text: 'Sinistre',
              icon: Icons.car_crash,
              iconColor: Colors.white,
              backgroundColor: Color(0xFF2B6A7C).withOpacity(0.6),
              onPressed: () {

          Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SinistreBloc()),
);


              },
            ),
            DashboardButton(
              text: 'Remorquage',
              icon: Icons.local_shipping,
              iconColor: Colors.white,
              backgroundColor: Color(0xFF2B6A7C).withOpacity(0.6),
              onPressed: () {
                print('Button 2 clicked');
              },
            ),
            DashboardButton(
              text: 'Assistance Médicale',
              icon: Icons.local_hospital,
              iconColor: Colors.white,
              backgroundColor: Color(0xFF2B6A7C).withOpacity(0.6),
              onPressed: () {
                print('Button 3 clicked');
              },
            ),
            DashboardButton(
              text: 'Location',
              icon: Icons.directions_car,
              iconColor: Colors.white,
              backgroundColor: Color(0xFF2B6A7C).withOpacity(0.6),
              onPressed: () {
                print('Button 4 clicked');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const DashboardButton({
    required this.text,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
          backgroundColor: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 18),
            Icon(
              icon,
              color: iconColor,
              size: 25,
            ),
            SizedBox(width: 24), // Espacement entre l'icône et le texte
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

