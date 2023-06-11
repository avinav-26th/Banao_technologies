import 'package:banao_technologies_assignment_app/widgets/heading_row.dart';
import 'package:banao_technologies_assignment_app/widgets/main_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/options_card_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  }

  double iconSize = 35, fontSize = 18, barWidth = 80, otherIconSize = 30;
  int selectedIndex = 0;
  Color barColor = Colors.transparent;

  Container customNavBar(BuildContext context) {
    return Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 3,
            blurRadius: 2,
            blurStyle: BlurStyle.outer,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 6),
                  height: 5,
                  width: barWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        selectedIndex == 0 ? Colors.blue : Colors.transparent,
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/svg/home.svg',
                  height: 27,
                  width: 27,
                  color: selectedIndex == 0
                      ? const Color(0xff598BED)
                      : Colors.grey.shade700,
                ),
                Text(
                  'Home',
                  style: TextStyle(
                      color: selectedIndex == 0
                          ? const Color(0xff598BED)
                          : Colors.grey.shade700,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 5,
                  width: barWidth,
                  margin: const EdgeInsets.only(bottom: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        selectedIndex == 1 ? Colors.blue : Colors.transparent,
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/svg/open_book_bnb.svg',
                  height: otherIconSize,
                  width: otherIconSize,
                  color: selectedIndex == 1
                      ? const Color(0xff598BED)
                      : Colors.grey.shade700,
                ),
                Text(
                  'Learn',
                  style: TextStyle(
                      color: selectedIndex == 1
                          ? const Color(0xff598BED)
                          : Colors.grey.shade700,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 5,
                  width: barWidth,
                  margin: const EdgeInsets.only(bottom: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        selectedIndex == 2 ? Colors.blue : Colors.transparent,
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/svg/hub.svg',
                  height: otherIconSize,
                  width: otherIconSize,
                  color: selectedIndex == 2
                      ? const Color(0xff598BED)
                      : Colors.grey.shade700,
                ),
                Text(
                  'Hub',
                  style: TextStyle(
                      color: selectedIndex == 2
                          ? const Color(0xff598BED)
                          : Colors.grey.shade700,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 3;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 5,
                  width: barWidth,
                  margin: const EdgeInsets.only(bottom: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        selectedIndex == 3 ? Colors.blue : Colors.transparent,
                  ),
                ),
                SvgPicture.asset(
                  'assets/icons/svg/chat.svg',
                  height: otherIconSize,
                  width: otherIconSize,
                  color: selectedIndex == 3
                      ? const Color(0xff598BED)
                      : Colors.grey.shade700,
                ),
                Text(
                  'Chat',
                  style: TextStyle(
                      color: selectedIndex == 3
                          ? const Color(0xff598BED)
                          : Colors.grey.shade700,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 4;
              });
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 5,
                  width: barWidth,
                  margin: const EdgeInsets.only(bottom: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color:
                        selectedIndex == 4 ? Colors.blue : Colors.transparent,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: selectedIndex == 4
                      ? const Color(0xff598BED)
                      : const Color(0xffDEE8FB),
                  radius: 16,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 13,
                    child: Image.asset(
                      'assets/icons/png/profile_pic_bnb.png',
                      height: 100,
                    ),
                  ),
                ),
                Text(
                  'Profile',
                  style: TextStyle(
                      color: selectedIndex == 4
                          ? const Color(0xff598BED)
                          : Colors.grey.shade700,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //topmost dummy row
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.square,
                  color: Color(0xff868E96),
                ),
                const Icon(
                  Icons.circle,
                  color: Color(0xff868E96),
                ),
                Image.asset('assets/icons/png/triangle.png'),
              ],
            ),

            //upper container
            Container(
              height: MediaQuery.of(context).size.height * 0.43,
              width: double.infinity,
              color: const Color(0xffEEF3FD),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //appbar row
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //menu icon
                        SvgPicture.asset(
                          'assets/icons/svg/menu.svg',
                          height: iconSize,
                          width: iconSize,
                        ),

                        //binder row
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //inbox icon
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: SvgPicture.asset(
                                'assets/icons/svg/inbox.svg',
                                height: iconSize,
                                width: iconSize,
                              ),
                            ),

                            //bell icon
                            SvgPicture.asset(
                              'assets/icons/svg/bell.svg',
                              height: iconSize,
                              width: iconSize,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  //hello priya text
                  const Padding(
                    padding: EdgeInsets.only(left: 15, top: 13, bottom: 8),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Hello, Priya!',
                        style: TextStyle(
                          fontSize: 40,
                          fontFamily: 'Lora',
                        ),
                      ),
                    ),
                  ),

                  //desc text
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 45),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'What do you wanna learn today?',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ),

                  //options row1
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OptionsCardWidget(
                          context, 'assets/icons/png/bookmark.png', 'Programs'),
                      OptionsCardWidget(
                          context, 'assets/icons/png/help.png', 'Get Help'),
                    ],
                  ),

                  //options row2
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OptionsCardWidget(
                          context, 'assets/icons/png/open_book.png', 'Learn'),
                      OptionsCardWidget(
                          context, 'assets/icons/png/trello.png', 'DD Tracker'),
                    ],
                  )
                ],
              ),
            ),

            //scrollable view
            Expanded(
              child: SizedBox(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      HeadingRow('Programs for you'),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            MainCardWidget(
                              context,
                              const Color(0xffDDE3C2),
                              'assets/images/lifestyle.png',
                              'LIFESTYLE',
                              'A complete guide for your new born baby',
                              '16 lessons',
                              const SizedBox(
                                height: 1,
                                width: 1,
                              ),
                              false,
                            ),
                            MainCardWidget(
                              context,
                              const Color(0xffFFF0D3),
                              'assets/images/working_parent.png',
                              'WORKING PARENT',
                              'Understanding of human behaviour',
                              '12 lessons',
                              const SizedBox(
                                height: 1,
                                width: 1,
                              ),
                              false,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      HeadingRow('Events and experiences'),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            MainCardWidget(
                              context,
                              const Color(0xffDDE3C2),
                              'assets/images/babycare.png',
                              'BABYCARE',
                              'Understanding of human behaviour',
                              '13 Feb, Sunday',
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color: const Color(0xff598BED),
                                        width: 2),
                                  ),
                                  child: const Text(
                                    'Book',
                                    style: TextStyle(
                                      color: Color(0xff598BED),
                                      fontSize: 18,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                ),
                              ),
                              true,
                            ),
                            MainCardWidget(
                              context,
                              const Color(0xffDDE3C2),
                              'assets/images/babycare.png',
                              'BABYCARE',
                              'Understanding of human behaviour',
                              '13 Feb, Sunday',
                              Padding(
                                padding: const EdgeInsets.only(right: 8),
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 15),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    border: Border.all(
                                        color: const Color(0xff598BED),
                                        width: 2),
                                  ),
                                  child: const Text(
                                    'Book',
                                    style: TextStyle(
                                      color: Color(0xff598BED),
                                      fontSize: 18,
                                      fontFamily: 'Inter',
                                    ),
                                  ),
                                ),
                              ),
                              true,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      HeadingRow('Lessons for you'),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            MainCardWidget(
                              context,
                              const Color(0xffDDE3C2),
                              'assets/images/babycare.png',
                              'BABYCARE',
                              'Understanding of human behaviour',
                              '3 min',
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 12, bottom: 8),
                                child: SvgPicture.asset(
                                  'assets/icons/svg/lock.svg',
                                  height: otherIconSize,
                                  width: otherIconSize,
                                ),
                              ),
                              true,
                            ),
                            MainCardWidget(
                              context,
                              const Color(0xffDDE3C2),
                              'assets/images/babycare.png',
                              'BABYCARE',
                              'Understanding of human behaviour',
                              '1 min',
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 12, bottom: 8),
                                child: SvgPicture.asset(
                                  'assets/icons/svg/lock.svg',
                                  height: otherIconSize,
                                  width: otherIconSize,
                                ),
                              ),
                              true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: customNavBar(context),
    );
  }
}
