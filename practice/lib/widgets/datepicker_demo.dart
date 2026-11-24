import 'package:flutter/material.dart';

class DatepickerDemo extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("DatePicker"),
    ),
    body:Center(
     child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
        'Select Date',
        style: TextStyle(fontSize: 25),
        ),
        ElevatedButton(onPressed: () async{
          DateTime? datePicked= await 
          showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2021), lastDate:DateTime(2023));

          if(datePicked!=null){
             print("Date Selected:${datePicked.day}-${datePicked.month}-${datePicked.year}");
          }
        }, child: Text("show")),

        ElevatedButton(onPressed: () async{
          TimeOfDay? pickedTime= await showTimePicker(context: context, initialTime: TimeOfDay.now(),
          initialEntryMode: TimePickerEntryMode.input);

          if(pickedTime!=null){
            print("Selected Time:${pickedTime.hour}-${pickedTime.minute}");
          }
        }, child: Text("Select Time"))
      ],
     ),
    ),
    );
  }
}