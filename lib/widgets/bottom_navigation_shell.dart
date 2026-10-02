import 'package:flutter/cupertino.dart';
import 'package:pm1_tugas1/config/routes.dart';
import 'package:flutter/material.dart';

class BottomNavigationShell extends StatelessWidget {
  final Widget child;

  const BottomNavigationShell({
    super.key,
    required this.child,
  });
  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    switch (location) {
      case AppRoutes.home: return 0;
      case AppRoutes.favorites: return 1;
      case AppRoutes.profile: return 2;
      default: return 0;
    }
  }
  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go(AppRoutes.home);
        break;
      case 1:
        context.go(AppRoutes.favorites);
        break;
      case 2:
        context.go(AppRoutes.profile);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final currentIndex = _calculateSelectedIndex(context);

    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, _) async {
        if (didPop) return;

        final String currentLocation = GoRouterState.of(context).uri.path;

        if (currentLocation == AppRoutes.home) {
          Navigator.of(context).pop();
        } else {
          if (GoRouter.of(context).canPop()) {
            GoRouter.of(context).pop();
          } else {
            context.go(AppRoutes.home);
          }
        }
      },
      child: Scaffold(
        body: child,
        extendBody: true,
        bottomNavigationBar: Container(
          margin: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.04,
            vertical: 0,
          ),
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
          decoration: const BoxDecoration(
            color: Color(0xFF0b395e),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(
                context,
                0,
                Icons.home_rounded,
                'Home',
                currentIndex,
                screenWidth,
                screenHeight,
              ),
              _buildNavItem(
                context,
                1,
                Icons.favorite_rounded,
                'Favorites',
                currentIndex,
                screenWidth,
                screenHeight,
              ),
              _buildNavItem(
                context,
                2,
                Icons.person_rounded,
                'Profile',
                currentIndex,
                screenWidth,
                screenHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }


}
