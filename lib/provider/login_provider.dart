import 'package:flutter/cupertino.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginProvider{
  final Buttons? button;
  final IconData? icon;
  final String label;
  final ProviderAuthCallback callback;
  final ProviderNeedsSignUpCallback? providerNeedsSignUpCallback;
  final bool animated;

  const LoginProvider(
      {this.button,
        this.icon,
        required this.callback,
        this.label = '',
        this.providerNeedsSignUpCallback,
        this.animated = true})
      : assert(button != null || icon != null);
}

