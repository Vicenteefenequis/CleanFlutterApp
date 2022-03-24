import 'package:flutter/cupertino.dart';

abstract class Validation {
  String validate({@required String field, @required String value});
}
