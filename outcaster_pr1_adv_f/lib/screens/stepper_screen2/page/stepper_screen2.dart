import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:outcaster_pr1_adv_f/screens/stepper_screen2/widgets/common_widgets.dart';
import 'package:outcaster_pr1_adv_f/utils/colors.dart';
import 'package:outcaster_pr1_adv_f/utils/routs.dart';
import '../../../modal_class/modal_class.dart';
import '../../../utils/strings.dart';

///
/// TODO :- this is "EditYourProfileStepper" Screen
///

class EditYourProfileStepperScreen extends StatefulWidget {
  const EditYourProfileStepperScreen({Key? key}) : super(key: key);

  @override
  State<EditYourProfileStepperScreen> createState() =>
      _EditYourProfileStepperScreenState();
}

class _EditYourProfileStepperScreenState
    extends State<EditYourProfileStepperScreen> {
  ImagePicker picker = ImagePicker();
  File? image;
  bool stepTapped = false;
  int currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: () => Scaffold(
              appBar: AppBar(
                title: const Text(editProfile),
                backgroundColor: blueColor,
                actions: [
                  IconButton(onPressed: (){
                    setState(() {
                      CupertinoStore().cupertinoStore = true;
                    });
                    Navigator.of(context).pushNamed(appRoutes.stepperScreen);
                  }, icon: const Icon(Icons.arrow_forward_ios_outlined))
                ],
              ),
              body: ListView(
                children: [
                  Stepper(
                      controlsBuilder: (context, details) => const SizedBox(),
                      onStepTapped: (val) {
                        setState(() {
                          stepTapped = !stepTapped;
                          currentStep = val;
                        });
                      },
                      currentStep: currentStep,
                      steps: [
                        Step(
                            title: const Text(profilePhoto),
                            content: (stepTapped == true)
                                ? const CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrKHPsvNDJHY9tWpkHrfkfo8Dkf0LvZU3Hdg&usqp=CAU"),
                                    radius: 50,
                                  )
                                : Container(),
                            isActive: true),
                        Step(
                            title: const Text(name),
                            content: (stepTapped == true)
                                ? Column(
                                    children: [
                                      TextFieldWidget(
                                          controllerTxt: "Tasso",
                                          tx: name,
                                          value: editYourProfileStepper.name,
                                          controller: TextEditingController(),
                                          valTxt: name),
                                    ],
                                  )
                                : Container(),
                            isActive: true),
                        Step(
                            title: const Text(phone),
                            content: (stepTapped == true)
                                ? Column(
                                    children: [
                                      TextFieldWidget(
                                          controllerTxt: "9876543219",
                                          tx: phone,
                                          value: editYourProfileStepper.phone,
                                          controller: TextEditingController(),
                                          valTxt: phone),
                                    ],
                                  )
                                : Container(),
                            isActive: true),
                        Step(
                            title: const Text(email),
                            content: (stepTapped == true)
                                ? Column(
                                    children: [
                                      TextFieldWidget(
                                          controllerTxt: "Tasso111@gmail.com",
                                          tx: email,
                                          value: editYourProfileStepper.email,
                                          controller: TextEditingController(),
                                          valTxt: email),
                                    ],
                                  )
                                : Container(),
                            isActive: true),
                        Step(
                            title: const Text(DOB),
                            content: (stepTapped == true)
                                ? Column(
                                    children: [
                                      TextFieldWidget(
                                          controllerTxt: "12/05/1991",
                                          tx: dateOfBirth,
                                          value: editYourProfileStepper.dob,
                                          controller: TextEditingController(),
                                          valTxt: DOB),
                                    ],
                                  )
                                : Container(),
                            isActive: true),
                        Step(
                            title: const Text(gender),
                            content: (stepTapped == true)
                                ? Column(
                                    children: [
                                      TextFieldWidget(
                                          controllerTxt: "Male",
                                          tx: mF,
                                          value:
                                              editYourProfileStepper.gender,
                                          controller: TextEditingController(),
                                          valTxt: gender),
                                    ],
                                  )
                                : Container(),
                            isActive: true),
                        Step(
                            title: const Text(currentLocation),
                            content: (stepTapped == true)
                                ? Column(
                                    children: [
                                      TextFieldWidget(
                                          controllerTxt: "Mumbai",
                                          tx: currentLocation,
                                          value:
                                              editYourProfileStepper.location,
                                          controller: TextEditingController(),
                                          valTxt: currentLocation),
                                    ],
                                  )
                                : Container(),
                            isActive: true),
                        Step(
                            title: const Text(nationalities),
                            content: (stepTapped == true)
                                ? Column(
                                    children: [
                                      TextFieldWidget(
                                          controllerTxt: "Indian",
                                          tx: nationalities,
                                          value: editYourProfileStepper
                                              .nationality,
                                          controller: TextEditingController(),
                                          valTxt: nationalities),
                                    ],
                                  )
                                : Container(),
                            isActive: true),
                        Step(
                            title: const Text(religion),
                            content: (stepTapped == true)
                                ? Column(
                                    children: [
                                      TextFieldWidget(
                                          controllerTxt: "Hindu",
                                          tx: religion,
                                          value:
                                              editYourProfileStepper.religion,
                                          controller: TextEditingController(),
                                          valTxt: religion),
                                    ],
                                  )
                                : Container(),
                            isActive: true),
                        Step(
                            title: const Text(languages),
                            content: (stepTapped == true)
                                ? Column(
                                    children: [
                                      TextFieldWidget(
                                          controllerTxt:
                                              "English,Hindi,Gujarati",
                                          tx: language,
                                          value:
                                              editYourProfileStepper.language,
                                          controller: TextEditingController(),
                                          valTxt: language),
                                    ],
                                  )
                                : Container(),
                            isActive: true),
                        Step(
                            title: const Text(biography),
                            content: (stepTapped == true)
                                ? Column(
                                    children: [
                                      TextFieldWidget(
                                          controllerTxt:
                                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                          tx: biography,
                                          value: editYourProfileStepper
                                              .biography,
                                          controller: TextEditingController(),
                                          valTxt: biography),
                                    ],
                                  )
                                : Container(),
                            isActive: true),
                      ]),
                ],
              ),
            ));
  }
}
