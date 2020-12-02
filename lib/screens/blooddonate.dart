import 'package:custom_dropdown/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:health_solutions/main.dart';
import 'package:health_solutions/screens/blooddonate.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/services.dart' show rootBundle;

Future<String> loadAsset() async {
  return await rootBundle.loadString('assets/config.json');
}

class blooddonate extends StatefulWidget {
  @override
  _blooddonate createState() => _blooddonate();
}

class _blooddonate extends State<blooddonate> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    // Image image = Image(
    //   image: Image.asset( "assets/images/blood_banner.png"),
    // );
    final search = TextField(
      style: TextStyle(height: 0.07, fontSize: 18.0),
      //     textAlign: TextAlign.start,
      textAlignVertical: TextAlignVertical.bottom,
      decoration: InputDecoration(
        hintText: 'Enter a search term',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(35.0)),
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          Icons.search,
          size: 24,
          color: Colors.black,
        ),
      ),
    );
    final related_category = Text(
      'Categories',
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
    final related_products = Text(
      'On Sale',
      textAlign: TextAlign.left,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: Text(
            'Health Solutions',
            style: TextStyle(color: Colors.black),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            )
          ],
          backgroundColor: Colors.white),
      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              // width: double.infinity,
              // height: MediaQuery.of(context).size.height*0.08,
              //  color: Color.fromRGBO(253, 15, 15, 1),
              child: Image.asset(
                "assets/images/blood_drop.png",
                fit: BoxFit.scaleDown,
                height: 95,
                width: 95,
              ),
              // child: Padding(
              //   padding: const EdgeInsets.only(left:012.0),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //
              //     children: <Widget>[
              //       SizedBox(height: 20.7),
              //       //search,
              //
              //     ],
              //   ),
              //
              // ),
            ),
            Container(
              height: 49.2,
              child: Container(),
            ),
            Container(
              child: Container(
                height: 80,
                width: 300,
                color: Colors.greenAccent,
                child: BasicDateTimeField(),
              ),
            ),
            GestureDetector(
              onTap: () {
                //   print("Taimoor \n Asad \n Tsvb ");
                // Navigator.pop(context,
                //   MaterialPageRoute(
                //       builder: (context) => blood_donate()),
                // );
              },
              child: Card(
                //  margin: const EdgeInsets.only(top: 80),

                elevation: 4.4,

                child: Container(
                  height: 125,
                  width: 125,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      scale: 1.3,
                      image: AssetImage("assets/images/blood_request.png"),
                      alignment: Alignment.center,
                    ),
                  ),
                  child: Text(
                    "\n\n\n\n\n\nBlood Request",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                //print("Asa&tsvee");
                // Navigator.pop(context,
                //   MaterialPageRoute(
                //       builder: (context) => blood_donate()),
                // );
              },
              child: Card(
                margin: const EdgeInsets.only(top: 5),
                elevation: 4.4,
                child: Container(
                  height: 125,
                  width: 125,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      scale: 1.3,
                      image: AssetImage("assets/images/blood_donate.png"),
                      alignment: Alignment.center,
                    ),
                  ),
                  child: Text(
                    "\n\n\n\n\n\nBlood Donate",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BasicDateTimeField extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd HH:mm");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Text('Basic date & time field (${format.pattern})'),
        DateTimeField(
          format: format,
          onShowPicker: (context, currentValue) async {
            final date = await showDatePicker(
                context: context,
                firstDate: DateTime(1900),
                fieldHintText: "Date & Time",
                initialDate: currentValue ?? DateTime.now(),
                lastDate: DateTime(2100));
            if (date != null) {
              final time = await showTimePicker(
                  context: context,
                  helpText: "Date & Time",
                  initialTime:
                      TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
                  confirmText: "Date & Time",
                  cancelText: "Date & Time");
              return DateTimeField.combine(date, time);
            } else {
              return currentValue;
            }
          },
          readOnly: true,
        ),
      ],
    );
  }
}
