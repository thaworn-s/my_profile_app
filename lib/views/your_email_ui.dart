import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourEmailUI extends StatefulWidget {
  const YourEmailUI({Key? key}) : super(key: key);

  @override
  State<YourEmailUI> createState() => _YourEmailUIState();
}

class _YourEmailUIState extends State<YourEmailUI> {
  TextEditingController emailCtrl = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text(
          'Add/Edit email',
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Text(
              'ป้อน Email',
              style: GoogleFonts.charm(
                fontSize: 35.0,
                color: Colors.green[800],
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 50.0,
                right: 50.0,
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ป้อน Email',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            ElevatedButton(
            
              onPressed: (){
                // ตรวจสอบการป้อน
                if(emailCtrl.text.trim().length == 0){
                // แสดงเตือนผู้ใช้ให้ป้อน
               showDialog(
                context: context,
                builder: (context){
                  return  AlertDialog(
                  title: Text(
                    'คำเตือน',
                  ),
                  content: Text(
                    'ป้อน Email ของคุณด้วย',
                  ),
                  actions: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text(
                        'ตกลง',
                      ),
                    ),
                  ],
                );
                },
               );
                } else {
                // บันทึกสิ่งที่ป้อนลง SherrPreference แล้วกลับไปหน้า HomeUI
                }
              },
              child: Text(
                'บันทึก',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width * 0.7,
                  50.0,
                ),
                primary: Colors.green,
              ),
            ), 


          ],
        ),
      ),
    );
  }
}