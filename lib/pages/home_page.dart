import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenue sur Guest-Welcome'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 600,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Bienvenue sur Guest-Welcome',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Pourquoi utiliser notre site ?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '1. Guides d\'accueil multilingues',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Notre plateforme permet aux hôtels de créer, gérer et mettre à jour facilement des guides d\'accueil multilingues.',
                ),
                SizedBox(height: 10),
                Text(
                  '2. Guides audio',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Améliorez l\'expérience de vos invités avec des guides audio disponibles en plusieurs langues.',
                ),
                SizedBox(height: 10),
                Text(
                  '3. Thèmes personnalisables',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Personnalisez l\'apparence de vos guides avec des thèmes personnalisables pour correspondre à l\'image de votre hôtel.',
                ),
                SizedBox(height: 10),
                Text(
                  '4. Notifications en temps réel',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Tenez vos invités informés grâce à des notifications en temps réel sur les mises à jour importantes et les offres.',
                ),
                SizedBox(height: 10),
                Text(
                  '5. Gestion facile',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Gérez votre contenu sans effort grâce à une interface back-office conviviale.',
                ),
                SizedBox(height: 10),
                Text(
                  '6. Sécurité des données',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Nous priorisons la sécurité de vos données, garantissant une expérience sûre et sécurisée pour vous et vos invités.',
                ),
                SizedBox(height: 20),
                Text(
                  'Commencez dès aujourd\'hui !',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Rejoignez-nous et révolutionnez la façon dont vous accueillez vos invités !',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
