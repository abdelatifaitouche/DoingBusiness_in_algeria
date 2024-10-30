import 'package:doingbusiness/presentation/auth/widgets/bullet_list_item.dart';
import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(15),
      height: size.height * 0.8,
      width: size.width,
      child: ListView(
        children: [
          Text(
            "Politique d'utilisation : ",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          //WELCOMING HEADER
          Text(
              "Bienvenue dans l'application mobile DoingBusiness fournie par Grant Thornton. En utilisant l'application DoingBusiness, vous acceptez d'être lié par les termes et conditions suivants. Si vous n'acceptez pas ces conditions, vous ne devez pas utiliser cette application"),
          SizedBox(
            height: 5,
          ),
          Text(
            "1. Utilisation de l'application",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          Text(
              "L'application DoingBusiness est conçue pour fournir aux utilisateurs des outils, des ressources et des conseils en matière de gestion d'entreprise, de réglementation fiscale et de conformité.\nAdmissibilité : Vous devez avoir au moins 18 ans pour utiliser cette application. En utilisant l'application, vous confirmez que vous répondez à cette exigence d'âge.\nOctroi de Licence : Grant Thornton vous accorde une licence limitée, non transférable et non exclusive pour télécharger, installer et utiliser l'application sur votre appareil mobile conformément à ces conditions."),
          SizedBox(
            height: 5,
          ),
          Text(
            "2. Compte Utilisateur",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          Text(
              "Pour accéder à certaines fonctionnalités de l'application, vous devrez peut-être créer un compte.\nSécurité du Compte : Vous êtes responsable du maintien de la confidentialité de votre compte et de votre mot de passe. Vous acceptez de nous informer immédiatement de toute utilisation non autorisée de votre compte.\nExactitude des Informations : Vous vous engagez à fournir des informations exactes et complètes lors de la création de votre compte et de l'utilisation de l'application. Vous êtes responsable de la mise à jour des informations de votre compte si nécessaire."),
          SizedBox(
            height: 5,
          ),
          Text(
            "3. Données et Confidentialité",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          Text(
              "En utilisant l'application, vous acceptez la collecte et l'utilisation de vos données personnelles telles que décrites dans cette section et dans notre Politique de Confidentialité. Les seules données personnelles collectées par l'application DoingBusiness sont votre nom et votre adresse e-mail, qui sont utilisées uniquement pour des fins d'authentification et pour vous fournir l'accès aux services de l'application.\n\nNous nous engageons à protéger vos données personnelles conformément à la loi 18-07 relative à la protection des données personnelles du 10 Juin 2018 (Journal Officiel n°34 du 10 Juin 2018).\nVos données ne seront pas partagées avec des tiers, sauf lorsque la loi l'exige ou pour remplir les fonctions nécessaires de l'application."),
          SizedBox(
            height: 5,
          ),
          Text(
            "4. Conduite Interdite",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          Text('Vous vous engagez à ne pas :'),
          BulletItem(
              text:
                  "Utiliser l'application à des fins illégales, frauduleuses ou non autorisées."),
          BulletItem(
              text:
                  "Enfreindre toute loi, règle ou réglementation en lien avec votre utilisation de l'application."),
          BulletItem(
              text:
                  "Perturber ou interférer avec le fonctionnement de l'application ou des réseaux et serveurs de Grant Thornton."),
          BulletItem(
              text:
                  "Tenter d'obtenir un accès non autorisé à toute partie de l'application, des systèmes ou des comptes utilisateurs."),
          BulletItem(text: "Soumettre des informations fausses ou trompeuses."),
          Text(
            "5. Propriété Intellectuelle",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          Text(
              "Tous les contenus et matériaux disponibles sur l'application, y compris, sans s'y limiter, les logiciels, textes, graphiques, logos et marques déposées, sont la propriété intellectuelle de Grant Thornton ou de ses concédants. Vous n'êtes pas autorisé à reproduire, distribuer ou créer des œuvres dérivées à partir de ce contenu sans l'autorisation écrite expresse de Grant Thornton."),

          Text(
            "Contact",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
          ),
          Text(
              "Si vous avez des questions ou des préoccupations concernant ces termes ou l'application, veuillez nous contacter à :"),
          Text(
            "contact@dz.gt.com",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}


/*











Coordonnées

Grant Thornton */