import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Melooha',
            style: TextStyle(color: Color.fromARGB(255, 221, 79, 126)),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 9, 18, 29),
      ),
      backgroundColor: Color.fromARGB(255, 9, 18, 29),
      body: Stack(
        alignment: Alignment.centerRight,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: 4,
            scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemBuilder: (context, index) {
              switch (index) {
                case 0:
                  return _buildContainer();
                case 1:
                  return _SecondPage(context);
                case 2:
                  return _ThirdPage(context);
                case 3:
                  return _FourPage(context);
                default:
                  return Container();
              }
            },
          ),
          Positioned(
            right: 16,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 4,
              axisDirection: Axis.vertical,
              effect: ExpandingDotsEffect(
                activeDotColor: Color.fromARGB(255, 230, 221, 221),
                dotHeight: 8.h,
                dotWidth: 8.w,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContainer() {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        height: MediaQuery.of(context).size.height - 150.h,
        width: MediaQuery.of(context).size.width - 50.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 17, 46, 80),
              Color.fromARGB(255, 18, 36, 52),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(12.0.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2.r,
              blurRadius: 5.r,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dec 12, 2023',
                style: TextStyle(fontSize: 16.sp, color: Colors.white38),
              ),
              SizedBox(height: 10.h),
              Text(
                'Todays Insight',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Embrace change, trust intuition, and go for it today.',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                'Seize the day and embrace transformation as you navigate new beginnings. Let your intuition guide you towards hidden opportunities. In the realm of love, romance blossoms as you connect with someone special. Your career shines brightly, bringing recognition and rewards for your dedication. Remember, Aries, the stars align in your favor today, so step into the spotlight and let your brilliance shine. In the realm of love, romance blossoms as you. Aries, the stars align in.',
                style: TextStyle(fontSize: 16.sp, color: Colors.white60),
              ),
              SizedBox(height: 80.h),
              IconsAll(),
            ],
          ),
        ),
      ),
    );
  }
}

//Start for 2nd page
Widget _SecondPage(context) {
  return Padding(
    padding: const EdgeInsets.all(30),
    child: Container(
      height: MediaQuery.of(context).size.height - 150.h,
      width: MediaQuery.of(context).size.width - 50.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 17, 46, 80),
            Color.fromARGB(255, 18, 36, 52),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
        borderRadius: BorderRadius.circular(12.0.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2.r,
            blurRadius: 5.r,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Good and challenging Movements',
              style: TextStyle(fontSize: 16.sp, color: Colors.white60),
            ),
            SizedBox(height: 10.h),
            Text(
              'Your Cosmic Dialy Forecast',
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.h),
            SecondpageCard(
                'Choghadiya',
                'embrace positivity, seize opportunity between',
                '11:34 PM',
                '12:34 AM'),
            SizedBox(
              height: 10.h,
            ),
            SecondpageCard('Rahu Kaal', 'navigate challenges wisely between',
                '03:34 PM', '6:34 PM'),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100.h,
                  width: 130.w,
                  color: Color.fromARGB(255, 17, 25, 33),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.circle,
                                  color: Colors.red,
                                  size: 20.sp,
                                )),
                            Text(
                              'Red',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Text(
                          'Lucky Colour',
                          style:
                              TextStyle(fontSize: 16.sp, color: Colors.white),
                        ),
                      ]),
                ),
                Container(
                  height: 100.h,
                  width: 130.w,
                  color: Color.fromARGB(255, 17, 25, 33),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '12',
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Text(
                          'Lucky Number',
                          style:
                              TextStyle(fontSize: 16.sp, color: Colors.white),
                        ),
                      ]),
                )
              ],
            ),
            SizedBox(
              height: 25.h,
            ),
            IconsAll(),
          ],
        ),
      ),
    ),
  );
}

