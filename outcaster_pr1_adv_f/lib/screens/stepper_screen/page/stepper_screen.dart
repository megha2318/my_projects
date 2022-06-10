import 'package:flutter/material.dart';
import 'package:outcaster_pr1_adv_f/utils/routs.dart';
import '../../../modal_class/modal_class.dart';
import '../../../utils/colors.dart';
import '../../../utils/strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///
/// TODO ;- this is "Stepper App" Screen
///

class StepperScreen extends StatefulWidget {
  const StepperScreen({Key? key}) : super(key: key);

  @override
  State<StepperScreen> createState() => _StepperScreenState();
}

class _StepperScreenState extends State<StepperScreen> {

  GlobalKey<FormState> Key = GlobalKey<FormState>();
  GlobalKey<FormState> signUpKey = GlobalKey<FormState>();
  GlobalKey<FormState> logInKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController logInPasswordController = TextEditingController();

  String name = '';
  String email = '';
  String password = '';
  String confirmPassword = '';
  String userName = '';
  String logInPassword = '';

  int i = 0;
  bool netPage = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          colorScheme: const ColorScheme.light(
              primary: Colors.red
          ).copyWith(secondary: Colors.red)
      ),
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: () => Scaffold(
        appBar: AppBar(
          backgroundColor: redColor,
          title: const Text(stepperApp),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Stepper(
                currentStep: i,
                onStepContinue: (){
                  if(i == 0){
                    if(signUpKey.currentState!.validate()){
                      signUpKey.currentState!.save();
                      signUpStepper.name = name;
                      signUpStepper.email = email;
                      signUpStepper.password = password;
                      signUpStepper.confirmPassword = password;
                      i++;
                    }
                  }
                  if(i == 1){
                    if(logInKey.currentState!.validate()){
                      logInKey.currentState!.save();
                      logInStepper.userName = userName;
                      logInStepper.logInPassword = logInPassword;
                      i++;
                    }
                  }
                  if(i == 2){
                  }
                  setState(() {});
                },
                steps: [
                  Step(title: const Text(signUp), content: (i == 0) ?  SizedBox(
                    height: 250.w,
                    child: Form(
                      key: signUpKey,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: TextFormField(
                                controller: nameController,
                                validator: (val){
                                  if(nameController.text.isEmpty){
                                    return "Please Enter Your Full Name";
                                  }
                                  return null;
                                },
                                onSaved: (val){
                                  setState(() {
                                    name = val!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  labelText: "Full Name",
                                  prefixIcon: Icon(Icons.account_circle_outlined),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: TextFormField(
                                controller: emailController,
                                validator: (val){
                                  if(emailController.text.isEmpty){
                                    return "Please Enter Your Email";
                                  }
                                  return null;
                                },
                                onSaved: (val){
                                  setState(() {
                                    email = val!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  labelText: "Email",
                                  prefixIcon: Icon(Icons.email_outlined),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: passwordController,
                                validator: (val){
                                  if(passwordController.text.isEmpty){
                                    return "Please Enter Your Password";
                                  }else if(passwordController.text.length <8){
                                    return "Please Enter 8 digit or more!!!";
                                  }
                                  return null;
                                },
                                onSaved: (val){
                                  setState(() {
                                    password = val!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  labelText: "Password",
                                  prefixIcon: Icon(Icons.lock),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: confirmPasswordController,
                                validator: (val){
                                  if(confirmPasswordController.text.isEmpty){
                                    return "Please Enter Your Confirm Password";
                                  }else if(confirmPasswordController.text != passwordController.text){
                                    return "Please Enter Valid Password";
                                  }
                                  return null;
                                },
                                onSaved: (val){
                                  setState(() {
                                    confirmPassword = val!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  labelText: "Confirm Password",
                                  prefixIcon: Icon(Icons.lock),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ) : Container(),isActive: true),
                  Step(title: const Text(logIn), content: (i == 1) ?  SizedBox(
                    height: 150.w,
                    child: Form(
                      key: logInKey,
                      child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: TextFormField(
                                controller: usernameController,
                                validator: (val){
                                  if(usernameController.text.isEmpty){
                                    return "Please Enter Your Full Name";
                                  }
                                  return null;
                                },
                                onSaved: (val){
                                  setState(() {
                                    userName = val!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  labelText: "User Name",
                                  prefixIcon: Icon(Icons.account_circle_outlined),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40.w),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                controller: logInPasswordController,
                                validator: (val){
                                  if(logInPasswordController.text.isEmpty){
                                    return "Please Enter Your Password";
                                  }else if(logInPasswordController.text.length <8){
                                    return "Please Enter 8 digit or more!!!";
                                  }
                                  return null;
                                },
                                onSaved: (val){
                                  setState(() {
                                    logInPassword = val!;
                                  });
                                },
                                decoration: const InputDecoration(
                                  labelText: "Password",
                                  prefixIcon: Icon(Icons.lock),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ) : Container(),isActive: true),
                  Step(title: const Text(home), content: Container(),isActive:  true ,state: StepState.complete),
                ],),
              const SizedBox(
                height: 250,
              ),
            ],
          ),
        ),
      )),
    );
  }
}