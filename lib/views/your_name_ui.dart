import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourNameUI extends StatefulWidget {
  const YourNameUI({Key? key}) : super(key: key);

  @override
  State<YourNameUI> createState() => _YourNameUIState();
}

class _YourNameUIState extends State<YourNameUI> {
  TextEditingController nameCtrl = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        backgroundColor: Colors.green[800],
        title: Text(
          'Add/Edit Phone',
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
              'ป้อนชื่อของคุณ',
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
                controller: nameCtrl,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'ป้อนชื่อ',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            ElevatedButton(   // ปุ่มบันทึก
              onPressed: () {
                // ตรวจสอบการป้อน
                if(nameCtrl.text.trim().length == 0){
                // แสดงเตือนผู้ใช้ให้ป้อน
               showDialog(
                context: context,
                builder: (context){
                  return  AlertDialog(
                  title: Text(
                    'คำเตือน',
                  ),
                  content: Text(
                    'ป้อนชื่อของคุณด้วย',
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