Widget _ThirdPage(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(30),
    child: Container(
      height: MediaQuery.of(context).size.height - 150.h,
      width: MediaQuery.of(context).size.width - 50.w,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 17, 46, 80),
            Color.fromARGB(255, 18, 36, 52),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 1.0],
          tileMode: TileMode.clamp,
        ),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2.r,
            blurRadius: 5.r,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: [
            Text(
              'Ask your Questions',
              style: TextStyle(fontSize: 16.sp, color: Colors.white38),
            ),
            SizedBox(height: 10.h),
            Text(
              'Pose Your Questions to AI',
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 40.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 20.0.w,
                      height: 20.0.h,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        // image: DecorationImage(
                        //   fit: BoxFit.cover,
                        //   image: AssetImage('assets/img-5.jpg'),
                        // ),
                        color: Color.fromARGB(255, 209, 91, 130),
                      ),
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      'Vaani',
                      style: TextStyle(fontSize: 16.sp, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Here are some suggestions for you.',
                  style: TextStyle(fontSize: 16.sp, color: Colors.white),
                ),
                SizedBox(
                  height: 10.h,
                ),
                ThirdPageCard(
                    'How will be my dad\'s health for the coming three months?'),
                SizedBox(
                  height: 10.h,
                ),
                ThirdPageCard('Will I get married this year?'),
                SizedBox(
                  height: 10.h,
                ),
                ThirdPageCard('Will I win the upcoming fotball match?'),
                SizedBox(
                  height: 10.h,
                ),
                ThirdPageCard(
                    'How will be my dad\'s health for the coming three months?'),
                SizedBox(
                  height: 10.h,
                ),
                ThirdPageCard('How will be my coming days?'),
                SizedBox(
                  height: 100.h,
                ),
                Center(
                  child: Container(
                    // width: 300,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 10, 16, 21),
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'Ask your own Question to Vaani',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _FourPage(context) {
  return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        height: MediaQuery.of(context).size.height - 150.h,
        width: MediaQuery.of(context).size.width - 50.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 17, 46, 80),
              Color.fromARGB(255, 0, 0, 0),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          ),
          borderRadius: BorderRadius.circular(12.0.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Know your Qualities',
                style: TextStyle(fontSize: 14, color: Colors.white38),
              ),
              SizedBox(height: 10.h),
              Text(
                'Know Yourself, Based on Your',
                style: TextStyle(
                    fontSize: 18.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.h),
              Text(
                'Personalty Intelligence',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30.h,
              ),
              Image.asset(
                'assets/4th-img.png',
                width: 130.w,
                height: 130.h,
                fit: BoxFit.contain,
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                colorBlendMode: BlendMode.modulate,
              ),
              SizedBox(
                height: 30.h,
              ),
              Text(
                'Emotional Intelligence',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.h,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Text(
                      'Emotional intelligence is the ability to recognize, understand, and manage our own emotions while effectively navigating and empathizing with the emotions of others. It involves self-awareness, self-regulation....',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white60,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Add functionality for the button
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 235, 83, 139))),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.lock_rounded)),
                        Text('Unlock all 23 personality Traits'),
                      ],
                    ),
                  ),
                ],
              ),

              // Text(
              //   'Emotional intelligence is the ability to recognize, understand, and manage our own emotions while effectively navigating and empathizing with the emotions of others. It involves self-awareness, self-regulation, empathy, motivation, and social skills, contributing to healthier relationships and increased personal and professional success.',
              //   style: TextStyle(fontSize: 20, color: Colors.white),
              // ),
            ],
          ),
        ),
      ));
}

//Card for second page
Widget SecondpageCard(text1, text2, text3, text4) {
  return Padding(
    padding: const EdgeInsets.all(1),
    child: Container(
      height: 130.h,
      width: 375.w,
      color: Color.fromARGB(255, 9, 20, 29),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          text1,
          style: TextStyle(
              fontSize: 20.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.h,
        ),
        Center(
          child: Text(
            text2,
            style: TextStyle(fontSize: 12.sp, color: Colors.white60),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              text3,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'to',
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              text4,
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Start',
              style: TextStyle(fontSize: 14.sp, color: Colors.white60),
            ),
            Text(
              'End',
              style: TextStyle(fontSize: 14.sp, color: Colors.white60),
            ),
          ],
        )
      ]),
    ),
  );
}

Widget ThirdPageCard(text) {
  return Container(
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 10, 16, 21),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.8)),
      ),
    ),
  );
}

//Like and Dislike options
Widget IconsAll() {
  return Row(
    children: [
      Container(
        color: Color.fromARGB(255, 16, 31, 41),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            IconButton(
              icon: Icon(
                Icons.thumb_up,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
            // _verticalShadedLine(),
            IconButton(
              icon: Icon(
                Icons.thumb_down,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      SizedBox(width: 120.w),
      Container(
        color: Color.fromARGB(255, 12, 31, 47),
        child: IconButton(
          icon: Icon(
            Icons.share,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    ],
  );
}
