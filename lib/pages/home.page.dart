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
        body: Column(
      children: <Widget>[
        SizedBox(
          height: 60,
        ),
        Text(bloc.selected),
        Text(bloc.state),
        Text(bloc.time.toString()),
        Text(bloc.seconds.toString()),
        SizedBox(
          height: 10,
        ),
        TypeButtons(),
        SizedBox(
          height: 10,
        ),
        ActionButtons(),
        SizedBox(
          height: 10,
        ),
        Progress(),
        SizedBox(
          height: 10,
        ),
        Eggs()
      ],
    ));
  }
}
