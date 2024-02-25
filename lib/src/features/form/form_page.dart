import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'form_controller.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key, required this.controller});

  final FormController controller;

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.controller,
      builder: (context, state, child) {
        return Scaffold(
          body: Form(
            key: widget.controller.formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Name'),
                  initialValue: state.name,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }

                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                    widget.controller.update(widget.controller.value.copyWith(name: value));
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Email'),
                  initialValue: state.email,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }

                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                    widget.controller.update(widget.controller.value.copyWith(email: value));
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Age'),
                  initialValue: state.age.toString(),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }

                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                    widget.controller.update(widget.controller.value.copyWith(age: int.parse(value)));
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Weight'),
                  initialValue: state.weight.toString(),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }

                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                    widget.controller.update(widget.controller.value.copyWith(weight: double.parse(value)));
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Height'),
                  initialValue: state.height.toString(),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }

                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                    widget.controller.update(widget.controller.value.copyWith(height: double.parse(value)));
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Phone'),
                  initialValue: state.phone,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }

                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                    widget.controller.update(widget.controller.value.copyWith(phone: value));
                  },
                ),
                DropdownButtonFormField<bool>(
                  value: state.enabled,
                  decoration: const InputDecoration(labelText: 'Enabled'),
                  validator: (value) {
                    if (value == null) {
                      return 'Please select';
                    }

                    return null;
                  },
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  items: const [
                    DropdownMenuItem(
                      value: true,
                      child: Text('True'),
                    ),
                    DropdownMenuItem(
                      value: false,
                      child: Text('False'),
                    )
                  ],
                  onChanged: (value) {
                    widget.controller.update(widget.controller.value.copyWith(enabled: value));
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: widget.controller.validateAndSave,
          ),
        );
      },
    );
  }
}
