import 'package:bihar_tour/converter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bmi extends StatefulWidget {
  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  TextEditingController heightcontroller = TextEditingController();

  TextEditingController weightcontroller = TextEditingController();

  var result;

  double _BMI = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 50, right: 50, top: 10, bottom: 15),
                child: TextField(
                  controller: heightcontroller,
                  decoration: InputDecoration(
                      hintText: "enter your height",
                      suffix: Text(" in meter"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => converter()));
                  },
                  child: Text("convert to meter")),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0, right: 50),
                child: TextField(
                  controller: weightcontroller,
                  decoration: InputDecoration(
                      hintText: "Enter weight ",
                      suffix: Text("in kgs"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    _claculatebmi(
                        height: heightcontroller.text,
                        weight: weightcontroller.text);
                  },
                  child: Text("calculate")),
              _BMI == 0.0
                  ? Text("enter weight and height")
                  : Text(
                      " your BMI is ${_BMI.toStringAsFixed(2)}",
                    ),
              SizedBox(
                height: 10,
              ),
              result == null ? Text("") : (result),
            ],
          ),
        ),
      ),
    );
  }

  _claculatebmi({required height, required weight}) {
    if (height == "" || weight == "") {
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text(
          "enter height and weight",
        ),
        backgroundColor: Colors.red,
      ));
    } else {
      final double Height = double.parse(height.toString());
      final double Weight = double.parse(weight.toString());
      setState(() {
        _BMI = Weight / (Height * Height);
      });
      if (_BMI <= 18) {
        result = Column(
          children: [
            Text("underweight"),
            Image.network(
              "https://thumbs.dreamstime.com/b/skinny-teenage-black-boy-smiling-part-family-members-series-cartoon-characters-vector-illustration-person-summer-85011763.jpg",
              fit: BoxFit.cover,
              width: 200,
            ),
            Text(
              "oops! to low, eat more and healthy",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w700, color: Colors.red),
            )
          ],
        );
      } else if (_BMI > 18 && _BMI < 25) {
        result = Column(
          children: [
            Text("normal"),
            Image.network(
              "https://c8.alamy.com/comp/H9EFF2/avatar-man-icon-healthy-lifestyle-fitness-and-sport-theme-isolated-H9EFF2.jpg",
              fit: BoxFit.cover,
              width: 200,
              height: 300,
            ),
            Text(
              "keep it up",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.green),
            ),
          ],
        );
      } else {
        result = Column(children: [
          Text("obessed"),
          Image.network(
            "https://img.freepik.com/free-vector/overweight-man-cartoon-character_1308-134504.jpg",
            fit: BoxFit.cover,
            width: 200,
            height: 300,
          ),
          Text(
            "Focus on your diet , reduce  some weight",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w700, color: Colors.red),
          )
        ]);
      }
    }
  }
}
