// import 'dart:convert';
// import 'package:flutter/material.dart';

// import 'package:http/http.dart' as http;

// import '../Dashboard/Dashboard.dart';
// import '../auth/Signup.dart';

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   late TextEditingController _cinController = TextEditingController()
//     ..text = "Assurehkhgfdd";
//   late TextEditingController _contratController = TextEditingController()
//     ..text = "Cf3b1D0534";
//   bool _rememberMe = false;

//   Future<void> _Login() async {
//     // Get user credentials from text controllers
//     String cin = _cinController.text.trim();
//     String numberContrat = _contratController.text.trim();

//     // API endpoint for login
//     String apiUrl =
//         'https://repo.dev2.addinn.com/alfresco/s/com/addinn/post/Authentification';

//     // String apiUrl = 'http://10.0.2.2:5000/login'; // api flask

//     try {
//       // Send a POST request to the server with user credentials
//       var response = await http.post(
//         Uri.parse(apiUrl),
//         headers: {'Content-Type': 'application/json'},
//         body: jsonEncode({'username': cin, 'password': numberContrat}),
//       );

//       // Print the response body
//       print(response.body);

//       // Check if the response contains an "error" field
//       if (response.body.contains('"error":true')) {
//         // If the "error" field is true, print "Login failed"
//         print('Login failed');
//       } else {
//         // If the "error" field is not true, print "Login successful"
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(
//             builder: (context) => DashboardScreen(),
//           ),
//         );
//         print('Login successful');
//         // Perform further actions like navigating to a dashboard screen
//       }
//     } catch (e) {
//       // Handle any errors that occur during the process
//       print('Error: $e');
//     }
//   }

//   // void _login() {
//   //   // Vérifiez ici les informations de connexion
//   //   // Si la connexion est réussie, naviguez vers le tableau de bord
//   //   Navigator.push(
//   //     context,
//   //     MaterialPageRoute(builder: (context) => DashboardScreen()),
//   //   );
//   // }

//   Widget _buildTextFormField(
//       String labelText, String hintText, TextEditingController controller) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           labelText,
//           style: TextStyle(
//             fontSize: 16,
//             color: Color.fromARGB(255, 0, 0, 0),
//           ),
//         ),
//         Container(
//           decoration: BoxDecoration(
//             color: Colors.grey[100],
//             borderRadius: BorderRadius.circular(8.0),
//           ),
//           child: TextFormField(
//             controller: controller,
//             decoration: InputDecoration(
//               border: InputBorder.none,
//               hintText: hintText,
//               hintStyle: TextStyle(fontSize: 14),
//               isDense: true,
//               contentPadding:
//                   EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
//             ),
//             style: TextStyle(fontSize: 16, fontFamily: 'Barlow condensed'),
//           ),
//         ),
//         SizedBox(height: 10),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(height: 40),
//             Center(
//               child: Image.asset(
//                 "assets/images/Inscription.png",
//                 width: 200,
//                 height: 200,
//               ),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Connexion',
//               style: TextStyle(
//                 fontSize: 19,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFF38BFD9),
//               ),
//             ),
//             SizedBox(height: 10),
//             Divider(
//               color: Color.fromARGB(255, 160, 158, 158),
//               thickness: 1,
//             ),
//             SizedBox(height: 10),
//             _buildTextFormField('CIN', '1234', _cinController),
//             _buildTextFormField(
//                 'N° du contrat d\' assurance', '1234', _contratController),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 Checkbox(
//                   value: _rememberMe,
//                   onChanged: (value) {
//                     setState(() {
//                       _rememberMe = value!;
//                     });
//                   },
//                 ),
//                 Text(
//                   'Se souvenir de moi',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 30),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: _Login,
//                 child: Text(
//                   "Se connecter",
//                   style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8.0),
//                   ),
//                   padding:
//                       EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
//                   backgroundColor: Color(0xFF2B6A7C),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 Expanded(
//                   child: Divider(
//                     color: Color.fromARGB(255, 160, 158, 158),
//                     thickness: 1,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                   child: Text(
//                     "Ou",
//                     style: TextStyle(fontSize: 16, color: Colors.grey),
//                   ),
//                 ),
//                 Expanded(
//                   child: Divider(
//                     color: Color.fromARGB(255, 160, 158, 158),
//                     thickness: 1,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 10),
//             Row(
//               children: [
//                 Expanded(
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => SignUpPage()),
//                       );
//                     },
//                     child: Container(
//                       padding: EdgeInsets.all(12.0),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xFF2B6A7C)),
//                         borderRadius: BorderRadius.circular(8.0),
//                       ),
//                       child: Center(
//                         child: Text(
//                           "S'inscrire",
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xFF2B6A7C),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
