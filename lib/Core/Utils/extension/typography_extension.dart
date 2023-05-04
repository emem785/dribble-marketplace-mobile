import 'package:flutter/material.dart';

extension TextStyleTheme on BuildContext {
  TextStyle get headline1 {
    return Theme.of(this).textTheme.headline1!;
  }

  TextStyle get headline2 {
    return Theme.of(this).textTheme.headline2!;
  }

  TextStyle get headline3 {
    return Theme.of(this).textTheme.headline3!;
  }

  TextStyle get headline4 {
    return Theme.of(this).textTheme.headline4!;
  }

  TextStyle get headline5 {
    return Theme.of(this).textTheme.headline5!;
  }

  TextStyle get bodyText2 {
    return Theme.of(this).textTheme.bodyText2!;
  }
}
