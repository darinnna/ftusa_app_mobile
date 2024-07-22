import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// class StepperScreen extends StatefulWidget {
//   @override
//   _StepperScreenState createState() => _StepperScreenState();
// }

// class _StepperScreenState extends State<StepperScreen> {
//   int _currentStep = 0;

//   List<Widget> _steps = [
//     Step1(),
//     Step2(),
//     Step3(),
//     Step4(),
//     Step5(),
//     Step6(),
//     Step7(),
//     Step8(),
//     Step9(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: IndexedStack(
//               index: _currentStep,
//               children: _steps,
//             ),
//           ),
//           SizedBox(height: 20),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('${_currentStep + 1}/${_steps.length}'),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     if (_currentStep == 0)
//                       Container(
//                         width: width * 0.9,
//                         child: TextButton(
//                           onPressed: () {
//                             setState(() {
//                               _currentStep++;
//                             });
//                           },
//                           style: ButtonStyle(
//                             backgroundColor:
//                                 MaterialStateProperty.all(Color(0xFF2B6A7C)),
//                             foregroundColor:
//                                 MaterialStateProperty.all(Colors.white),
//                             side: MaterialStateProperty.all(
//                                 BorderSide(color: Color(0xFF2B6A7C))),
//                             shape: MaterialStateProperty.all(
//                                 RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10),
//                             )),
//                           ),
//                           child: Text('Suivant'),
//                         ),
//                       ),
//                     if (_currentStep > 0 && _currentStep < _steps.length - 1)
//                       Row(
//                         children: [
//                           Container(
//                             width: width * 0.4,
//                             child: TextButton(
//                               onPressed: () {
//                                 setState(() {
//                                   _currentStep--;
//                                 });
//                               },
//                               style: ButtonStyle(
//                                 backgroundColor:
//                                     MaterialStateProperty.all(Colors.white),
//                                 foregroundColor: MaterialStateProperty.all(
//                                     Color(0xFF2B6A7C)),
//                                 shape: MaterialStateProperty.all(
//                                     RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   side: BorderSide(color: Color(0xFF2B6A7C)),
//                                 )),
//                               ),
//                               child: Text('Previous'),
//                             ),
//                           ),
//                           SizedBox(width: 16),
//                           Container(
//                             width: width * 0.4,
//                             child: TextButton(
//                               onPressed: () {
//                                 setState(() {
//                                   _currentStep++;
//                                 });
//                               },
//                               style: ButtonStyle(
//                                 backgroundColor: MaterialStateProperty.all(
//                                     Color(0xFF2B6A7C)),
//                                 foregroundColor:
//                                     MaterialStateProperty.all(Colors.white),
//                                 side: MaterialStateProperty.all(
//                                     BorderSide(color: Color(0xFF2B6A7C))),
//                                 shape: MaterialStateProperty.all(
//                                     RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                               ),
//                               child: Text('Next'),
//                             ),
//                           ),
//                         ],
//                       ),
//                     if (_currentStep == _steps.length - 1)
//                       Row(
//                         children: [
//                           Container(
//                             width: width * 0.4,
//                             child: TextButton(
//                               onPressed: () {
//                                 setState(() {
//                                   _currentStep--;
//                                 });
//                               },
//                               style: ButtonStyle(
//                                 backgroundColor:
//                                     MaterialStateProperty.all(Colors.white),
//                                 foregroundColor: MaterialStateProperty.all(
//                                     Color(0xFF2B6A7C)),
//                                 side: MaterialStateProperty.all(
//                                     BorderSide(color: Color(0xFF2B6A7C))),
//                                 shape: MaterialStateProperty.all(
//                                     RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                               ),
//                               child: Text('Retour'),
//                             ),
//                           ),
//                           SizedBox(width: 16),
//                           Container(
//                             width: width * 0.4,
//                             child: TextButton(
//                               onPressed: () {
//                                 // Add functionality for Final button
//                               },
//                               style: ButtonStyle(
//                                 backgroundColor: MaterialStateProperty.all(
//                                     Color(0xFF2B6A7C)),
//                                 foregroundColor:
//                                     MaterialStateProperty.all(Colors.white),
//                                 side: MaterialStateProperty.all(
//                                     BorderSide(color: Color(0xFF2B6A7C))),
//                                 shape: MaterialStateProperty.all(
//                                     RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                               ),
//                               child: Text('Final'),
//                             ),
//                           ),
//                         ],
//                       ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class Step1 extends StatefulWidget {
  const Step1({Key? key}) : super(key: key);

  @override
  State<Step1> createState() => _Step1State();
}

