import 'package:carporater/features/complaints/presentation/widgets/status_badge.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:carporater/core/widgets/main_scaffold.dart';
import 'package:carporater/features/complaints/domain/model/complaint_model.dart';
import 'package:carporater/features/complaints/presentation/widgets/image_displayer.dart';
import 'package:carporater/features/complaints/presentation/widgets/item.dart';

class ComplainDetails extends StatelessWidget {

  final List<File> dummyImages = [
  File('assets/images/banner1.jpeg'),
  File('assets/images/banner2.jpeg'),
  File('assets/images/banner3.jpeg'),
];
  final ComplaintModel complaint;

   ComplainDetails({
    super.key,
    required this.complaint,
  });






void displayImage(BuildContext context, List<File> images) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              SmallPhotoCarousel(
                localImages: images,
              ),

              const SizedBox(height: 20),

              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Back"),
              ),
            ],
          ),
        ),
      );
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return MainScaffold(
      title: "Complaint Details",
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          margin: const EdgeInsets.all(10),
          elevation: 6,
          surfaceTintColor: Colors.grey,
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
                  children: [
                    TextButton.icon(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                      label: const Text("Back"),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                item("Complaint ID", complaint.complaintId),
                item("Name", complaint.name),
                item("Mobile No.", complaint.mobileNo),
                item("Email", complaint.email ?? "Not Provided"),
                item(
                  "Description",
                  complaint.description ?? "No description available",
                ),

                TextButton(
                  onPressed: () => displayImage(context,dummyImages),
                  child: const Text("View Images"),
                ),

                item("Location", complaint.location),
                item("Status",complaint.status),

                const SizedBox(height: 10),

            
                Row(
                  children: [
                    const Text(
                      "Status: ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    statusBadge(complaint.status),
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