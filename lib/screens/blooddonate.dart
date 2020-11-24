import 'package:custom_dropdown/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:health_solutions/main.dart';
import 'package:health_solutions/screens/blooddonate.dart';
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
              padding: const EdgeInsets.only(top: 10,bottom: 10),
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
              child: Container(
                // child: Container(
                //   height: 50,
                //   padding: EdgeInsets.only(top: 1.0),
                //   child: const Center(
                //       child: Text('Blood',
                //           style: TextStyle(
                //               color: Colors.white,
                //               fontWeight: FontWeight.bold,
                //               fontSize: 25))),
                //   color: Color.fromRGBO(153, 51, 51, 10),
                //   // margin: EdgeInsets.only(left: 4.5),
                // ),
              // child: DropdownButton(
              //   value: _value,
              //   items: [
              //     DropdownMenuItem(
              //       child: Text("First Item"),
              //       value: 1,
              //     ),
              //     DropdownMenuItem(
              //       child: Text("Second Item"),
              //       value: 2,
              //     ),
              //     DropdownMenuItem(
              //       child: Text("Third Item"),
              //       value: 3,
              //     ),
              //     DropdownMenuItem(
              //       child: Text("Fourth Item"),
              //       value: 4,
              //     ),
              //   ],
              //   onChanged: (value){
              //     setState(() {
              //       _value = value;
              //     });
              //   },
              // ),
                child: CustomDropdown(
                  valueIndex: _value,
                  hint: "Hint",
                  items: [
                    CustomDropdownItem(text: "First"),
                    CustomDropdownItem(text: "Second"),
                    CustomDropdownItem(text: "Third"),
                    CustomDropdownItem(text: "Fourth"),
                  ],
                  onChanged: (newValue) {
                    setState(() {
                      _value = newValue;
                    });
                  },
                ),
              ),
            ),
            // Container(
            //   height: 195,
            //   width: 120,
            //   padding: const EdgeInsets.only(top:80),
            //   child: Container(
            //     height: 195,
            //     width: 120,
            //     child: Card(
            //
            //
            //                 // shape: RoundedRectangleBorder(
            //                 //   borderRadius: BorderRadius.circular(2.5),
            //                 //
            //                 // ),
            //
            //                 elevation: 4.4,
            //                 color: Colors.white,
            //                 child: const Center(child: Text('Request Blood')),
            //                 margin: EdgeInsets.all(10),
            //
            //               ),
            //     ),
            //   ),

            GestureDetector(
              onTap: (){
                print("Taimoor \n Asad \n Tsvb ");
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
                  child: Text("\n\n\n\n\n\nBlood Request",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                // Navigator.pop(context,
                //   MaterialPageRoute(
                //       builder: (context) => blood_donate()),
                // );
              },
              child:Card(


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
                  child: Text("\n\n\n\n\n\nBlood Donate",textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),

                ),
              ),
            ),
            // Container(
            //   height: 120,
            //   width: 120,
            //   child: Container(
            //
            //     height: 120,
            //     width: 120,
            //     child: Card(
            //       shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(2.5),
            //
            //       ),
            //
            //       elevation: 4.4,
            //       color: Colors.white,
            //       child: const Center(child: Text('Donate Blood')),
            //       margin: EdgeInsets.all(10),
            //
            //
            //     ),
            //   ),
            // ),
            // Container(
            //   child: related_category,
            //   alignment: AlignmentDirectional.centerStart,
            //   margin: EdgeInsets.only(left: 12.0),
            // ),
            // Container(
            //   height: 70.2,
            //   child: ListView(
            //
            //     scrollDirection: Axis.horizontal,
            //     padding: const EdgeInsets.all(8),
            //     children: <Widget>[
            //       Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8.5),
            //         ),
            //         elevation: 3,
            //         color: Color.fromRGBO(252, 15, 15, 1),
            //         child: const Center(child: Text('Entry A')),
            //         margin: EdgeInsets.only(left: 4.5),
            //
            //       ),
            //
            //       Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8.5),
            //
            //         ),
            //         elevation: 3,
            //         color: Color.fromRGBO(252, 15, 15, 1),
            //         child: const Center(child: Text('Entry A')),
            //         margin: EdgeInsets.only(left: 4.5),
            //       ),
            //
            //       Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8.5),
            //         ),
            //         elevation: 3,
            //         color: Color.fromRGBO(252, 15, 15, 1),
            //         child: const Center(child: Text('Entry A')),
            //         margin: EdgeInsets.only(left: 4.5),
            //       ),
            //
            //       Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8.5),
            //         ),
            //         elevation: 3,
            //         color: Color.fromRGBO(252, 15, 15, 1),
            //         child: const Center(child: Text('Entry A')),
            //         margin: EdgeInsets.only(left: 4.5),
            //       ),
            //       Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8.5),
            //         ),
            //         elevation: 3,
            //         color: Color.fromRGBO(252, 15, 15, 1),
            //         child: const Center(child: Text('Entry A')),
            //         margin: EdgeInsets.only(left: 4.5),
            //       ),
            //       Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8.5),
            //         ),
            //         elevation: 3,
            //         color: Color.fromRGBO(252, 15, 15, 1),
            //         child: const Center(child: Text('Entry A')),
            //         margin: EdgeInsets.only(left: 4.5),
            //       ),
            //       Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8.5),
            //         ),
            //         elevation: 3,
            //         color: Color.fromRGBO(252, 15, 15, 1),
            //         child: const Center(child: Text('Entry A')),
            //         margin: EdgeInsets.only(left: 4.5),
            //       ),
            //       Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8.5),
            //         ),
            //         elevation: 3,
            //         color: Color.fromRGBO(252, 15, 15, 1),
            //         child: const Center(child: Text('Entry A')),
            //         margin: EdgeInsets.only(left: 4.5),
            //       ),
            //       Card(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8.5),
            //         ),
            //         elevation: 3,
            //         color: Color.fromRGBO(252, 15, 15, 1),
            //         child: const Center(child: Text('Entry A')),
            //         margin: EdgeInsets.only(left: 4.5),
            //       ),
            //
            //     ],
            //   ),
            //
            // ),
            // Container(
            //   child: related_products,
            //   alignment: AlignmentDirectional.centerStart,
            //   margin: EdgeInsets.only(left: 12.0),
            // ),
            // Container(
            //   height: 220.2,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     padding: const EdgeInsets.all(8),
            //     children: <Widget>[
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         decoration: BoxDecoration(
            //             image: DecorationImage(
            //                 image: AssetImage(
            //                   'assets/images/asd.png',
            //                 ),
            //                 fit: BoxFit.fill)),
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Text("yknvl"),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   child: related_products,
            //   alignment: AlignmentDirectional.centerStart,
            //   margin: EdgeInsets.only(left: 12.0),
            // ),
            // Container(
            //   height: 220.2,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     padding: const EdgeInsets.all(8),
            //     children: <Widget>[
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //       Container(
            //         width: 160,
            //         child: Card(
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(8.5),
            //           ),
            //           elevation: 3,
            //           color: Colors.white,
            //           child: Image.asset(
            //             'assets/images/asd.png',
            //             width: 50,
            //             alignment: AlignmentDirectional.topCenter,
            //             color: Colors.red,
            //           ),
            //           margin: EdgeInsets.only(left: 6.5),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