class _Step1State extends State<Step1> {
  bool checkBoxValue = false;
  // ignore: unused_field
  List<bool> _selections = [true, false, false];
  // ignore: unused_field
  List<String> _options = ['Container 1', 'Container 2', 'Container 3'];
  String _selectedIndex = "one";
  bool _yesSelected = false;
  bool _noSelected = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Center(
                child: Image.asset(
                  'assets/images/Ftusa.png',
                  width: 100,
                  height: 100,
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Type de déclaration',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
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
                  _buildContainer(
                      'assets/images/vehicule.png', '1 véhicule', "one"),
                  _buildContainer(
                      'assets/images/vehicule2.png', '2 Véhicules', "two"),
                  _buildContainer(
                      'assets/images/vehicule3.png', '3+ véhicules', "three"),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width * .4,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: _yesSelected,
                              onChanged: (value) {
                                setState(() {
                                  _yesSelected = value!;
                                  _noSelected = !_yesSelected;
                                });
                              },
                            ),
                            Text('Oui'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: width * 0.4,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFF38BFD9),
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: _noSelected,
                              onChanged: (value) {
                                setState(() {
                                  _noSelected = value!;
                                  _yesSelected = !_noSelected;
                                });
                              },
                            ),
                            Text('Non'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer(String imagePath, String text, String index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
          print(_selectedIndex);
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 3),
              ),
            ],
            color: Colors.white,
            border: Border.all(
              color: _selectedIndex == index
                  ? Color(0xFF38BFD9)
                  : Colors.transparent,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10),
              Text(
                text,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Step2 extends StatelessWidget {
  const Step2({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Center(
                child: Image.asset(
                  'assets/images/Ftusa.png',
                  width: 100,
                  height: 100,
                ),
              ),
              SizedBox(height: 30),
              Text(
                ' Localisation',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF38BFD9),
                ),
              ),
              SizedBox(height: 10),
              Divider(
                color: Color.fromARGB(255, 160, 158, 158),
                thickness: 1,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Image.asset(
                    'assets/images/localisation.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Lieu de l\' accident',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF38BFD9),
                        ),
                      ),
                      Text(
                        'Précisez exactement votre lieu de l\' accident',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF2B6A7C),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Step3 extends StatelessWidget {
//   const Step3({Key? key});

// Widget _buildTextFormField(
//   String labelText, 
//   String hintText, 
//   TextEditingController controller,
// ) {
//   return SizedBox(
//     width: double.infinity, // Provide a finite width constraint
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           labelText,
//           style: TextStyle(
//             fontSize: 16,
//             color: Color.fromARGB(255, 0, 0, 0),
//           ),
//         ),
//         SizedBox(height: 8),
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
//     ),
//   );
// }


//   @override
//   Widget build(BuildContext context) {
//     // ignore: unused_local_variable
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 18),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 10),
//               Center(
//                 child: Image.asset(
//                   'assets/images/Ftusa.png',
//                   width: 100,
//                   height: 100,
//                 ),
//               ),
//               SizedBox(height: 30),
//               Text(
//                 'Assurances et immatriculations',
//                 style: TextStyle(
//                   fontSize: 21,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF38BFD9),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Divider(
//                 color: Color.fromARGB(255, 160, 158, 158),
//                 thickness: 1,
//               ),
//               SizedBox(height: 10),
//               Row(
//                 children: [
//                   Image.asset(
//                     'assets/images/vehiculeA.png',
//                     width: 40,
//                     height: 40,
//                   ),
//                   SizedBox(width: 10),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Votre véhicule',
//                         style: TextStyle(
//                           fontSize: 19,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF38BFD9),
//                         ),
//                       ),
//                       Text(
//                         'Reportez-Vous ou certificat d\'assurance\n(carte verte) de votre véhicule.',
//                         softWrap: true,
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Color(0xFF2B6A7C),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Saisie manuelle',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               SizedBox(height: 10),
//               _buildTextFormField(
//                   'Assurance', 'Assureur 1', TextEditingController()),
//               _buildTextFormField('Immatriculation (\')', '123-TUN-1234',
//                   TextEditingController()),
//               SizedBox(height: 10),
//               Text(
//                 'Scan la carte rose',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               Text(
//                 'Vous pouvez scanner votre carte rose',
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Color(0xFF2B6A7C),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Step4 extends StatelessWidget {
//   const Step4({Key? key}) : super(key: key);
// Widget _buildTextFormField(
//   String labelText, 
//   String hintText, 
//   TextEditingController controller,
// ) {
//   return SizedBox(
//     width: double.infinity, // Provide a finite width constraint
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           labelText,
//           style: TextStyle(
//             fontSize: 16,
//             color: Color.fromARGB(255, 0, 0, 0),
//           ),
//         ),
//         SizedBox(height: 8),
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
//     ),
//   );
// }

//   @override
//   Widget build(BuildContext context) {
//     // ignore: unused_local_variable
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 18),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 10),
//               Center(
//                 child: Image.asset(
//                   'assets/images/Ftusa.png',
//                   width: 100,
//                   height: 100,
//                 ),
//               ),
//               SizedBox(height: 30),
//               Text(
//                 'Infos véhicule A :',
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF38BFD9),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Divider(
//                 color: Color.fromARGB(255, 160, 158, 158),
//                 thickness: 1,
//               ),
//               SizedBox(height: 10),
//               Row(
//                 children: [
//                   Image.asset(
//                     'assets/images/vehiculeA.png',
//                     width: 40,
//                     height: 40,
//                   ),
//                   SizedBox(width: 10),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'véhicule A',
//                         style: TextStyle(
//                           fontSize: 19,
//                           fontWeight: FontWeight.bold,
//                           color: Color(0xFF38BFD9),
//                         ),
//                       ),
//                       Text(
//                         'Cette étape nécessite l\'utilisation de\nl\'attestation d\'assurance (carte verte).',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Color(0xFF2B6A7C),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10),
//               _buildTextFormField(
//                   'Numéro de contrat', '123456789', TextEditingController()),
//               _buildTextFormField('Nom de l\'assuré ou raison sociale', 'Hamli',
//                   TextEditingController()),
//               _buildTextFormField('Prénom de l\'assuré (facultatif)', 'Mohamed',
//                   TextEditingController()),
//               _buildTextFormField('Code postal', '4000',
//                   TextEditingController()), // Correction: Changement du texte
//               SizedBox(height: 10),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Step5 extends StatefulWidget {
//   const Step5({Key? key}) : super(key: key);

//   @override
//   State<Step5> createState() => _Step5State();
// }

// class _Step5State extends State<Step5> {
//   String _selectedIndex = "one"; // Sélection par défaut
//   // bool _yesSelected = false;
//   // bool _noSelected = false;

//   @override
//   Widget build(BuildContext context) {
//     // final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 18),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 10),
//               Center(
//                 child: Image.asset(
//                   'assets/images/Ftusa.png',
//                   width: 100,
//                   height: 100,
//                 ),
//               ),
//               SizedBox(height: 30),
//               Text(
//                 ' Circonstance de l\'accident',
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF38BFD9),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Divider(
//                 color: Color.fromARGB(255, 160, 158, 158),
//                 thickness: 1,
//               ),
//               SizedBox(height: 10),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   _buildContainer(
//                       'assets/images/VHCA.png', 'véhicule A', "one"),
//                   _buildContainer(
//                       'assets/images/VHCB.png', 'Véhicule B', "two"),
//                 ],
//               ),
//               SizedBox(height: 20), // Espace vertical

//               // Génération dynamique des ensembles de conteneurs
//               Column(
//                 children: List.generate(
//                   7, // Remplacez "numberOfContainers" par le nombre souhaité de conteneurs
//                   (index) {
//                     return _buildContainerWithCheckboxesAndText(
//                         "En stationnement $index", false, false);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildContainerWithCheckboxesAndText(
//       String text, bool leftValue, bool rightValue) {
//     return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//       Container(
//         child: Row(
//           children: [
//             Container(
//               width: 30,
//               height: 30,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 border: Border.all(
//                   color: Colors.grey.withOpacity(0.5),
//                   width: 1,
//                 ),
//               ),
//               child: Checkbox(
//                 value: leftValue,
//                 onChanged: (newValue) {
//                   // Fonction appelée lors du changement de la valeur de la case à cocher de gauche
//                 },
//               ),
//             ),
//             SizedBox(width: 10),
//             Text(
//               text,
//               style: TextStyle(fontSize: 16),
//             ),
//             Checkbox(
//               value: rightValue,
//               onChanged: (newValue) {
//                 // Fonction appelée lors du changement de la valeur de la case à cocher de droite
//               },
//             ),
//           ],
//         ),
//       ),
//     ]);
//   }

//   Widget _buildContainer(String imagePath, String text, String index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           _selectedIndex = index;
//           print(_selectedIndex);
//         });
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(5.0),
//         child: Container(
//           width: 100,
//           height: 100,
//           decoration: BoxDecoration(
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey.withOpacity(0.5),
//                 spreadRadius: 2,
//                 blurRadius: 5,
//                 offset: Offset(0, 3),
//               ),
//             ],
//             color: Colors.white,
//             border: Border.all(
//               color: _selectedIndex == index
//                   ? Color(0xFF38BFD9)
//                   : Colors.transparent,
//               width: 2,
//             ),
//             borderRadius: BorderRadius.circular(10),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Image.asset(
//                 imagePath,
//                 width: 50,
//                 height: 50,
//                 fit: BoxFit.cover,
//               ),
//               SizedBox(height: 10),
//               Text(
//                 text,
//                 style: TextStyle(fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Step6 extends StatelessWidget {
//   const Step6({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     // ignore: unused_local_variable
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 18),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             SizedBox(height: 10),
//             Center(
//               child: Image.asset(
//                 'assets/images/Ftusa.png',
//                 width: 100,
//                 height: 100,
//               ),
//             ),
//             SizedBox(height: 30),
//             Text(
//               'Photos de l\' accident',
//               style: TextStyle(
//                 fontSize: 21,
//                 fontWeight: FontWeight.bold,
//                 color: Color(0xFF38BFD9),
//               ),
//             ),
//             SizedBox(height: 10),
//             Divider(
//               color: Color.fromARGB(255, 160, 158, 158),
//               thickness: 1,
//             ),
//             SizedBox(height: 30),
//             Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//               Text(
//                 'Photos de l\'accideent',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Prenez des photos des positions des chocs et du lieux d\' accident, ou parcourir depuis la galerie',
//                 softWrap: true,
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: Color(0xFF2B6A7C),
//                 ),
//               ),
//               SizedBox(height: 50),
//               Text(
//                 'Autres photos',
//                 style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               SizedBox(height: 20),
//               Text(
//                 'Prenez des photos des positions des chocs et du lieux d\' accident, ou parcourir depuis la galerie',
//                 softWrap: true,
//                 style: TextStyle(
//                   fontSize: 15,
//                   color: Color(0xFF2B6A7C),
//                 ),
//               ),
//             ]),
//           ]),
//         ),
//       ),
//     );
//   }
// }

