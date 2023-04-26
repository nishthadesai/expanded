import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
              child: Column(
                children: [
                  _customcon(
                    no: 8,col: Colors.red
                  ),
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        _customcon(
                            no: 5,col: Colors.indigo
                        ),
                        Expanded(
                          flex: 3,  //width
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        children: [
                                          _customcon(
                                              no: 1,col: Colors.green
                                          ),
                                          _customcon(
                                              no: 1,col: Colors.lightBlueAccent
                                          ),
                                        ],
                                      ),
                                    ),
                                    _customcon(
                                        no: 2,col: Colors.brown
                                    ),
                                  ],
                                ),
                              ),
                              _customcon(
                                  no: 3,col: Colors.purple
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
          )
      ),
    );
  }
}
Widget _customcon({
  required int no,
  required Color col,
})
{
  return Expanded(
      flex: no,
      child: Container(
        color: col,
        child: Center(
            child: Text(
              '${no}', style: TextStyle(color: Colors.white, fontSize: 30,),
            )
        ),
      )
  );
}