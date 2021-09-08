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

  String getDescriptionConcat() {
    return description.length > 100
        ? description.substring(0, 100) + '...'
        : description;
  }

  String getTime() {
    Duration diff = DateTime.now().difference(this.createdAt);

    if (diff.inDays >= 1) {
      return '${diff.inDays} day(s) ago';
    } else if (diff.inHours >= 1) {
      return '${diff.inHours} hour(s) ago';
    } else if (diff.inMinutes >= 1) {
      return '${diff.inMinutes} minute(s) ago';
    } else if (diff.inSeconds >= 1) {
      return '${diff.inSeconds} second(s) ago';
    } else {
      return 'just now';
    }
  }
}
