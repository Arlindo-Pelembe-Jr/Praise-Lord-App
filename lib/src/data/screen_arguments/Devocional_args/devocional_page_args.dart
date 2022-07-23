class DevocionalPageArgs {
  final String details;
  DevocionalPageArgs(this.details);

  DevocionalPageArgs.fromJson(Map<String, dynamic> json)
      : details = json['details'];

  Map<String, dynamic> toJson() => {'details': details};
}
