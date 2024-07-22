import 'dart:convert';
import 'package:flusa/app/auth/Login.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//-------------------------------------------
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // late TextEditingController _cinController = TextEditingController();
  // late TextEditingController _contratController = TextEditingController();
  // late TextEditingController _emailController = TextEditingController();
  // late TextEditingController _compagnieController = TextEditingController();
  // late TextEditingController _firstnameController = TextEditingController();
  // late TextEditingController _idContrat= TextEditingController();
  // late TextEditingController _lastName= TextEditingController();
  // late TextEditingController _adresse= TextEditingController();
  // late TextEditingController _ville= TextEditingController();
  // late TextEditingController _telephone= TextEditingController();
  // late TextEditingController _codePostal= TextEditingController();
  // late TextEditingController _role= TextEditingController();
  // late TextEditingController _group= TextEditingController();
  // late TextEditingController _marque= TextEditingController();
  // late TextEditingController _immatriculeVoiture= TextEditingController();
  // late TextEditingController _paysImmatriculeVoiture= TextEditingController();
  // late TextEditingController _immatriculeRemorque= TextEditingController();
  // late TextEditingController _paysImmatriculeRemorque= TextEditingController();
  late TextEditingController _idContratController = TextEditingController();
  late TextEditingController _firstNameController = TextEditingController();
  late TextEditingController _lastNameController = TextEditingController();
  late TextEditingController _adresseController = TextEditingController();
  late TextEditingController _villeController = TextEditingController();
  late TextEditingController _codePostalController = TextEditingController();
  late TextEditingController _telephoneController = TextEditingController();
  late TextEditingController _cinController = TextEditingController();
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _roleController = TextEditingController();
  late TextEditingController _groupController = TextEditingController();
  late TextEditingController _companieAssuranceController =
      TextEditingController();
  late TextEditingController _marqueController = TextEditingController();
  late TextEditingController _immatriculeVoitureController =
      TextEditingController();
  late TextEditingController _paysImmatriculeVoitureController =
      TextEditingController();
  late TextEditingController _immatriculeRemorqueController =
      TextEditingController();
  late TextEditingController _paysImmatriculeRemorqueController =
      TextEditingController();

  Widget _buildTextFormField(
      String labelText, String hintText, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(fontSize: 14),
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            ),
            style: TextStyle(fontSize: 16, fontFamily: 'Barlow condensed'),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Future<void> _Signup() async {
    String _idContrat = _idContratController.text.trim();
    String _firstName = _firstNameController.text.trim();
    String _lastName = _lastNameController.text.trim();
    String _adresse = _adresseController.text.trim();
    String _ville = _villeController.text.trim();
    String _codePostal = _codePostalController.text.trim();
    String _telephone = _telephoneController.text.trim();
    String _cin = _cinController.text.trim();
    String _email = _emailController.text.trim();
    String _role = _roleController.text.trim();
    String _group = _groupController.text.trim();
    String _companieAssurance = _companieAssuranceController.text.trim();
    String _marque = _marqueController.text.trim();
    String _immatriculeVoiture = _immatriculeVoitureController.text.trim();
    String _paysImmatriculeVoiture =
        _paysImmatriculeVoitureController.text.trim();
    String _immatriculeRemorque = _immatriculeRemorqueController.text.trim();
    String _paysImmatriculeRemorque =
        _paysImmatriculeRemorqueController.text.trim();

    String apiUrl =
        'https://repo.dev2.addinn.com/alfresco/s/com/addinn/post/createAssures';

    try {
      print("object");
      var response = await http.post(
        Uri.parse(apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "idContrat": _idContrat,
          "firstName": _firstName,
          "lastName": _lastName,
          "adresse": _adresse,
          "ville": _ville,
          "codePostal": _codePostal,
          "telephone": _telephone,
          "cin": _cin,
          "email": _email,
          "role": _role,
          "group": _group,
          "companieAssurance": _companieAssurance,
          "marque": _marque,
          "immatriculeVoiture": _immatriculeVoiture,
          "paysImmatriculeVoiture": _paysImmatriculeVoiture,
          "immatriculeRemorque": _immatriculeRemorque,
          "paysImmatriculeRemorque": _paysImmatriculeRemorque

          // "idContrat": "Assurehkhgxyxd",
          // "firstName": "AssureDn",
          // "lastName": "AssureD",
          // "adresse": "sousse",
          // "ville": "sousse",
          // "codePostal": "4060",
          // "telephone": "52096790",
          // "cin": "12345687",
          // "email": "dabouda@diginov.org",
          // "role": "ASSURE",
          // "group": "ASSURE",
          // "companieAssurance": "Gat",
          // "marque": "BMW",
          // "immatriculeVoiture": "310",
          // "paysImmatriculeVoiture": "TN",
          // "immatriculeRemorque": "310",
          // "paysImmatriculeRemorque": "TN"
        }),
      );
      print("response.body");
      print(response.body);
      if (response.body.contains('"Correct": false')) {
        print('user exist');
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => LoginPage(),
          ),
        );
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // title: Text('Overflow Example'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop(); // Navigate back when pressed
          },
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(
                20.0), // Ajouter un espace de padding autour de la colonne
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .start, // Aligner les enfants au début horizontalement
              children: <Widget>[
                SizedBox(height: 40), // Espacement en haut de la colonne
                Center(
                  child: Image.asset(
                    "assets/images/Inscription.png",
                    width: 200,
                    height: 200,
                  ),
                ),
                SizedBox(height: 20), // Espacement entre l'image et le texte
                Text(
                  'Inscription',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF38BFD9),
                  ),
                ),
                SizedBox(height: 10), // Espacement entre le texte et la ligne
                Divider(
                  // Ajouter une ligne grise
                  color: Color.fromARGB(255, 160, 158, 158),
                  thickness: 1,
                ),
                SizedBox(
                    height:
                        10), // Espacement entre la ligne et le texte suivant
                // _buildTextFormField('CIN', '12345678', _cinController),
                // _buildTextFormField(
                //     'N° du contrat d\' assurance', '1234', _idContratController),
                // _buildTextFormField(
                //     'Adresse Email', 'Nomprénom@gmail.com', _emailController),
                // _buildTextFormField('Compagnie d\' assurance', 'Nom d\' assurance',
                //     _companieAssuranceController),
                _buildTextFormField(
                    '_idContratController', 'www', _idContratController),
                _buildTextFormField(
                    '_firstNameController', 'www', _firstNameController),
                _buildTextFormField(
                    '_lastNameController', 'www', _lastNameController),
                _buildTextFormField(
                    '_adresseController', 'www', _adresseController),
                _buildTextFormField(
                    '_villeController', 'www', _villeController),
                _buildTextFormField(
                    '_codePostalController', 'www', _codePostalController),
                _buildTextFormField(
                    '_telephoneController', 'www', _telephoneController),
                _buildTextFormField('_cinController', 'www', _cinController),
                _buildTextFormField(
                    '_emailController', 'www', _emailController),
                _buildTextFormField('_roleController', 'www', _roleController),
                _buildTextFormField(
                    '_groupController', 'www', _groupController),
                _buildTextFormField('_companieAssuranceController', 'www',
                    _companieAssuranceController),
                _buildTextFormField(
                    '_marqueController', 'www', _marqueController),
                _buildTextFormField('_immatriculeVoitureController', 'www',
                    _immatriculeVoitureController),
                _buildTextFormField('_paysImmatriculeVoitureController', 'www',
                    _paysImmatriculeVoitureController),
                _buildTextFormField('_immatriculeRemorqueController', 'www',
                    _immatriculeRemorqueController),
                _buildTextFormField('_paysImmatriculeRemorqueController', 'www',
                    _paysImmatriculeRemorqueController),
                SizedBox(height: 30), // Espacement avant le bouton S'inscrire
                SizedBox(
                  width: double
                      .infinity, // Pour étendre le bouton sur toute la largeur disponible
                  child: ElevatedButton(
                    onPressed:
                        // Navigation vers la page de connexion (Login)
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => LoginPage()),
                        // );
                        // print("object");
                        _Signup,
                    child: Text(
                      "S'inscrire",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(8.0), // Bordure arrondie
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 32.0), // Espacement interne du bouton
                      backgroundColor:
                          Color(0xFF2B6A7C), // Couleur de fond bleue
                    ),
                  ),
                ),
                // Ajoutez d'autres éléments de votre formulaire ici
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//-----------
  //  _buildTextFormField('xxxx','www', _idContratController),
  //  _buildTextFormField('xxxx','www', _firstNameController),
  //  _buildTextFormField('xxxx','www', _lastNameController),
  //  _buildTextFormField('xxxx','www', _adresseController),
  //  _buildTextFormField('xxxx','www', _villeController),
  //  _buildTextFormField('xxxx','www', _codePostalController),
  //  _buildTextFormField('xxxx','www', _telephoneController),
  //  _buildTextFormField('xxxx','www', _cinController),
  //  _buildTextFormField('xxxx','www', _emailController),
  //  _buildTextFormField('xxxx','www', _roleController),
  //  _buildTextFormField('xxxx','www', _groupController),
  //  _buildTextFormField('xxxx','www', _companieAssuranceController),
  //  _buildTextFormField('xxxx','www', _marqueController),
  //  _buildTextFormField('xxxx','www', _immatriculeVoitureController),
  //  _buildTextFormField('xxxx','www', _paysImmatriculeVoitureController),
  //  _buildTextFormField('xxxx','www', _immatriculeRemorqueController),
  //  _buildTextFormField('xxxx','www', _paysImmatriculeRemorqueController),

      // _buildTextFormField('CIN', '12345678', ),
      // _buildTextFormField('CIN', '12345678', ),
      // _buildTextFormField('CIN', '12345678', ),
      // _buildTextFormField('CIN', '12345678', ),
      // _buildTextFormField('CIN', '12345678', ),
      // _buildTextFormField('CIN', '12345678', ),
      // _buildTextFormField('CIN', '12345678', ),
      // _buildTextFormField('CIN', '12345678', ),
      // _buildTextFormField('CIN', '12345678', ),
      // _buildTextFormField('CIN', '12345678', ),
      // _buildTextFormField('CIN', '12345678', ),
      // _buildTextFormField('CIN', '12345678', ),
