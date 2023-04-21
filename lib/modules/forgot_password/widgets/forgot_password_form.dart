import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../../constants/errors.dart';
import '../../../widgets/stateless/custom_suffix_icon.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  List<String?> errors = [];
  String? email;

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onSaved: (newValue) => email = newValue,
            onChanged: (value) {
              if (value.isNotEmpty) {
                removeError(error: emailRequiredError);
              }
              return;
            },
            validator: (value) {
              if (value!.isEmpty) {
                addError(error: emailRequiredError);
                return '';
              } else if (!emailRegExp.hasMatch(value)) {
                addError(error: emailInvalidError);
                return '';
              }
              return null;
            },
            decoration: const InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Mail.svg'),
              errorStyle: TextStyle(height: 0),
            ),
          ),
        ],
      ),
    );
  }
}
