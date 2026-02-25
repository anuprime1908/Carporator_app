class ComplaintModel {
  final String complaintId;
  final String name;
  final String mobileNo;
  final String? email;
  final String? description;
  final String location;
  final String status;
  final String actionsTaken;
  final List<String> images;

  const ComplaintModel({
    required this.complaintId,
    required this.name,
    required this.mobileNo,
    required this.location,
    required this.status,
    this.email,
    this.description,
    required this.actionsTaken,
    required this.images,
  });
  
//for the backend later 
  factory ComplaintModel.fromMap(Map<String, dynamic> map) {
    return ComplaintModel(
      complaintId: map["complaintId"],
      name: map["name"],
      mobileNo: map["mobileNo"],
      location: map["location"],
      status: map["status"],
      email: map["email"],
      description: map["description"],
      actionsTaken: map["actionsTaken"],
      images: map["images"]
    );
  }

  Map<String, dynamic> toMap() => {
        "complaintId": complaintId,
        "name": name,
        "mobileNo": mobileNo,
        "location": location,
        "status": status,
        "email": email,
        "description": description,
        "actionsTaken" : actionsTaken,
        "images":images,
      };
}