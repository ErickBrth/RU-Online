import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ru_online/presentation/register/components/text_form_field.dart';
class RegisterFormField extends StatefulWidget {
  const RegisterFormField({super.key});

  @override
  State<RegisterFormField> createState() => _RegisterFormFieldState();
}

class _RegisterFormFieldState extends State<RegisterFormField> {
  @override
  Widget build(BuildContext context) {
    return const Form(
        child: Column(
          children: [
            CustomTextFormField(title: "Name",),
            const SizedBox(height: 26,),
            CustomTextFormField(title: "Email",),
            const SizedBox(height: 26,),
            CustomTextFormField(title: "Phone",),
            const SizedBox(height: 26,),
            CustomTextFormField(title: "Password",),
            const SizedBox(height: 26,),
            CustomTextFormField(title: "Confirm Password",),
          ],
        )
    );
  }
}
