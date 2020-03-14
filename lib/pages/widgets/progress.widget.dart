import 'package:egg_cook_flutter_app/blocs/app.bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return bloc.state == "cooking" ? progress(context, bloc) : SizedBox();
  }

  Widget progress(context, bloc) {
    return Column(
      children: <Widget>[
        Text(
          (bloc.time - bloc.seconds).toString(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 45,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: LinearProgressIndicator(
            value: bloc.percent / 100,
            backgroundColor: Colors.white12,
            valueColor: new AlwaysStoppedAnimation<Color>(
                Theme.of(context).primaryColor),
          ),
        )
      ],
    );
  }
}
