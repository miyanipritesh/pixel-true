class Note {
  final int? id;
  final String title;
  final String description;
  final String number;
  final String date;
  final String time;
  final String xender;
  Note({
    required this.xender,
    required this.title,
    required this.description,
    this.id,
    required this.number,
    required this.date,
    required this.time,
  });

  factory Note.fromJson(Map<String, dynamic> json) => Note(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        number: json['number'],
        xender: json['xender'],
        date: json['date'],
        time: json['time'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'number': number,
        'xender': xender,
        'date': date,
        'time': time
      };
}
