import 'package:flutter/material.dart';
import 'package:ride_sharing/core/const/app_colors.dart';
import 'package:ride_sharing/core/const/app_text.dart';
import 'package:ride_sharing/core/const/image_path.dart';
import 'package:ride_sharing/feature/login_screen/login_screen.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              SizedBox(height: 41),
              CircleAvatar(
                backgroundColor: Color(0xff584CF4),
                maxRadius: 80,
                child: Image(image: AssetImage(ImagePath.navigator)),
              ),
              SizedBox(height: 71),
              Text('Assist with Navigation', style: AppText.heading),
              SizedBox(height: 11),
              Text(
                'Use real-time route information to schedule \nyour ride.',
                textAlign: TextAlign.center,
                style: AppText.useReal,
              ),

              SizedBox(height: 42),
              _threeDots(),
              // SmoothPageIndicator(
              //   controller: controller,
              //   count: 3,
              //   effect: WormEffect(
              //     dotHeight: 10,
              //     dotWidth: 10,
              //     spacing: 10,
              //     activeDotColor: Appcolors.blueColor,
              //     dotColor: Colors.grey.shade300,
              //   ),
              // ),
              SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: SizedBox(
                  height: 50,
                  width: 340,
                  child: ElevatedButton(
                    onPressed: () => LoginScreen(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Appcolors.blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(5),
                      ),
                    ),
                    child: Text('Next', style: AppText.nextButton),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _threeDots() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 18,
          height: 8,
          decoration: BoxDecoration(
            color: Appcolors.blueColor,
            borderRadius: BorderRadius.circular(11),
          ),
        ),
        const SizedBox(width: 6),
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 6),
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: Colors.grey.shade300,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
