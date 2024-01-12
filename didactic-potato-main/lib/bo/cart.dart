import 'package:flutter/foundation.dart';

import 'article.dart';

class Cart with ChangeNotifier {
  final _listArticles = <Article>[];
   double _totalPriceCart = 0.0;

  List<Article> get listArticles => _listArticles;
  String getTotalPrice() =>
      "${listArticles.fold(0, (prev, art) => prev + art.prix) / 100}€";

  double getTotalPriceCart() {
    _totalPriceCart = listArticles.fold(0, (prev, art) => prev + art.prix) / 100;
    return _totalPriceCart;
  }

  void add(Article article) {
    _listArticles.add(article);
    notifyListeners();
  }

  void remove(Article article) {
    _listArticles.remove(article);
    notifyListeners();
  }

  void removeAll() {
    _listArticles.clear();
    notifyListeners();
  }
}
