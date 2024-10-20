
  import 'package:flutter/cupertino.dart';

import '../../routes/routes_helper.dart';
import '../../style/Pallet.dart';

showLoader(BuildContext context) {
    return showDialog(
        barrierDismissible: false,
        context: context, builder: (context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        child: Container(
          height: 200,
          width: 200,
          child: Center(
            child: CircularProgressIndicator(
              color: Pallet.primary,
            ),
          ),
        ),
      );});
  }