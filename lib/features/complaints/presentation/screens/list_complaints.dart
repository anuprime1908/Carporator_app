import 'package:carporater/core/widgets/main_scaffold.dart';
import 'package:carporater/features/complaints/presentation/screens/complain_details.dart';
import 'package:carporater/features/complaints/presentation/widgets/compliant_list_item.dart';
import 'package:flutter/material.dart';


class ListComplaints extends StatelessWidget {
  const ListComplaints({super.key});

  final List<Map<String, String>> complaints = const [
    {
      "complaint id" : "xxxxxxxxx1234",
      "name": "A.R. Madhanvan",
      "mobile no.": "xxxxxxxxxxx",
      "location" : "Nashik road,Nashik",
    },
    {
      "complaint id" : "xxxxxxxxx1234",
      "name": "A.R. Madhanvan",
      "mobile no.": "xxxxxxxxxxx",
      "location" : "Nashik road,Nashik",
    },{
      "complaint id" : "xxxxxxxxx1234",
      "name": "A.R. Madhanvan",
      "mobile no.": "xxxxxxxxxxx",
      "location" : "Nashik road,Nashik",
    },{
      "complaint id" : "xxxxxxxxx1234",
      "name": "A.R. Madhanvan",
      "mobile no.": "xxxxxxxxxxx",
      "location" : "Nashik road,Nashik",
    },{
      "complaint id" : "xxxxxxxxx1234",
      "name": "A.R. Madhanvan",
      "mobile no.": "xxxxxxxxxxx",
      "location" : "Nashik road,Nashik",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: "Complaints",
      body: ListView.builder(
        padding: const EdgeInsets.all(16), 
        itemCount: complaints.length,
        itemBuilder: (context, index) {
          final complaint = complaints[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: GestureDetector(
              onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ComplainDetails(),
        ),
      );
    },
              child: Card(
                surfaceTintColor: Colors.grey,
                elevation: 6,
                shadowColor: Colors.black.withOpacity(0.15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18),
                ),
              
                child: 
                
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ComplaintListItem("Complaint id", complaint["complaint id"] ?? ""),
                      ComplaintListItem("Name", complaint["name"] ?? ""),
                      ComplaintListItem("Mobile No.", complaint["mobile no."] ?? ""),
                      ComplaintListItem("Location",complaint["location"] ?? ""),
                      
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
