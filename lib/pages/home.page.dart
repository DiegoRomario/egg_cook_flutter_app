import 'package:egg_cook_flutter_app/blocs/app.bloc.dart';
import 'package:egg_cook_flutter_app/pages/widgets/action-buttons.widget.dart';
import 'package:egg_cook_flutter_app/pages/widgets/progress.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/eggs.widget.dart';
import 'widgets/type-buttons.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return Scaffold(
        body: ListView(
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Text(
          "Egg Cook",
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Eggs(),
        Padding(
          padding: EdgeInsets.all(20),
          child: TypeButtons(),
        ),
        Progress(),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: ActionButtons(),
        ),
      ],
    ));
  }
}
