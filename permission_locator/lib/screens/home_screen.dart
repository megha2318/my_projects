import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PermissionStatus? statusCalender;
  PermissionStatus? statusLocation;
  PermissionStatus? statusBluetooth;
  PermissionStatus? statusCamera;
  PermissionStatus? statusContact;
  PermissionStatus? statusSMS;
  PermissionStatus? statusNotification;
  PermissionStatus? statusRecordAudio;
  PermissionStatus? statusExternalStorage;
  PermissionStatus? statusInstallPackages;

  TextStyle lightTxt = const TextStyle(
      fontSize: 18,
      color: Colors.black
  );
  TextStyle boldTxt = const TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context, builder: (context){
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Calender :",style: lightTxt,),
                  Text(" ${statusCalender ?? "No any Permission!!!!!"}",style: boldTxt,),
                  const SizedBox(height: 10,),
                  Text("Location : ",style: lightTxt,),
                  Text("${statusLocation ?? "No any Permission!!!!!"}",style: boldTxt,),
                  const SizedBox(height: 10,),
                  Text("Bluetooth : ",style: lightTxt,),
                  Text("${statusBluetooth ?? "No any Permission!!!!!"}",style: boldTxt,),
                  const SizedBox(height: 10,),
                  Text("Camera : ",style: lightTxt,),
                  Text("${statusCamera ?? "No any Permission!!!!!"}",style: boldTxt,),
                  const SizedBox(height: 10,),
                  Text("Contact : ",style: lightTxt,),
                  Text("${statusContact ?? "No any Permission!!!!!"}",style: boldTxt,),
                  const SizedBox(height: 10,),
                  Text("SMS : ",style: lightTxt,),
                  Text("${statusSMS ?? "No any Permission!!!!!"}",style: boldTxt,),
                  const SizedBox(height: 10,),
                  Text("Notification : ",style: lightTxt,),
                  Text("${statusNotification ?? "No any Permission!!!!!"}",style: boldTxt,),
                  const SizedBox(height: 10,),
                  Text("Record Audio : ",style: lightTxt,),
                  Text("${statusRecordAudio ?? "No any Permission!!!!!"}",style: boldTxt,),
                  const SizedBox(height: 10,),
                  Text("Install Packages : ",style: lightTxt,),
                  Text("${statusInstallPackages ?? "No any Permission!!!!!"}",style: boldTxt,),
                  const SizedBox(height: 10,),
                  Text("External Storage : ",style: lightTxt,),
                  Text("${statusExternalStorage ?? "No any Permission!!!!!"}",style: boldTxt,),
                ],
              ),
            );
          });
        },
        child: Icon(Icons.remove_red_eye),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("Permissions",style: lightTxt,),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListTile(
              onTap: ()async{
                statusCalender = await Permission.calendar.request();
              },
              leading: const Icon(Icons.calendar_today_outlined),
              title: Text("Calender",style: lightTxt,),
            ),
            ListTile(
              onTap: ()async{
                statusBluetooth = await Permission.bluetooth.request();
                print("${statusBluetooth.runtimeType}");
              },
              leading: const Icon(Icons.bluetooth),
              title: Text("Bluetooth",style: lightTxt,),
            ),
            ListTile(
              onTap: ()async{
                statusLocation = await Permission.location.request();
              },
              leading: const Icon(Icons.location_searching),
              title: Text("Location",style: lightTxt,),
            ),
            ListTile(
              onTap: ()async{
                statusCamera = await Permission.camera.request();
              },
              leading: const Icon(Icons.camera),
              title: Text("Camera",style: lightTxt,),
            ),
            ListTile(
              onTap: ()async{
                statusContact = await Permission.contacts.request();
              },
              leading: const Icon(Icons.contacts),
              title: Text("Contact",style: lightTxt,),
            ),
            ListTile(
              onTap: ()async{
                statusSMS = await Permission.sms.request();
              },
              leading: const Icon(Icons.sms),
              title: Text("SMS",style: lightTxt,),
            ),
            ListTile(
              onTap: ()async{
                statusNotification = await Permission.accessNotificationPolicy.request();
              },
              leading: const Icon(Icons.notifications_on_sharp),
              title: Text("Notification",style: lightTxt,),
            ),
            ListTile(
              onTap: ()async{
                statusRecordAudio = await Permission.microphone.request();
              },
              leading: const Icon(Icons.mic_outlined),
              title: Text("Record Audio",style: lightTxt,),
            ),
            ListTile(
              onTap: ()async{
                statusInstallPackages = await Permission.requestInstallPackages.request();
              },
              leading: const Icon(Icons.all_inbox),
              title: Text("Install Packages",style: lightTxt,),
            ),
            ListTile(
              onTap: ()async{
                statusExternalStorage = await Permission.manageExternalStorage.request();
              },
              leading: const Icon(Icons.storage),
              title: Text("External Storage",style: lightTxt,),
            ),
          ],
        ),
      ),
    );
  }
}