import 'package:flutter/material.dart';

enum TransitionType {
  fade,
  slide,
  scale,
  rotation,
  fadeSlide,
  fadeScale,
  scaleSlide,
  fadeRotation,
  slideRotation,
  scaleRotation,
  slideUp,
  slideDown,
  scaleUp,
  scaleDown,
  flip,
  bounce,
  opacityScale,
  rotateAndScale,
}

extension TransitionExtension on TransitionType {
  PageRouteBuilder customTransitionPageRoute(
    Widget page, {
    required RouteSettings settings,
  }) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return _customTransitionPage(page, animation, secondaryAnimation);
      },
      settings: settings,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return _customTransitionPage(child, animation, secondaryAnimation);
      },
    );
  }

  Widget _customTransitionPage(
    Widget child,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    switch (this) {
      case TransitionType.fade:
        return FadeTransition(
          opacity: animation,
          child: child,
        );

      case TransitionType.slide:
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          )),
          child: child,
        );

      case TransitionType.scale:
        return ScaleTransition(
          scale: animation,
          child: child,
        );

      case TransitionType.rotation:
        return RotationTransition(
          turns: animation,
          child: child,
        );

      case TransitionType.fadeSlide:
        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            )),
            child: child,
          ),
        );

      case TransitionType.fadeScale:
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );

      case TransitionType.scaleSlide:
        return ScaleTransition(
          scale: animation,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(1.0, 0.0),
              end: Offset.zero,
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.easeInOut,
            )),
            child: child,
          ),
        );

      case TransitionType.fadeRotation:
        return FadeTransition(
          opacity: animation,
          child: RotationTransition(
            turns: animation,
            child: child,
          ),
        );

      case TransitionType.slideRotation:
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(1.0, 0.0),
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          )),
          child: RotationTransition(
            turns: animation,
            child: child,
          ),
        );

      case TransitionType.scaleRotation:
        return ScaleTransition(
          scale: animation,
          child: RotationTransition(
            turns: animation,
            child: child,
          ),
        );

      case TransitionType.slideUp:
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0.0, 1.0), // Slide from bottom to top
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          )),
          child: child,
        );

      case TransitionType.slideDown:
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0.0, -1.0), // Slide from top to bottom
            end: Offset.zero,
          ).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          )),
          child: child,
        );

      case TransitionType.scaleUp:
        return ScaleTransition(
          scale: Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          )),
          child: child,
        );

      case TransitionType.scaleDown:
        return ScaleTransition(
          scale: Tween<double>(begin: 1.0, end: 0.0).animate(CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOut,
          )),
          child: child,
        );

      case TransitionType.flip:
        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            return Transform(
              transform: Matrix4.rotationY(animation.value * 3.14159),
              alignment: Alignment.center,
              child: child,
            );
          },
          child: child,
        );

      case TransitionType.bounce:
        return BounceInUp(
          animation: animation,
          child: child,
        );

      case TransitionType.opacityScale:
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );

      case TransitionType.rotateAndScale:
        return RotationTransition(
          turns: animation,
          child: ScaleTransition(
            scale: animation,
            child: child,
          ),
        );
    }
  }
}

// Helper widget for the Bounce effect
class BounceInUp extends StatelessWidget {
  final Animation<double> animation;
  final Widget child;

  const BounceInUp({Key? key, required this.animation, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0.0, -30 * (1 - animation.value)),
          child: Transform.scale(
            scale: 1.2 - 0.2 * animation.value,
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
