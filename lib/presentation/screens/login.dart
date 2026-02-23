import 'package:flutter/material.dart';

class Login extends StatefulWidget {
   Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final nameController = TextEditingController();

  final mobileController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final confirmPasswordController = TextEditingController();

  final locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
  body: Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/bg.png"),
        fit: BoxFit.cover, 
      ),
    ),

    child: Center(
      child: SingleChildScrollView(
  child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  const SizedBox(height: 3),
  //profile photo text
  const Text(
  "Profile Photo",
  style: TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: Color(0xFF0F4D92),
  ),
  ),
  const SizedBox(height: 8),
  Center(
  child: Container(
  padding: const EdgeInsets.all(6),
  decoration: const BoxDecoration(
  color: Colors.white,
  shape: BoxShape.circle,
  ),
  child: const CircleAvatar(
  radius: 40,
  backgroundColor: Colors.blue,
  child: Icon(
  Icons.person,
  size: 50,
  color: Colors.white,
  ),
  ),
  ),
  ),
  Card(
  elevation: 8,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20),
  ),
  color: Colors.white,
  child: Padding(
  padding: EdgeInsets.all(20.0),
  child: Column(

  children: [
  //name
  TextField(
    controller: nameController,
    decoration: InputDecoration(
  labelText: "Name",
  prefixIcon: Icon(Icons.person),
  border: OutlineInputBorder(),
  ),
  ),
  SizedBox(height: 15),
  //mobile number
  TextField(
    controller: mobileController,
  keyboardType: TextInputType.phone,
  decoration: InputDecoration(
  labelText: "Mobile Number",
  prefixIcon: Icon(Icons.phone),
  border: OutlineInputBorder(),
  ),
  ),
  SizedBox(height: 15),
  //email
  TextField(
    controller: emailController,
  decoration: InputDecoration(
  labelText: "Email",
  prefixIcon: Icon(Icons.email),
  border: OutlineInputBorder(),
  ),
  ),
  SizedBox(height: 15),
  //password
  // Password
  TextField(
    controller: passwordController,
  obscureText: true,
  decoration: InputDecoration(
  labelText: "Password",
  prefixIcon: Icon(Icons.lock),
  border: OutlineInputBorder(),
  ),
  ),
  SizedBox(height: 15),
  //confirm password
  TextField(
    controller: confirmPasswordController,
  obscureText: true,
  decoration: InputDecoration(
  labelText: "Confirm Password",
  prefixIcon: Icon(Icons.lock_outline),
  border: OutlineInputBorder(),
  ),
  ),
  SizedBox(height: 15),
  //Location
  TextField(
    controller: locationController,
  decoration: InputDecoration(
  labelText: "Location",
  prefixIcon: Icon(Icons.location_on),
  border: OutlineInputBorder(),
  ),
  ),
  const SizedBox(height: 20),
  SizedBox(
  width: double.infinity,
  child: ElevatedButton(
  onPressed: (){
    print("Name: ${nameController.text}");
    print("Mobile: ${mobileController.text}");
    print("Email: ${emailController.text}");
    print("Password: ${passwordController.text}");
    print("Confirm: ${confirmPasswordController.text}");
    print("Location: ${locationController.text}");
  },
  style: ElevatedButton.styleFrom(
  padding: const EdgeInsets.symmetric(vertical: 15),
  backgroundColor: Colors.blue,
  ),
  child: const Text(
  "Register",
  style: TextStyle(
  fontSize: 18,
  color: Colors.white,
  ),
  ),
  ),
  )
  ],
  ),
  ),
  ),
  ],
  ),
  ),
  ),
      ),
  ),
);
  }
}

/*
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}
  class _RegistrationPageState extends State<RegistrationPage> {


  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final locationController = TextEditingController();


  @override
  Widget build(BuildContext context){
  return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroundimage.png"),
            fit: BoxFit.cover,
          ),
        ),
  child:  SingleChildScrollView(
  child: Padding(
  padding: const EdgeInsets.all(20.0),
  child:Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
  const SizedBox(height: 3),
  //profile photo text
  const Text(
  "Profile Photo",
  style: TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: Color(0xFF0F4D92),
  ),
  ),
  const SizedBox(height: 8),
  Center(
  child: Container(
  padding: const EdgeInsets.all(6),
  decoration: const BoxDecoration(
  color: Colors.white,
  shape: BoxShape.circle,
  ),
  child: const CircleAvatar(
  radius: 40,
  backgroundColor: Colors.blue,
  child: Icon(
  Icons.person,
  size: 50,
  color: Colors.white,
  ),
  ),
  ),
  ),
  Card(
  elevation: 8,
  shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(20),
  ),
  color: Colors.white,
  child: Padding(
  padding: EdgeInsets.all(20.0),
  child: Column(

  children: [
  //name
  TextField(
    controller: nameController,
    decoration: InputDecoration(
  labelText: "Name",
  prefixIcon: Icon(Icons.person),
  border: OutlineInputBorder(),
  ),
  ),
  SizedBox(height: 15),
  //mobile number
  TextField(
    controller: mobileController,
  keyboardType: TextInputType.phone,
  decoration: InputDecoration(
  labelText: "Mobile Number",
  prefixIcon: Icon(Icons.phone),
  border: OutlineInputBorder(),
  ),
  ),
  SizedBox(height: 15),
  //email
  TextField(
    controller: emailController,
  decoration: InputDecoration(
  labelText: "Email",
  prefixIcon: Icon(Icons.email),
  border: OutlineInputBorder(),
  ),
  ),
  SizedBox(height: 15),
  //password
  // Password
  TextField(
    controller: passwordController,
  obscureText: true,
  decoration: InputDecoration(
  labelText: "Password",
  prefixIcon: Icon(Icons.lock),
  border: OutlineInputBorder(),
  ),
  ),
  SizedBox(height: 15),
  //confirm password
  TextField(
    controller: confirmPasswordController,
  obscureText: true,
  decoration: InputDecoration(
  labelText: "Confirm Password",
  prefixIcon: Icon(Icons.lock_outline),
  border: OutlineInputBorder(),
  ),
  ),
  SizedBox(height: 15),
  //Location
  TextField(
    controller: locationController,
  decoration: InputDecoration(
  labelText: "Location",
  prefixIcon: Icon(Icons.location_on),
  border: OutlineInputBorder(),
  ),
  ),
  const SizedBox(height: 20),
  SizedBox(
  width: double.infinity,
  child: ElevatedButton(
  onPressed: (){
    print("Name: ${nameController.text}");
    print("Mobile: ${mobileController.text}");
    print("Email: ${emailController.text}");
    print("Password: ${passwordController.text}");
    print("Confirm: ${confirmPasswordController.text}");
    print("Location: ${locationController.text}");
  },
  style: ElevatedButton.styleFrom(
  padding: const EdgeInsets.symmetric(vertical: 15),
  backgroundColor: Colors.blue,
  ),
  child: const Text(
  "Register",
  style: TextStyle(
  fontSize: 18,
  color: Colors.white,
  ),
  ),
  ),
  )
  ],
  ),
  ),
  ),
  ],
  ),
  ),
  ),
      ),
  );
  }
  }*/