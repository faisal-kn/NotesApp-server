import 'dart:core';

class Note {
  String title = '';
  String description = '';
  final createdAt = DateTime.now();
  var expiresAt;
  String author = '';
  Note(title, description, author, [expiresAt]) {
    this.title = title;
    this.description = description;
    this.author = author;
    if (expiresAt != null) {
      this.expiresAt = expiresAt;
    } else {
      this.expiresAt = createdAt.add(Duration(days: 7));
    }
  }
}
