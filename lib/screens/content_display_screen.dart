import 'dart:convert';
import 'package:banao_technologies_assignment_app/models/lessons_model.dart';
import 'package:banao_technologies_assignment_app/models/programs_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;

import '../widgets/main_card_widget.dart';

class ContentDisplayScreen extends StatefulWidget {
  final String heading;
  const ContentDisplayScreen({Key? key, required this.heading})
      : super(key: key);

  @override
  State<ContentDisplayScreen> createState() => _ContentDisplayScreenState();
}

class _ContentDisplayScreenState extends State<ContentDisplayScreen> {
  Future<ProgramsModel> getProgramsData() async {
    final response = await http.get(
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs'));
    var responseData = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      if (kDebugMode) {
        print(ProgramsModel.fromJson(responseData).items?[0].name);
      }
    } else {
      throw Exception('Failed to load');
    }
    return ProgramsModel.fromJson(responseData);
  }

  Future<LessonsModel> getLessonsData() async {
    final response = await http.get(
        Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons'));
    var responseData = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      if (kDebugMode) {
        print(LessonsModel.fromJson(responseData).items?[0].name);
      }
    } else {
      throw Exception('Failed to load');
    }
    return LessonsModel.fromJson(responseData);
  }

  @override
  void initState() {
    super.initState();
    (widget.heading.split(" ")[0].toString() == 'Programs')
        ? getProgramsData()
        : ((widget.heading.split(" ")[0].toString() == 'Lessons')
            ? getLessonsData()
            : null);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  widget.heading,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Lora',
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            //scrollable part
            Expanded(
              child: SizedBox(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: (widget.heading.split(" ")[0].toString() == 'Programs')
                      ? FutureBuilder<ProgramsModel>(
                          future: getProgramsData(),
                          builder: (context, snapshot) {
                            return (snapshot.hasData)
                                ? GridView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 1,
                                      mainAxisSpacing: 2,
                                      mainAxisExtent: 350,
                                    ),
                                    itemCount: snapshot.data?.items?.length,
                                    itemBuilder: (context, index) {
                                      return MainCardWidget(
                                        context,
                                        const Color(0xffDDE3C2),
                                        'assets/images/lifestyle.png',
                                        snapshot.data!.items![index].category
                                            .toString()
                                            .toUpperCase(),
                                        snapshot.data!.items![index].name
                                            .toString(),
                                        '${snapshot.data!.items![index].lesson.toString()} lessons',
                                        const SizedBox(
                                          height: 1,
                                          width: 1,
                                        ),
                                        false,
                                        false,
                                      );
                                    },
                                  )
                                : const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 300),
                                    child: SpinKitSpinningLines(
                                      color: Colors.blueAccent,
                                      size: 200,
                                      lineWidth: 3,
                                    ),
                                  );
                          })
                      : ((widget.heading.split(" ")[0].toString() == 'Lessons')
                          ? FutureBuilder<LessonsModel>(
                              future: getLessonsData(),
                              builder: (context, snapshot) {
                                return (snapshot.hasData)
                                    ? GridView.builder(
                                        physics: const BouncingScrollPhysics(),
                                        shrinkWrap: true,
                                        gridDelegate:
                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 1,
                                          mainAxisSpacing: 2,
                                          mainAxisExtent: 390,
                                        ),
                                        itemCount: snapshot.data?.items?.length,
                                        itemBuilder: (context, index) {
                                          return MainCardWidget(
                                            context,
                                            const Color(0xffDDE3C2),
                                            'assets/images/babycare.png',
                                            snapshot
                                                .data!.items![index].category
                                                .toString()
                                                .toUpperCase(),
                                            snapshot.data!.items![index].name
                                                .toString(),
                                            '${snapshot.data!.items![index].duration.toString()} min',
                                            const SizedBox(
                                              height: 1,
                                              width: 1,
                                            ),
                                            false,
                                            false,
                                          );
                                        },
                                      )
                                    : const Padding(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 300),
                                        child: SpinKitSpinningLines(
                                          color: Colors.blueAccent,
                                          size: 200,
                                          lineWidth: 3,
                                        ),
                                      );
                              })
                          : null),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
