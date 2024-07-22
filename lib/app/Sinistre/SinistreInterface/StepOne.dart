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
