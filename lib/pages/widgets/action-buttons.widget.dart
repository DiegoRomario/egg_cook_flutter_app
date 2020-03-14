import 'package:egg_cook_flutter_app/blocs/app.blockl.dart';
import 'package:egg_cook_flutter_app/pages/widgets/button.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ActionButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);

    switch (bloc.state) {
      case "stopped":
        return Button(label: "START", selected: true, callback: bloc.start);
      case "cooking":
        return Button(label: "STOP", selected: true, callback: bloc.stop);
      case "done":
        return Button(label: "ALL DONE", selected: true, callback: bloc.reset);
      default:
        return Button(label: "START", selected: true, callback: bloc.start);
    }
  }
}
