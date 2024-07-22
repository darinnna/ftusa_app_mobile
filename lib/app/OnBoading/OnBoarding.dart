import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flusa/app/auth/Login.dart';

class MyOnboarding extends StatefulWidget {
  const MyOnboarding({Key? key}) : super(key: key);

  @override
  _MyOnboardingState createState() => _MyOnboardingState();
}

class _MyOnboardingState extends State<MyOnboarding> {
  final PageController _pageController = PageController(initialPage: 0);
  final List<String> titles = ["Title 1", "Title 2", "Title 3"];
  final List<String> descriptions = [
    "Créez votre constat en quelques minutes",
    "Créez votre constat en quelques minutes",
    "Créez votre constat en quelques minutes"
  ];
  final List<String> descriptionsPlus = [
    "Identifiez-vous en saisissant votre numéro de contrat d'assurance et votre immatriculation",
    "Prendre des photos et décrire les circonstances en message vocal",
    "Signer et envoyer votre constat à votre assureur",
  ];
  final List<String> images = [
    "assets/images/interface11.png",
    "assets/images/interface1.png",
    "assets/images/interface3.png",
  ];

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: titles.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemBuilder: (context, index) {
                  return OnboardingPage(
                    title: titles[index],
                    description: descriptions[index],
                    descriptionPlus: descriptionsPlus[index],
                    image: images[index],
                    activeIndex: _currentPage,
                    count: titles.length,
                    isLastPage: index == titles.length - 1,
                    isFirstPage: index == 0,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (_currentPage == 0)
                    TextButton(
                      onPressed: () {
                        // Implement skip button functionality
                        // _pageController.jumpToPage(titles.length - 1);
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Text('Skip',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ),
                  if (_currentPage > 0)
                    IconButton(
                      onPressed: () {
                        _pageController.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      icon: Icon(
                        Icons.chevron_left,
                        color: Color(0xFF2B6A7C),
                        size: 24,
                      ),
                    ),
                  // AnimatedSmoothIndicator(
                  //   activeIndex: _currentPage,
                  //   count: titles.length,
                  //   effect: ExpandingDotsEffect(
                  //     activeDotColor: Color(0xff0172fb),
                  //     dotColor: Color(0xff0172fb).withOpacity(0.5),
                  //     dotWidth: 10,
                  //     dotHeight: 10,
                  //   ),
                  // ),
                  Container(
                    decoration: BoxDecoration(
                      color:
                          Color(0xFF2B6A7C), // Couleur d'arrière-plan du bouton
                      borderRadius: BorderRadius.circular(
                          10.0), // Bordure arrondie du bouton
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Implémenter la fonctionnalité du bouton suivant
                        if (_currentPage < titles.length - 1) {
                          _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        } else {
                          // Gérer le cas où l'utilisateur est sur la dernière page
                          // par exemple, naviguer vers l'écran suivant ou fermer l'onboarding
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()),
                          );
                        }
                      },
                      icon: Icon(
                        Icons.chevron_right,
                        size: 24, // Vous pouvez ajuster la taille de l'icône
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String descriptionPlus;
  final String image;
  final int activeIndex;
  final int count;
  final bool isLastPage;
  final bool isFirstPage;

  const OnboardingPage({
    required this.title,
    required this.description,
    required this.descriptionPlus,
    required this.image,
    required this.activeIndex,
    required this.count,
    required this.isLastPage,
    required this.isFirstPage,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 350,
          ),
          AnimatedSmoothIndicator(
            activeIndex: activeIndex,
            count: count,
            effect: ExpandingDotsEffect(
              activeDotColor: Color(0xFF2B6A7C),
              dotColor: Color(0xFF2B6A7C).withOpacity(0.5),
              dotWidth: 10,
              dotHeight: 10,
            ),
          ),
          SizedBox(height: 32),
          Text(
            description,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text(
            descriptionPlus,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
