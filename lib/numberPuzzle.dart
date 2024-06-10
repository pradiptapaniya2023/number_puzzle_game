import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NumberPuz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return State_NumberPuz();
  }
}

class State_NumberPuz extends State<NumberPuz> {
  // List showOnDisplay = ["1", "", "2", "3", "4", "5", "6", "7", "8"];
  // List showOnDisplay = ["1", "2", "3", "4", "5", "6", "7", "8", ""];
  List showOnDisplay = ["1", "2", "3", "4", "5", "6", "7", "8", ""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 10),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [MyBox(0), MyBox(1), MyBox(2)],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [MyBox(3), MyBox(4), MyBox(5)],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [MyBox(6), MyBox(7), MyBox(8)],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            margin: EdgeInsets.fromLTRB(30, 30, 30, 30),
            shadowColor: Colors.brown.shade200,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: InkWell(
              onTap: () {
                btnReset();
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Center(
                    child: Text(
                      "RESET",
                      style: TextStyle(color: Colors.grey, fontSize: 35),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget MyBox(int index) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: Colors.brown),
        child: InkWell(
          onTap: () {
            btnClick(index);
          },
          child: Center(
              child: Text(
                "${showOnDisplay[index]}",
                style: TextStyle(
                    fontSize: 80, color: Colors.black, fontWeight: FontWeight.w600),
              )),
        ),
      ),
    );
  }

  void btnReset() {
    setState(() {
      showOnDisplay.shuffle();
    });
  }

  void btnClick(int index) {
    debugPrint("==${showOnDisplay[index]}");
    if (index == 0 && showOnDisplay[index] != "") {
      debugPrint("==${showOnDisplay[index]}");
      setState(() {
        indexZero(index);
      });
    } else if (index == 1 && showOnDisplay[index] != "") {
      debugPrint("==>>${showOnDisplay[1]}");
      setState(() {
        indexOne(index);
      });
    } else if (index == 2 && showOnDisplay[index] != "") {
      debugPrint("==${showOnDisplay[2]}");
      setState(() {
        indexTwo(index);
      });
    } else if (index == 3 && showOnDisplay[index] != "") {
      debugPrint("==${showOnDisplay[3]}");
      setState(() {
        indexThree(index);
      });
    } else if (index == 4 && showOnDisplay[index] != "") {
      debugPrint("==${showOnDisplay[4]}");
      setState(() {
        indexFourth(index);
      });
    } else if (index == 5 && showOnDisplay[index] != "") {
      debugPrint("==${showOnDisplay[5]}");
      setState(() {
        indexFive(index);
      });
    } else if (index == 6 && showOnDisplay[index] != "") {
      debugPrint("==${showOnDisplay[index]}");
      setState(() {
        indexSix(index);
      });
    } else if (index == 7 && showOnDisplay[index] != "") {
      debugPrint("==${showOnDisplay[index]}");
      setState(() {
        indexSeven(index);
      });
    } else if (index == 8 && showOnDisplay[index] != "") {
      debugPrint("==${showOnDisplay[index]}");
      setState(() {
        indexEight(index);
      });
    }

    // winingCondition(index);
  }

  void indexZero(int index) {
    setState(() {
      if (showOnDisplay[1] == "") {
        showOnDisplay[1] = showOnDisplay[0];
        showOnDisplay[0] = "";
      } else if (showOnDisplay[3] == "") {
        showOnDisplay[3] = showOnDisplay[0];
        showOnDisplay[0] = "";
      } else if (showOnDisplay[1] != "" && showOnDisplay[2] == ""){
        showOnDisplay[2] = showOnDisplay[1];
        showOnDisplay[1] = showOnDisplay[0];
        showOnDisplay[0] = "";
      } else if (showOnDisplay[3] != "" && showOnDisplay[6] == ""){
        showOnDisplay[6] = showOnDisplay[3];
        showOnDisplay[3] = showOnDisplay[0];
        showOnDisplay[0] = "";
      }
    });
    winingCondition(index);

  }

  void indexOne(int index) {
    setState(() {
      if (showOnDisplay[0] == "") {
        showOnDisplay[0] = showOnDisplay[1];
        showOnDisplay[1] = "";
      } else if (showOnDisplay[2] == "") {
        showOnDisplay[2] = showOnDisplay[1];
        showOnDisplay[1] = "";
      } else if (showOnDisplay[4] == "") {
        showOnDisplay[4] = showOnDisplay[1];
        showOnDisplay[1] = "";
      } else if (showOnDisplay[4] != "" && showOnDisplay[7] == ""){
        showOnDisplay[7] = showOnDisplay[4];
        showOnDisplay[4] = showOnDisplay[1];
        showOnDisplay[1] = "";
      }
    });
    winingCondition(index);
  }

  void indexTwo(int index) {
    setState(() {
      if (showOnDisplay[1] == "") {
        showOnDisplay[1] = showOnDisplay[2];
        showOnDisplay[2] = "";
      } else if (showOnDisplay[5] == "") {
        showOnDisplay[5] = showOnDisplay[2];
        showOnDisplay[2] = "";
      } else if (showOnDisplay[1] != "" && showOnDisplay[0] == ""){
        showOnDisplay[0] = showOnDisplay[1];
        showOnDisplay[1] = showOnDisplay[2];
        showOnDisplay[2] = "";
      } else if (showOnDisplay[5] != "" && showOnDisplay[8] == ""){
        showOnDisplay[8] = showOnDisplay[5];
        showOnDisplay[5] = showOnDisplay[2];
        showOnDisplay[2] = "";
      }
    });
    winingCondition(index);

  }

