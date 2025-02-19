import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  // ********* PUSH METHODS ********* //

  /// Push a new screen (Unnamed route)
  void push(Widget page) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  /// Push a new screen using a named route
  void pushNamed(String routeName, {Object? arguments}) {
    Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  /// Push a new screen with a custom transition
  void pushWithTransition(Widget page,
      {TransitionType transitionType = TransitionType.fade, RouteSettings? settings}) {
    Navigator.push(
      this,
      transitionType.customTransitionPageRoute(
        page,
        settings: settings ?? RouteSettings(name: ModalRoute.of(this)?.settings.name),
      ),
    );
  }

  // ********* PUSH REPLACEMENT METHODS ********* //

  /// Replace current screen with a new screen (Unnamed route)
  void pushReplacement(Widget page) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  /// Replace current screen with a named route
  void pushReplacementNamed(String routeName, {Object? arguments}) {
    Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  }

  /// Replace current screen with a new screen with custom transition
  void pushReplacementWithTransition(Widget page,
      {TransitionType transitionType = TransitionType.fade, RouteSettings? settings}) {
    Navigator.pushReplacement(
      this,
      transitionType.customTransitionPageRoute(
        page,
        settings: settings ?? RouteSettings(name: ModalRoute.of(this)?.settings.name),
      ),
    );
  }

  // ********* PUSH AND REMOVE UNTIL METHODS ********* //

  /// Push and remove all previous screens (Unnamed route)
  void pushAndRemoveUntil(Widget page) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => page),
      (route) => false, // Removes all previous routes
    );
  }

  /// Push and remove all previous screens using a named route
  void pushAndRemoveUntilNamed(String routeName, {Object? arguments}) {
    Navigator.pushNamedAndRemoveUntil(
      this,
      routeName,
      (route) => false, // Removes all previous routes
      arguments: arguments,
    );
  }

  void pushAndRemoveUntilWithTransition(Widget page,
      {TransitionType transitionType = TransitionType.fade, RouteSettings? settings}) {
    Navigator.pushAndRemoveUntil(
      this,
      transitionType.customTransitionPageRoute(
        page,
        settings: settings ?? RouteSettings(name: ModalRoute.of(this)?.settings.name),
      ),
      (route) => false, // Removes all previous routes
    );
  }

  // ********* POP METHODS ********* //

  /// Pop the current screen
  void pop() {
    if (Navigator.canPop(this)) {
      Navigator.pop(this);
    }
  }

  /// Pop with result
  void popWithResult<T>(T result) {
    if (Navigator.canPop(this)) {
      Navigator.pop(this, result);
    }
  }

  // ********* DIALOG & BOTTOM SHEET METHODS ********* //

  /// Show a dialog
  Future<T?> showDialogBox<T>({required Widget dialog}) {
    return showDialog<T>(
      context: this,
      builder: (context) => dialog,
    );
  }

  /// Show a bottom sheet
  Future<T?> showBottomSheet<T>({required Widget sheet}) {
    return showModalBottomSheet<T>(
      context: this,
      builder: (context) => sheet,
    );
  }

  // ********* GET ARGUMENTS METHOD ********* //

  /// Get arguments safely with type checking
  T? getArguments<T>() {
    final args = ModalRoute.of(this)?.settings.arguments;
    if (args is T) {
      return args;
    }
    return null;
  }
}
