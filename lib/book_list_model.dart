import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/book.dart';

// ビジネスモデル（ロジック等のモデル）
class BookListModel extends ChangeNotifier {
  List<Book> books = [];

  Future fetchBooks() async {
    final docus = await Firestore.instance.collection("books").getDocuments();
    final books = docus.documents.map((doc) => Book(doc["title"])).toList();
    this.books = books;
    notifyListeners();
  }
}
