import 'package:flutter/material.dart';
import '../widgets/app_scaffold.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            final isLargeScreen = constraints.maxWidth > 600;
            final maxWidth = isLargeScreen ? 400.0 : constraints.maxWidth;

            return SingleChildScrollView(
              child: Center(
                child: Container(
                  width: maxWidth,
                  padding: EdgeInsets.all(screenWidth * 0.06),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: screenHeight * 0.1),
                      //
                      SizedBox(height: screenHeight * 0.04),

                      Text(
                        'Welcome',
                        style: TextStyle(
                          fontSize: screenWidth * (isLargeScreen ? 0.06 : 0.1),
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),

                      SizedBox(height: screenHeight * 0.01),
                    ],
                  ),
                ),
              ),
            );
          }
        ),
    );
  }
}
