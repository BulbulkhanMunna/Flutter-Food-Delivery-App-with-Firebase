import 'package:flutter/material.dart';
import 'package:food_delivery/components/my_button.dart';
import 'package:food_delivery/components/my_textfield.dart';
import 'package:food_delivery/services/auth/auth_service.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key,
  required this.onTap
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text editing controllers
final TextEditingController emailController =TextEditingController();
final TextEditingController passwordController =TextEditingController();
final TextEditingController comfirmPasswordController =TextEditingController();

//register method
void register()async{
// get the auth service
final _authService = AuthService();

//check if passwords match -> create user
if(passwordController.text==comfirmPasswordController.text){
  //try creating user
  try {
    await _authService.signUpWithEmailPassword(
      emailController.text, passwordController.text);
      //display error
  } catch (e) {
    showDialog(
      // ignore: use_build_context_synchronously
      context: context, 
      builder: (context)=>AlertDialog(
        title: Text(e.toString()),

      )
      );
    
  }
}

//if password don't match -> show error
else{
  showDialog(
      // ignore: use_build_context_synchronously
      context: context, 
      builder: (context)=>AlertDialog(
        title: Text("Password don't match"),

      )
      );
}
  

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo 
          Icon(Icons.lock_open_rounded,
          size: 100,
          color: Theme.of(context).colorScheme.inversePrimary,
          ),
        const SizedBox(height: 25,),
        
          //message, app slogan
          Text("Let's create an account for you",
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          ),
          const SizedBox(height: 25,),
        
          //email textfield
         MyTextfield(
          controller: emailController,
           hintText: "Email", 
           obscureText: false),


          //password textfield
          const SizedBox(height: 10,),
            MyTextfield(
          controller: passwordController,
           hintText: "Password", 
           obscureText: true),

           const SizedBox(height: 10,),

            //Confirm password textfield
          MyTextfield(
          controller: comfirmPasswordController,
           hintText: "Confirm Password", 
           obscureText: true),

          const SizedBox(height: 10,),
        
        
          //sign up button
          MyButton(onTap: (){register();}
          , 
          text: "Sign Up"),

          const SizedBox(height: 25,),
        
        
          //allready have an account? Login here
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("allready have an account?",style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),),
              const SizedBox(width: 5,),


              GestureDetector(
                onTap: widget.onTap ,
                child: Text("Login here",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontWeight: FontWeight.bold,
                )),
              )
            ],
          )
        
          ],
        
          
        ),
      ),
    );
  }
}