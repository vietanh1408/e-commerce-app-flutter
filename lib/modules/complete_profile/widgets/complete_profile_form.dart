import 'package:flutter/material.dart';
import '../../../config/size_config/size_config.dart';
import '../../../constants/errors.dart';
import '../../../modules/otp/otp_screen.dart';
import '../../../widgets/stateless/custom_suffix_icon.dart';
import '../../../widgets/stateless/default_button.dart';
import '../../../widgets/stateless/form_error.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? address;

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
          buildFirstNameFormField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.03,
          ),
          buildLastNameFormField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.03,
          ),
          buildPhoneNumberFormField(),
          SizedBox(
            height: SizeConfig.screenHeight * 0.03,
          ),
          buildAddressFormField(),
          FormError(
            errors: errors,
          ),
          SizedBox(
            height: SizeConfig.screenHeight * 0.05,
          ),
          DefaultButton(
            text: 'Continue',
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, OtpScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: firstNameRequiredError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: firstNameRequiredError);
          return '';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'First Name',
        hintText: 'Enter your first name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg'),
        errorStyle: TextStyle(height: 0),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: lastNameRequiredError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: lastNameRequiredError);
          return '';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Last Name',
        hintText: 'Enter your last name',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/User.svg'),
        errorStyle: TextStyle(height: 0),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      onSaved: (newValue) => phoneNumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: phoneNumberRequiredError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: phoneNumberRequiredError);
          return '';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Phone Number',
        hintText: 'Enter your phone number',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(svgIcon: 'assets/icons/Phone.svg'),
        errorStyle: TextStyle(height: 0),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: addressRequiredError);
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: addressRequiredError);
          return '';
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: 'Address',
        hintText: 'Enter your address',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSuffixIcon(svgIcon: 'assets/icons/Location point.svg'),
        errorStyle: TextStyle(height: 0),
      ),
    );
  }
}
