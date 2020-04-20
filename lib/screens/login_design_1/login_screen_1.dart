import 'package:flutter/material.dart';
import 'package:logincatalog/values/values.dart';
import 'package:logincatalog/widgets/custom_button.dart';
import 'package:logincatalog/widgets/custom_shape_clippers.dart';
import 'package:logincatalog/widgets/custom_text_form_field.dart';
import 'package:logincatalog/widgets/spaces.dart';

class LoginScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var heightOfAppBar = 56.0;
    var heightOfScreen = MediaQuery.of(context).size.height - heightOfAppBar;

    return Scaffold(
      appBar: AppBar(
        elevation: Sizes.ELEVATION_0,
        backgroundColor: AppColors.pink,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {})
        ],
      ),
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomLoginShapeClipper2(),
            child: Container(
              height: heightOfScreen,
              decoration: BoxDecoration(
                  color: AppColors.greyShade2
              ),
            ),
          ),
          ClipPath(
            clipper: CustomLoginShapeClipper1(),
            child: Container(
              height: heightOfScreen,
              decoration: BoxDecoration(
                color: AppColors.pink
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ListBody(
                  children: <Widget>[
                    Text(StringConst.WELCOME, style: textTheme.headline.copyWith(),),
                    SpaceH4(),
                    Text(StringConst.BACK, style: textTheme.headline.copyWith()),
                    SpaceH8(),
                    Text(StringConst.SIGN_IN_MSG, style: textTheme.subtitle.copyWith()),
                    SpaceH96(),
                    Text(StringConst.SIGN_IN, style: textTheme.headline.copyWith()),
                  ],
                ),
                SpaceH16(),
                CustomTextFormField(
                  hasPrefixIcon: true,
                  textInputType: TextInputType.emailAddress,
                  hintText: StringConst.EMAIL_ADDRESS,
                  prefixIcon: Icon(Icons.mail),
                ),
                SpaceH16(),
                CustomTextFormField(
                  hasPrefixIcon: true,
                  textInputType: TextInputType.text,
                  hintText: StringConst.PASSWORD,
                  prefixIcon: Icon(Icons.lock),
                ),
                SpaceH16(),
                CustomButton(
                  title: StringConst.SIGN_ME_IN,
                  textStyle: textTheme.button,
                  onPressed: () {},
                ),
                SpaceH16(),
                Text(StringConst.DONT_HAVE_AN_ACCOUNT),
                SpaceH8(),
                Text(StringConst.NEED_HELP),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