  void indexThree(int index) {
    setState(() {
      if (showOnDisplay[0] == "") {
        showOnDisplay[0] = showOnDisplay[3];
        showOnDisplay[3] = "";
      } else if (showOnDisplay[4] == "") {
        showOnDisplay[4] = showOnDisplay[3];
        showOnDisplay[3] = "";
      } else if (showOnDisplay[6] == "") {
        showOnDisplay[6] = showOnDisplay[3];
        showOnDisplay[3] = "";
      } else if (showOnDisplay[4] != "" && showOnDisplay[5] == ""){
        showOnDisplay[5] = showOnDisplay[4];
        showOnDisplay[4] = showOnDisplay[3];
        showOnDisplay[3] = "";
      }
    });
    winingCondition(index);

  }

  void indexFourth(int index) {
    setState(() {
      if (showOnDisplay[1] == "") {
        showOnDisplay[1] = showOnDisplay[4];
        showOnDisplay[4] = "";
      } else if (showOnDisplay[3] == "") {
        showOnDisplay[3] = showOnDisplay[4];
        showOnDisplay[4] = "";
      } else if (showOnDisplay[5] == "") {
        showOnDisplay[5] = showOnDisplay[4];
        showOnDisplay[4] = "";
      } else if (showOnDisplay[7] == "") {
        showOnDisplay[7] = showOnDisplay[4];
        showOnDisplay[4] = "";
      }
    });
    winingCondition(index);

  }

  void indexFive(int index) {
    setState(() {
      if (showOnDisplay[2] == "") {
        showOnDisplay[2] = showOnDisplay[5];
        showOnDisplay[5] = "";
      } else if (showOnDisplay[4] == "") {
        showOnDisplay[4] = showOnDisplay[5];
        showOnDisplay[5] = "";
      } else if (showOnDisplay[8] == "") {
        showOnDisplay[8] = showOnDisplay[5];
        showOnDisplay[5] = "";
      } else if (showOnDisplay[4] != "" && showOnDisplay[3] == ""){
        showOnDisplay[3] = showOnDisplay[4];
        showOnDisplay[4] = showOnDisplay[5];
        showOnDisplay[5] = "";
      }
    });
    winingCondition(index);

  }

  void indexSix(int index) {
    setState(() {
      if (showOnDisplay[3] == "") {
        showOnDisplay[3] = showOnDisplay[6];
        showOnDisplay[6] = "";
      } else if (showOnDisplay[7] == "") {
        showOnDisplay[7] = showOnDisplay[6];
        showOnDisplay[6] = "";
      } else if (showOnDisplay[3] != "" && showOnDisplay[0] == ""){
        showOnDisplay[0] = showOnDisplay[3];
        showOnDisplay[3] = showOnDisplay[6];
        showOnDisplay[6] = "";
      } else if (showOnDisplay[7] != "" && showOnDisplay[8] == ""){
        showOnDisplay[8] = showOnDisplay[7];
        showOnDisplay[7] = showOnDisplay[6];
        showOnDisplay[6] = "";
      }
    });
    winingCondition(index);

  }

  void indexSeven(int index) {
    setState(() {
      if (showOnDisplay[6] == "") {
        showOnDisplay[6] = showOnDisplay[7];
        showOnDisplay[7] = "";
      } else if (showOnDisplay[4] == "") {
        showOnDisplay[4] = showOnDisplay[7];
        showOnDisplay[7] = "";
      } else if (showOnDisplay[8] == "") {
        showOnDisplay[8] = showOnDisplay[7];
        showOnDisplay[7] = "";
      } else if (showOnDisplay[4] != "" && showOnDisplay[1] == ""){
        showOnDisplay[1] = showOnDisplay[4];
        showOnDisplay[4] = showOnDisplay[7];
        showOnDisplay[7] = "";
      }
    });
    winingCondition(index);

  }

  void indexEight(int index) {
    setState(() {
      if (showOnDisplay[7] == "") {
        showOnDisplay[7] = showOnDisplay[8];
        showOnDisplay[8] = "";
      } else if (showOnDisplay[5] == "") {
        showOnDisplay[5] = showOnDisplay[8];
        showOnDisplay[8] = "";
      } else if (showOnDisplay[5] != "" && showOnDisplay[2] == ""){
        showOnDisplay[2] = showOnDisplay[5];
        showOnDisplay[5] = showOnDisplay[8];
        showOnDisplay[8] = "";
      } else if (showOnDisplay[7] != "" && showOnDisplay[6] == ""){
        showOnDisplay[6] = showOnDisplay[7];
        showOnDisplay[7] = showOnDisplay[8];
        showOnDisplay[8] = "";
      }
    });
    winingCondition(index);

  }

  void winingCondition(int index) {
    if (showOnDisplay[0] == "1" &&
        showOnDisplay[1] == "2" &&
        showOnDisplay[2] == "3" &&
        showOnDisplay[3] == "4" &&
        showOnDisplay[4] == "5" &&
        showOnDisplay[5] == "6" &&
        showOnDisplay[6] == "7" &&
        showOnDisplay[7] == "8" &&
        showOnDisplay[8] == "") {
      setState(() {
        showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Win"),
              actions: [
                TextButton(
                    onPressed: () {
                      btnReset();
                      Navigator.pop(context);
                    },
                    child: Text("Play again"))
              ],
            );
          },
        );
      });
    }
  }
}
