import 'package:flutter/material.dart';
import '../../../../common/common.dart';
import '../../common/common.dart';

class AuthenticatedLoginView extends StatelessWidget {
  const AuthenticatedLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Backgound(
      title: UIStrings.titleLoginPage,
      subTitle: UIStrings.subTitleLogin,
      child: Body(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const CustomContainer(
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: UIStrings.hintTextEmail,
                      ),
                      Divider(),
                      CustomTextField(
                        hintText: UIStrings.hintTectPassword,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  UIStrings.labelForgotPassword,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 30),
                CustomButtonWidget(
                  text: UIStrings.buttonTextLogin,
                  textStyleColor: Colors.white,
                  boxDecorationColor: Colors.orange[900]!,
                  marginSize: 50,
                ),
                const SizedBox(height: 30),
                const Text(
                  UIStrings.labelSocialMedia,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                     Expanded(
                      child: CustomButtonWidget(
                        text: UIStrings.buttonTextGithub,
                        textStyleColor: Colors.white,
                        boxDecorationColor: Colors.black,
                      ),
                    ),
                     SizedBox(width: 30),
                     Expanded(
                      child: CustomButtonWidget(
                        text: UIStrings.buttonTextFacebook,
                        textStyleColor: Colors.white,
                        boxDecorationColor: Colors.blue,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


