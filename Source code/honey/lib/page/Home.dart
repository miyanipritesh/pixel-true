import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:honey/Widget/drawer.dart';
import 'package:honey/model/taskModel.dart';
import 'package:honey/page/Drawer/profile.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

int counter = 0;
List months = [
  'jan',
  'feb',
  'mar',
  'apr',
  'may',
  'jun',
  'jul',
  'aug',
  'sep',
  'oct',
  'nov',
  'dec'
];

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

DateTime date = DateTime.now();

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  var scaffoldKey1 = GlobalKey<ScaffoldState>();
  TabController? _tabController;

  String formatedate = DateFormat('MMM').format(date);
  final key = GlobalKey();
  int current_mon = date.month;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      key: scaffoldKey1,
      drawer: CoustomDrawer(context),
      backgroundColor: Color(0xFF0B0B45),
      body: ListView(
        // physics: NeverScrollableScrollPhysics(),
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        color: Colors.white,
                        icon: Icon(
                          Icons.menu,
                          size: 35,
                        ),
                        onPressed: () {
                          scaffoldKey1.currentState?.openDrawer();
                        },
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 18.0),
                        child: Image.asset(
                          'assets/images/img_app_logo.png',
                          height: 40,
                          width: 40,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      StreamBuilder<QuerySnapshot>(
                        stream: FirebaseFirestore.instance
                            .collection('Address')
                            .where('isAgree', isEqualTo: true)
                            .snapshots(),
                        builder: (context, snapshot) => Text(
                          '${snapshot.data?.docs[0]['address']} ,${snapshot.data?.docs[0]['city']}',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'THU',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Text(
                            'JAN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '16',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 24),
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.white)),
                        child: Center(
                          child: Text(
                            'XP',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              height: 35,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 15),
                    alignLabelWithHint: true,
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 675,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Expanded(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        /* Container(
                          height: 35,
                          decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 12,
                              ),
                              Icon(Icons.call_to_action_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(12)),
                                child: Icon(Icons.edit_location),
                              )
                            ],
                          ),
                        ),*/
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                color: Colors.deepPurple,
                              ),
                              Text(
                                'Kitchen',
                                style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              )
                            ],
                          ),
                        ),
                        LinearPercentIndicator(
                          width: 130,
                          animation: true,
                          barRadius: Radius.circular(12),
                          lineHeight: 20.0,
                          percent: 0.5,
                          center: Text("50.0%"),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.green,
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Decrement();
                                },
                                child: Image.asset(
                                  'assets/images/ic_green_previous.png',
                                  height: 18,
                                  width: 18,
                                  color: Colors.green,
                                ),
                              ),
                              Text(
                                '${months[counter]} 2022',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              InkWell(
                                onTap: () {
                                  Increment();
                                },
                                child: Image.asset(
                                  'assets/images/ic_green_next.png',
                                  height: 18,
                                  width: 18,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TabBar(
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.green,
                      indicatorPadding: EdgeInsets.only(right: 5),
                      indicatorWeight: 3,
                      isScrollable: false,
                      padding: EdgeInsets.only(right: 50),
                      labelPadding: EdgeInsets.only(right: 0),
                      controller: _tabController,
                      unselectedLabelStyle: TextStyle(fontSize: 12),
                      labelStyle: TextStyle(fontSize: 12),
                      labelColor: Colors.green,
                      indicatorSize: TabBarIndicatorSize.label,
                      tabs: [
                        Tab(
                          text: 'TO-DO',
                        ),

                        // second tab [you can add an icon using the icon property]
                        Tab(
                          text: 'COMPLETED',
                        ),
                        Tab(
                          text: 'DISMISSED',
                        ),
                        Tab(
                          text: 'DISMISSED',
                        ),
                        Tab(
                          text: 'DISMISSED',
                        ),
                      ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Divider(
                      color: Colors.black54,
                      thickness: 2,
                    ),
                  ),
                  /*  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Exterior',
                        style: TextStyle(color: Colors.black),
                      ),
                      Container(
                        clipBehavior: Clip.hardEdge,
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/img_emergency.webp'),
                                fit: BoxFit.fill)),
                      )
                    ],
                  )*/

                  Flexible(
                      fit: FlexFit.tight,
                      child: TabBarView(controller: _tabController, children: [
                        Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, right: 18),
                            child: Container(
                              child: StreamBuilder<List<TaskModle>>(
                                  stream: FireBaseHelper.readTask(),
                                  builder: (context, snapshot) {
                                    if (snapshot.connectionState ==
                                        ConnectionState.waiting) {
                                      return Center(
                                          child: CircularProgressIndicator());
                                    }
                                    if (snapshot.hasData) {
                                      return ListView.builder(
                                        shrinkWrap: true,
                                        itemCount: snapshot.data!.length,
                                        itemBuilder: (context, index) =>
                                            Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 8.0),
                                          child: Slidable(
                                            enabled: true,
                                            closeOnScroll: true,
                                            endActionPane: ActionPane(
                                              motion: ScrollMotion(),
                                              children: [
                                                SlidableAction(
                                                  flex: 2,
                                                  onPressed: dummyList,
                                                  backgroundColor: Colors.green,
                                                  foregroundColor: Colors.white,
                                                  label: 'COMPLETE',
                                                  padding: EdgeInsets.zero,
                                                ),
                                                SlidableAction(
                                                  flex: 2,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  12),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  12)),
                                                  padding: EdgeInsets.zero,
                                                  onPressed: (BuildContext
                                                      contex) async {
                                                    DocumentReference<
                                                        Map<String,
                                                            dynamic>> id;
                                                    TaskModle taskModel;
                                                    await FirebaseFirestore
                                                        .instance
                                                        .collection('Address')
                                                        .where('uid',
                                                            isEqualTo: user.uid)
                                                        .where('isAgree',
                                                            isEqualTo: true)
                                                        .get()
                                                        .then((value) => {
                                                              id = value.docs[0]
                                                                  .reference
                                                                  .collection(
                                                                      'Dismisses_task')
                                                                  .doc(),
                                                              taskModel =
                                                                  TaskModle(
                                                                id: id.id,
                                                                apr: snapshot
                                                                    .data![
                                                                        index]
                                                                    .apr,
                                                                aug: snapshot
                                                                    .data![
                                                                        index]
                                                                    .aug,
                                                                author: snapshot
                                                                    .data![
                                                                        index]
                                                                    .author,
                                                                category: snapshot
                                                                    .data![
                                                                        index]
                                                                    .category,
                                                                cost_savings: snapshot
                                                                    .data![
                                                                        index]
                                                                    .cost_savings,
                                                                createdDate:
                                                                    DateTime
                                                                        .now(),
                                                                dec: snapshot
                                                                    .data![
                                                                        index]
                                                                    .dec,
                                                                desc_main: snapshot
                                                                    .data![
                                                                        index]
                                                                    .desc_main,
                                                                fal: snapshot
                                                                    .data![
                                                                        index]
                                                                    .fal,
                                                                feb: snapshot
                                                                    .data![
                                                                        index]
                                                                    .feb,
                                                                interior_exterior:
                                                                    snapshot
                                                                        .data![
                                                                            index]
                                                                        .interior_exterior,
                                                                jan: snapshot
                                                                    .data![
                                                                        index]
                                                                    .jan,
                                                                jul: snapshot
                                                                    .data![
                                                                        index]
                                                                    .jul,
                                                                jun: snapshot
                                                                    .data![
                                                                        index]
                                                                    .jun,
                                                                location: snapshot
                                                                    .data![
                                                                        index]
                                                                    .location,
                                                                mar: snapshot
                                                                    .data![
                                                                        index]
                                                                    .mar,
                                                                may: snapshot
                                                                    .data![
                                                                        index]
                                                                    .may,
                                                                nov: snapshot
                                                                    .data![
                                                                        index]
                                                                    .nov,
                                                                oct: snapshot
                                                                    .data![
                                                                        index]
                                                                    .oct,
                                                                priority: snapshot
                                                                    .data![
                                                                        index]
                                                                    .priority,
                                                                reminder_recurrence:
                                                                    snapshot
                                                                        .data![
                                                                            index]
                                                                        .reminder_recurrence,
                                                                sep: snapshot
                                                                    .data![
                                                                        index]
                                                                    .sep,
                                                                spr: snapshot
                                                                    .data![
                                                                        index]
                                                                    .spr,
                                                                sub_desc: snapshot
                                                                    .data![
                                                                        index]
                                                                    .sub_desc,
                                                                sum: snapshot
                                                                    .data![
                                                                        index]
                                                                    .sum,
                                                                title: snapshot
                                                                    .data![
                                                                        index]
                                                                    .title,
                                                                trade_image: snapshot
                                                                    .data![
                                                                        index]
                                                                    .trade_image,
                                                                trade_type: snapshot
                                                                    .data![
                                                                        index]
                                                                    .trade_type,
                                                                win: snapshot
                                                                    .data![
                                                                        index]
                                                                    .win,
                                                              ),
                                                              id.set(taskModel
                                                                  .toJson())
                                                            });
                                                  },
                                                  backgroundColor:
                                                      Colors.green.shade300,
                                                  foregroundColor: Colors.white,
                                                  label: 'DISMISSED',
                                                ),
                                              ],
                                            ),
                                            child: Flexible(
                                              fit: FlexFit.tight,
                                              child: Container(
                                                height: 100,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.green,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      fit: FlexFit.tight,
                                                      child: Container(
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 80,
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      image: NetworkImage(
                                                                          '${snapshot.data?[index].trade_image}'),
                                                                      fit: BoxFit
                                                                          .cover),
                                                                  borderRadius: BorderRadius.only(
                                                                      topLeft: Radius
                                                                          .circular(
                                                                              12),
                                                                      bottomLeft:
                                                                          Radius.circular(
                                                                              12))),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .only(
                                                                      left: 3.0,
                                                                      top: 5,
                                                                      bottom:
                                                                          5),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceAround,
                                                                children: [
                                                                  Flexible(
                                                                    fit: FlexFit
                                                                        .tight,
                                                                    child:
                                                                        Container(
                                                                      child:
                                                                          Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                145,
                                                                            child:
                                                                                Flexible(
                                                                              fit: FlexFit.loose,
                                                                              child: Container(
                                                                                child: Text(
                                                                                  '${snapshot.data?[index].title}',
                                                                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF0B0B45)),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '${snapshot.data?[index].trade_type}',
                                                                            style: TextStyle(
                                                                                fontSize: 12,
                                                                                fontWeight: FontWeight.w300,
                                                                                color: Color(0xFF0B0B45)),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 20,
                                                                    width: 20,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(
                                                                                20),
                                                                        color: Colors
                                                                            .green),
                                                                  )
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Row(
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .symmetric(
                                                                    vertical:
                                                                        5.0),
                                                            child: Column(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left:
                                                                          18.0),
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                        '+5 XP',
                                                                        style: TextStyle(
                                                                            color: Color(
                                                                                0xFF0B0B45),
                                                                            fontSize:
                                                                                12,
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            8,
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            20,
                                                                        width:
                                                                            20,
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(20),
                                                                            color: Colors.green),
                                                                      )
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          8.0),
                                                                  child: Row(
                                                                    children: [
                                                                      Text(
                                                                        '${snapshot.data?[index].reminder_recurrence}',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                13,
                                                                            color:
                                                                                Colors.red.shade500,
                                                                            fontWeight: FontWeight.w700),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            5,
                                                                      ),
                                                                      Text(
                                                                        '${snapshot.data?[index].category}',
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                13,
                                                                            color:
                                                                                Colors.green.shade800,
                                                                            fontWeight: FontWeight.w700),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Container(
                                                            // width: 10,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius.only(
                                                                    topRight: Radius
                                                                        .circular(
                                                                            12),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            12)),
                                                                color: Colors
                                                                    .green),
                                                            child: Center(
                                                              child: Icon(
                                                                Icons
                                                                    .arrow_back_ios,
                                                                size: 10,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                    return SizedBox.shrink();
                                  }),
                            )),
                        Center(
                          child: Text(
                            'Place Bid',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Place Bid',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Place Bid',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Center(
                          child: Text(
                            'Place Bid',
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ]))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Increment() {
    if (counter == 11) {
    } else {
      setState(() {
        counter++;
      });
    }
  }

  Decrement() {
    setState(() {
      counter--;
    });
  }

  doNothing(BuildContext context) {
    FirebaseFirestore.instance
        .collection('Address')
        .where('uid', isEqualTo: user.uid)
        .where('isAgree', isEqualTo: true)
        .get()
        .then((value) => {
              value.docs[0].reference
                  .collection('Completed_task')
                  .add({'task': 'yes'})
            });
  }

  List<Data> task = <Data>[];
  dummyList(BuildContext context) async {
    FirebaseFirestore.instance.collection('task').snapshots().listen((event) {
      for (int i = 0; i <= event.docs.length; i++) {
        Data data = Data(
          win: event.docs[i]['win'],
          title: event.docs[i]['title'],
          sum: event.docs[i]['sum'],
          spr: event.docs[i]['spr'],
          sep: event.docs[i]['sep'],
          priority: event.docs[i]['priority'],
          oct: event.docs[i]['oct'],
          nov: event.docs[i]['nov'],
          may: event.docs[i]['may'],
          mar: event.docs[i]['mar'],
          location: event.docs[i]['location'],
          jun: event.docs[i]['jun'],
          jul: event.docs[i]['jul'],
          jan: event.docs[i]['jan'],
          feb: event.docs[i]['feb'],
          fal: event.docs[i]['fal'],
          dec: event.docs[i]['dec'],
          createdDate: DateTime.now(),
          category: event.docs[i]['category'],
          author: event.docs[i]['author'],
          apr: event.docs[i]['apr'],
          aug: event.docs[i]['aug'],
          cost_savings: event.docs[i]['cost_savings'],
          desc_main: event.docs[i]['desc_main'],
          interior_exterior: event.docs[i]['interior_exterior'],
          reminder_recurrence: event.docs[i]['reminder_recurrence'],
          sub_desc: event.docs[i]['sub_desc'],
          trade_image: event.docs[i]['trade_image'],
          trade_type: event.docs[i]['trade_type'],
        );
        task.add(data);
        print('--------${event.docs.length}');
      }
    });
  }
}
