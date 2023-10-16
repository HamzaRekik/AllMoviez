import 'package:flutter/material.dart';

class MovieWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      height: 200,
      width: 340,
      child: Row(
        children: [
          Expanded(
              child: Image(
            image: AssetImage("assets/messi.jpg"),
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          )),
          Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                        child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "hi",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    )),
                    Expanded(
                        child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "hi",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.left,
                      ),
                    )),
                    Expanded(
                        flex: 6,
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "hi fzef hureugh rfoerg gurorg rgoig grehiog greuohgio greng grehg gçerhg giierihg gà_ehgàngà_erng à_gre g_ge_àrg ger_àhg giher  geà_rjggrj igherigg çgeriàgjeogi nbiu ubujpmk i  u jihuhuho huoh ",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.left,
                          ),
                        )),
                  ],
                ),
              ))
        ],
      ),
      color: Colors.transparent,
    );
  }
}
