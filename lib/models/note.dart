class Note {
  final int ? id;
  final String ? name;
  final String  ? mail;
  final String ? password;

  Note(
      { this.id,  this.name, this.mail,  this.password});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'mail': mail,
      'password': password
    };
  }
}



