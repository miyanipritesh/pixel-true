class FirebaseNote {
  final String? id;
  final String title;
  final String email;
  final String number;
  final String date;
  final String time;
  final String xender;
  FirebaseNote({
    required this.xender,
    required this.title,
    required this.email,
    this.id,
    required this.number,
    required this.date,
    required this.time,
  });

  factory FirebaseNote.fromJson(Map<String, dynamic> json) => FirebaseNote(
        id: json['id'],
        title: json['title'],
        email: json['email'],
        number: json['number'],
        xender: json['xender'],
        date: json['date'],
        time: json['time'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'email': email,
        'number': number,
        'xender': xender,
        'date': date,
        'time': time
      };
}
