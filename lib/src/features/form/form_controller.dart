import 'dart:convert';

import 'package:flutter/material.dart';

import 'form_view_model.dart';

class FormController extends ValueNotifier<FormViewModel> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  FormController() : super(const FormViewModel.empty());

  void update(FormViewModel model) => value = model;

  void reset() => update(const FormViewModel.empty());

  void validateAndSave() {
    if (formKey.currentState?.validate() ?? false) {
      formKey.currentState?.save();

      print(const JsonEncoder.withIndent('  ').convert(value.toMap()));
    }
  }
}
