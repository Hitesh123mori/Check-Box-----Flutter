import 'package:flutter/material.dart' ;

class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  State<checkbox> createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool ischecked  = false ;
  var ans = "" ;
  var ans1 = "Home Work" ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Checkbox"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
              subtitle: Text(ans),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25) ,
              ),
              title: Text(ans1) ,
              activeColor: Colors.red,
              checkColor: Colors.white,
                checkboxShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25) ,
              ),
              tileColor: Colors.grey,
                value: ischecked, onChanged: (val){
                  setState(() {
                    ischecked = val! ;
                    if(ischecked == true)
                      {
                          ans = "Complete" ;
                      }
                    else
                      {
                        ans = "" ;
                      }
                  });
                }
            ) ,
          ],
        ),
      ),
    );
  }
}
