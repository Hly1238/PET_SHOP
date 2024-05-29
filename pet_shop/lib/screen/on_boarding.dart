import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

// class OnBoarding extends StatelessWidget {
//   // const OnBoarding({Key? key}) : super(key: key);

//   final introKey = GlobalKey<IntroductionScreenState>();
//   @override
//   Widget build(BuildContext context) {
//     final pageDecoration = PageDecoration(
//         titleTextStyle: TextStyle(
//           fontSize: 28,
//           fontWeight: FontWeight.w700,
//         ),
//         bodyTextStyle: TextStyle(fontSize: 19),
//         bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
//         pageColor: Colors.white,
//         imagePadding: EdgeInsets.zero);

// return IntroductionScreen(
//   key: introKey,
//   globalBackgroundColor: Colors.white,
//   pages: [
//     PageViewModel(
//         title: "Shop Now",
//         body:
//             "Bringing home a pet is a life changing experience that only spreads joy",
//         image: Image.asset(
//             "../assets/images/_project/On_Boarding/on_boarding_1",
//             width: 200),
//         decoration: pageDecoration),
//     PageViewModel(
//         title: "Shop Now",
//         body:
//             "Bringing home a pet is a life changing experience that only spreads joy",
//         image: Image.asset(
//             "../assets/images/_project/On_Boarding/on_boarding_1",
//             width: 200),
//         decoration: pageDecoration),
//     PageViewModel(
//         title: "Shop Now",
//         body:
//             "Bringing home a pet is a life changing experience that only spreads joy",
//         image: Image.asset(
//             "../assets/images/_project/On_Boarding/on_boarding_1",
//             width: 200),
//         decoration: pageDecoration),
//   ],
//   showSkipButton: true,
//   showDoneButton: true,
//   showBackButton: true,
//   back: Text(
//     "Back",
//     style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
//   ),
//   next: Text("Next",
//       style:
//           TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969))),
//   onDone: () {},
//   onSkip: () {},
//   dotsDecorator: DotsDecorator(),
// );
//   }
// }

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final _introKey = GlobalKey<IntroductionScreenState>();
  String _status = 'Waiting...';
  final pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
      ),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.fromLTRB(16, 0, 16, 16),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero);
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      key: _introKey,
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
            title: "Shop Now",
            body:
                "Bringing home a pet is a life changing experience that only spreads joy",
            image: Image.asset("../_project/On_Boarding/on_boarding_1.jpg",
                width: 200),
            decoration: pageDecoration),
      ],
      showSkipButton: false,
      showDoneButton: false,
      showBackButton: true,
      back: Text(
        "Back",
        style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),
      ),
      next: Text("Next",
          style:
              TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969))),
      onDone: () {},
      onSkip: () {},
      dotsDecorator: DotsDecorator(),
    );
  }
}


// return IntroductionScreen(
//       // 2. Pass that key to the `IntroductionScreen` `key` param
//       key: _introKey,
//       pages: [
//         PageViewModel(
//             title: 'Page One',
//             bodyWidget: Column(
//               children: [
//                 Text(_status),
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() => _status = 'Going to the next page...');

//                       // 3. Use the `currentState` member to access functions defined in `IntroductionScreenState`
//                       Future.delayed(const Duration(seconds: 3),
//                           () => _introKey.currentState?.next());
//                     },
//                     child: const Text('Start'))
//               ],
//             )),
//         PageViewModel(
//             title: 'Page Two', bodyWidget: const Text('That\'s all folks'))
//       ],
//       showNextButton: false,
//       showDoneButton: false,
//     );