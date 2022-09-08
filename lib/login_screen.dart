import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  // controller بيتيح ليك انك تستخدم الحاجة اللي بتتكتب سواء ف الميل او الباسورد
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center( // هنا انا خليتهم في نص الشاشة وكمان اعرف لااعمل scroll لما الكيبورد يظهر
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextFormField(

                  controller: emailController, // هنا باخد obj  عشان اعرف استخدمه معايا ف اي حته
                  keyboardType: TextInputType.emailAddress, // include @ in keyboard
                  onFieldSubmitted: (String value) {
                    print(value); // return final value " the email"
                  },
                  onChanged: (String value) {
                    print(value);  // بترجعلي كل ما ادوس علي اي حرف الحرف ده واللي قبليه "كل اما اغير حاجة "
                  },
                  /////// make an hint for the user "Email"
                  decoration: InputDecoration(
                    labelText: 'Email Address', // this hint
                    prefixIcon: Icon( // email icon at start of email box
                      Icons.email,
                    ),
                    // هنا بظبط الbox اللي هكتب فيه
                    border: OutlineInputBorder(),
                  ),
                ),
                // عبارة عن مسافه كده تبعد الميل عن كلمه ال login
                SizedBox(
                  height: 15.0,
                ),
                TextFormField(
                  controller: passwordController, // هنا باخد obj  عشان اعرف استخدمه معايا ف اي حته
                  keyboardType: TextInputType.visiblePassword, // بيظهرلي ال password
                  obscureText: true, // دي بخليها true عشان وانا بكتب الباسورد يخليها مخفية
                  onFieldSubmitted: (String value) {
                    print(value);
                  },
                  onChanged: (String value) {
                    print(value);
                  },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                    onPressed: () {
                      print(emailController.text);
                      print(passwordController.text);
                    },
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account?',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register Now',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