// class Step7 extends StatelessWidget {
//   const Step7({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // final width = MediaQuery.of(context).size.width;
//     // ignore: unused_local_variable
//     TextEditingController _observationController =
//         TextEditingController(); // Déclarez un contrôleur de texte
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 18),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 10),
//               Center(
//                 child: Image.asset(
//                   'assets/images/Ftusa.png',
//                   width: 100,
//                   height: 100,
//                 ),
//               ),
//               SizedBox(height: 30),
//               Text(
//                 'Observation',
//                 style: TextStyle(
//                   fontSize: 21,
//                   fontWeight: FontWeight.bold,
//                   color: Color(0xFF38BFD9),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Divider(
//                 color: Color.fromARGB(255, 160, 158, 158),
//                 thickness: 1,
//               ),
//               SizedBox(height: 30),
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Observation par écrit',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   SizedBox(height: 20),
//                   Text(
//                     'Envoyer un message vocal',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Step8 extends StatelessWidget {
//   const Step8({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // final width = MediaQuery.of(context_RenderDecoration).size.width;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 18),
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             SizedBox(height: 10),
//             Center(
//               child: Image.asset(
//                 'assets/images/Ftusa.png',
//                 width: 100,
//                 height: 100,
//               ),
//             ),
//             SizedBox(height: 30),
//             Text(
//               'Récapitulatif',
//               style: TextStyle(
//                 fontSize: 21,
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
//             Row(
//               children: [
//                 Image.asset(
//                   'assets/images/vehiculeA.png',
//                   width: 40,
//                   height: 40,
//                 ),
//                 SizedBox(width: 10),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Dossier ',
//                       style: TextStyle(
//                         fontSize: 19,
//                         fontWeight: FontWeight.bold,
//                         color: Color(0xFF38BFD9),
//                       ),
//                     ),
//                     Text(
//                       'Reportez-Vous ou certificat d\'assurance\n(carte verte) de votre véhicule.',
//                       softWrap: true,
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Color(0xFF2B6A7C),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//             SizedBox(height: 20),
//           ]),
//         ),
//       ),
//     );
//   }
// }

// class Step9 extends StatelessWidget {
//   const Step9({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text('Step Content'),
//           // Add your step content here
//         ],
//       ),
//     );
//   }
// }

// class Step09 extends StatelessWidget {
//   const Step09({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
