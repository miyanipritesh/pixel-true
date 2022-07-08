import 'dart:core';

class TaskModle {
  String? id;
  String? location;
  String? trade_type;
  String? title;
  String? desc_main;
  String? interior_exterior;
  String? reminder_recurrence;
  Object? win;
  Object? spr;
  Object? sum;
  Object? fal;
  Object? jan;
  Object? feb;
  Object? mar;
  Object? apr;
  Object? may;
  Object? jun;
  Object? jul;
  Object? aug;
  Object? sep;
  Object? oct;
  Object? nov;
  Object? dec;
  String? category;
  String? author;
  DateTime? createdDate;
  int? cost_savings;
  String? trade_image;
  List<dynamic>? sub_desc;
  int? priority;
  String? realtorRecommendedYesNo;

  TaskModle({
    this.id,
    this.location,
    this.trade_type,
    this.title,
    this.desc_main,
    this.interior_exterior,
    this.reminder_recurrence,
    this.win,
    this.spr,
    this.sum,
    this.fal,
    this.jan,
    this.feb,
    this.mar,
    this.apr,
    this.may,
    this.jun,
    this.jul,
    this.aug,
    this.sep,
    this.oct,
    this.nov,
    this.dec,
    this.category,
    this.author,
    this.createdDate,
    this.cost_savings,
    this.trade_image,
    this.sub_desc,
    this.priority,
    this.realtorRecommendedYesNo,
  });

  factory TaskModle.fromJson(Map<String, dynamic> json) {
    return TaskModle(
      location: json['location'],
      trade_type: json['trade_type'],
      title: json['title'],
      desc_main: json['desc_main'],
      interior_exterior: json['interior_exterior'],
      reminder_recurrence: json['reminder_recurrence'],
      win: json['win'],
      spr: json['spr'],
      sum: json['sum'],
      fal: json['fal'],
      jan: json['jan'],
      feb: json['feb'],
      mar: json['mar'],
      apr: json['apr'],
      may: json['may'],
      jun: json['jun'],
      jul: json['jul'],
      aug: json['aug'],
      sep: json['sep'],
      oct: json['oct'],
      nov: json['nov'],
      dec: json['dec'],
      category: json['category'],
      author: json['author'],
      createdDate: json['createdDate'],
      cost_savings: json['cost_savings'],
      trade_image: json['trade_image'],
      sub_desc: json['sub_desc'],
      priority: json['priority'],
      realtorRecommendedYesNo: json['realtorRecommendedYesNo'],
      id: json['id'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'location': location,
      'trade_type': trade_type,
      'title': title,
      'desc_main': desc_main,
      'interior_exterior': interior_exterior,
      'reminder_recurrence': reminder_recurrence,
      'win': win,
      'spr': spr,
      'sum': sum,
      'fal': fal,
      'jan': jan,
      'feb': feb,
      'mar': mar,
      'apr': apr,
      'may': may,
      'jun': jun,
      'jul': jul,
      'aug': aug,
      'sep': sep,
      'oct': oct,
      'nov': nov,
      'dec': dec,
      'category': category,
      'author': author,
      'createdDate': createdDate,
      'cost_savings': cost_savings,
      'trade_image': trade_image,
      'sub_desc': sub_desc,
      'priority': priority,
      'realtorRecommendedYesNo': realtorRecommendedYesNo,
    };
  }
}

class Data {
  String? location;
  String? trade_type;
  String? title;
  String? desc_main;
  String? interior_exterior;
  String? reminder_recurrence;
  Object? win;
  Object? spr;
  Object? sum;
  Object? fal;
  Object? jan;
  Object? feb;
  Object? mar;
  Object? apr;
  Object? may;
  Object? jun;
  Object? jul;
  Object? aug;
  Object? sep;
  Object? oct;
  Object? nov;
  Object? dec;
  String? category;
  String? author;
  DateTime? createdDate;
  int? cost_savings;
  String? trade_image;
  List<dynamic>? sub_desc;
  int? priority;

  Data({
    this.location,
    this.trade_type,
    this.title,
    this.desc_main,
    this.interior_exterior,
    this.reminder_recurrence,
    this.win,
    this.spr,
    this.sum,
    this.fal,
    this.jan,
    this.feb,
    this.mar,
    this.apr,
    this.may,
    this.jun,
    this.jul,
    this.aug,
    this.sep,
    this.oct,
    this.nov,
    this.dec,
    this.category,
    this.author,
    this.createdDate,
    this.cost_savings,
    this.trade_image,
    this.sub_desc,
    this.priority,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
      location: json['location'],
      trade_type: json['trade_type'],
      title: json['title'],
      desc_main: json['desc_main'],
      interior_exterior: json['interior_exterior'],
      reminder_recurrence: json['reminder_recurrence'],
      win: json['win'],
      spr: json['spr'],
      sum: json['sum'],
      fal: json['fal'],
      jan: json['jan'],
      feb: json['feb'],
      mar: json['mar'],
      apr: json['apr'],
      may: json['may'],
      jun: json['jun'],
      jul: json['jul'],
      aug: json['aug'],
      sep: json['sep'],
      oct: json['oct'],
      nov: json['nov'],
      dec: json['dec'],
      category: json['category'],
      author: json['author'],
      createdDate: json['createdDate'],
      cost_savings: json['cost_savings'],
      trade_image: json['trade_image'],
      sub_desc: json['sub_desc'],
      priority: json['priority'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'location': location,
      'trade_type': trade_type,
      'title': title,
      'desc_main': desc_main,
      'interior_exterior': interior_exterior,
      'reminder_recurrence': reminder_recurrence,
      'win': win,
      'spr': spr,
      'sum': sum,
      'fal': fal,
      'jan': jan,
      'feb': feb,
      'mar': mar,
      'apr': apr,
      'may': may,
      'jun': jun,
      'jul': jul,
      'aug': aug,
      'sep': sep,
      'oct': oct,
      'nov': nov,
      'dec': dec,
      'category': category,
      'author': author,
      'createdDate': createdDate,
      'cost_savings': cost_savings,
      'trade_image': trade_image,
      'sub_desc': sub_desc,
      'priority': priority,
    };
  }
}
