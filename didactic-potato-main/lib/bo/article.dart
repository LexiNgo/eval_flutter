class Article{
  String nom;
  String description;
  String categorie;
  final String image;
  //num ou int en cents
  int prix;

  Article({
    required this.nom,
    required this.description,
    required this.categorie,
    required this.image,
    required this.prix,
  });
  getPrixEuro() => "${prix/100}€";

  Map<String, dynamic> toMap() {
    return {
      'nom': this.nom,
      'description': this.description,
      'categorie': this.categorie,
      'image': this.image,
      'prix': this.prix,
    };
  }
// factory => keyword l'article existe deja sous une autre forme mais on va le transformer
  // en Dart
  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      nom: map['title'] as String,
      description: map['description'] as String,
      categorie: map['category'] as String,
      image: map['image'] as String,
      prix: ((map['price'] as num) *100).floor(),
    );
  }

}



