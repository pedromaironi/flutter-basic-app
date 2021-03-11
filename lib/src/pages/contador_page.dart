import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

//State is a Standard
class _ContadorPageState extends State<ContadorPage> {
  final _textStyle = new TextStyle(fontSize: 25.5);

  int _cont = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Stateful'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Numero de clicks',
              style: _textStyle,
            ),
            Text(
              '$_cont',
              style: _textStyle,
            ),
          ],
        ),
      ),
      floatingActionButton: _createButton(),
    );
  }

  Widget _createButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed: () => reset(),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => add(),
        ),
        SizedBox(width: 5.0),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: () => remove(),
        ),
      ],
    );
  }

  void add() => setState(() => _cont++);
  void remove() => setState(() => _cont--);
  void reset() => setState(() => _cont = 0);
}
