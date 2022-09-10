import 'package:custom_widgets/utility/contract.dart' as constants;
import 'package:custom_widgets/pages/text_form_field/custom_text_form_field.dart';
import 'package:custom_widgets/ui/sliver.dart';
import 'package:custom_widgets/utility/size_config.dart';
import 'package:custom_widgets/widgets/toast_widget.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

class EmailValidatorPage extends StatefulWidget {
  const EmailValidatorPage({Key? key}) : super(key: key);

  @override
  State<EmailValidatorPage> createState() => _EmailValidatorPageState();
}

class _EmailValidatorPageState extends State<EmailValidatorPage> {

  final formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  void initState(){
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {

    return SliverWidget(
      pageName: 'Email Validator',
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Column(
              children: [
                const SizedBox(height: 32),

                buildTextFormField(),
                buildButton(),
              ],
            ),
          ),
        ),
      ), text: '',
    );
  }
  Widget buildTextFormField(){
    return TextFormField(
      controller: _emailController,
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: constants.capEmail,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        prefixIcon: const Icon(Icons.mail_outline),
      ),
      keyboardType: TextInputType.emailAddress,
      //Important
      autofillHints: const [AutofillHints.email],
      validator: (email) =>
      email != null && !EmailValidator.validate(email)
          ? constants.wordInvalidEmailFormat
          : null,
    );
  }

  Widget buildEmailAndPassField(){
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * .9),
          child: CustomTextFormField(
            controller: _emailController,
            label: constants.capEmail,
            isAutoFill: true,
            prefixIcon: Icons.mail_outline,
            validator: (value) =>
            value != null && !EmailValidator.validate(value)
                ? constants.wordInvalidEmailFormat
                : null,
          ),
        ),

        Padding(
          padding: EdgeInsets.all(SizeConfig.blockSizeHorizontal * .9),
          child: CustomTextFormField(
            controller: _passwordController,
            label: constants.capPassword,
            prefixIcon: Icons.lock_outlined,
            obscureText: _isObscure,
            suffixIcon: IconButton(
              icon: Icon(
                _isObscure
                    ? Icons.visibility
                    : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
            validator: (value) =>
            value != null && value.length < 10
                ? constants.wordShortPass
                : null,
          ),
        ),
      ],
    );
  }

  Widget buildButton(){
    return ElevatedButton(
      onPressed: (){
        final form = formKey.currentState!;
        if(form.validate()){
          final email = _emailController.text;
          showToastWidget('Your email is $email', Colors.lightBlue);
        }
      },
      child: const Text('Validate'),
    );
  }

}
