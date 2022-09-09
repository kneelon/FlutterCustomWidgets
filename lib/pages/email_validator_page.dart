
import 'package:custom_widgets/ui/sliver.dart';
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


  @override
  void initState(){
    _emailController = TextEditingController();
    super.initState();
  }

  @override
  void dispose(){
    _emailController.dispose();
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
        hintText: 'Email',
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
          ? 'Enter a valid email'
          : null,
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
