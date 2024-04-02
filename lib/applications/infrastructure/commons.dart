
import 'package:flutter/widgets.dart';

validate(GlobalKey<FormState> formKey) {
  if (formKey.currentState!.validate()) {
    formKey.currentState!.save();
  }
}