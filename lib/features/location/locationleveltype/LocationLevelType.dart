 

class Locationleveltype {
  final int locationleveltypeID;

  const Locationleveltype({
    required this.locationleveltypeID,
    
  });

  factory Locationleveltype.fromJson(Map<String, dynamic> json) {
    return Locationleveltype(
      locationleveltypeID: json['locationleveltype_ID'],
    
    );
  }
}