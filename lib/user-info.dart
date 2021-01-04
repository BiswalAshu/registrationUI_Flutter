class UserInfo {
  String eMail;
  String fullName;
  String phoneNo;
  String userId;
  String role;
  UserInfo(this.eMail, this.fullName, this.phoneNo, this.userId,
      [this.role = 'user']);

  //write factory method here
  void userBuild(var jsonResponse){
    
  }
}