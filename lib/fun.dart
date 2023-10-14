library function;

import 'src/constants.dart';
import 'src/numeral.dart';

/// Get a formated string on numeral.
///
/// [value] Need parse [num] value.
/// The parameter [fractionDigits] must be an integer satisfying.
///
/// example:
/// ```dart
/// numeral(10000) // => 10K
/// ```
String numeral(num value, {int fractionDigits = DEFAULT_FRACTION_DIGITS}) {
  if (value.toString().length >= 7) {
    return Numeral(value).format(fractionDigits: 1);
  } else {
    return Numeral(value).format(fractionDigits: fractionDigits);
  }
}
