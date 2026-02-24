import 'package:carporater/core/widgets/main_scaffold.dart';
import 'package:carporater/features/complaints/presentation/widgets/image_displayer.dart';
import 'package:carporater/features/complaints/presentation/widgets/item.dart';
import 'package:flutter/material.dart';


class ComplainDetails extends StatelessWidget {
  const ComplainDetails({super.key});

void displayImage(context){
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ImageBox(path: "assets/images/logo.png"),
              SizedBox(height: 20),
              ImageBox(path: "assets/images/logo.png"),
              SizedBox(height: 20),
              ImageBox(path: "assets/images/logo.png"),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ImageBox(path: "assets/images/logo.png"),
              SizedBox(height: 20),
              SizedBox(height: 20),
              ImageBox(path: "assets/images/logo.png"),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("back"),
              ),
            ],
          ),
          )
          
        ),
      );
    },
  );
    }


  final Map<String, String> record = const {
      "name": "A.R. Madhanvan",
      "mobile no.": "xxxxxxxxxxx",
      "email": "test@gmail.com",
      "complaint description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more",
      "location": "Nashik Road, Nashik"
    };

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: "Complaint Details",
      body: Container(
        padding: EdgeInsets.all(16),
        child:  Card(
              margin : EdgeInsets.all(10),
              surfaceTintColor: Colors.grey,
              elevation: 6,
              shadowColor: Colors.black.withOpacity(0.15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),

              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [TextButton.icon(
                      onPressed: () => Navigator.of(context).pop(),
                      icon : Icon(Icons.arrow_back,),
                      label: const Text(''),
                    ),],
                    ),
                    
                    item("Name", record["name"] ?? ""),
                    item("Mobile No.", record["mobile no."] ?? ""),
                    item("Email", record["email"] ?? ""),
                    item("Desription", record["complaint description"] ?? ""),
                    TextButton(
                      onPressed: (){displayImage(context);},
                      child: const Text('View Images')),
                    item("Location", record["location"] ?? ""),
                  ],
                ),
              ),
            ),
      )
      );
  }
}