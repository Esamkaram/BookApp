class LoginModel {
  int? status;
  TokenData? tokenData;
  String? message;

  LoginModel({this.status, this.tokenData, this.message});

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    tokenData = json['token_data'] != null
        ? TokenData.fromJson(json['token_data'])
        : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    if (tokenData != null) {
      data['token_data'] = tokenData!.toJson();
    }
    data['message'] = message;
    return data;
  }
}

class TokenData {
  String? token;
  Data? data;

  TokenData({this.token, this.data});

  TokenData.fromJson(Map<String, dynamic> json) {
    token = json['Token'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Token'] = token;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? empId;
  String? empName;
  int? defSal;
  int? empClo;
  int? centerId;
  String? empType;

  Data(
      {this.empId,
      this.empName,
      this.defSal,
      this.empClo,
      this.centerId,
      this.empType});

  Data.fromJson(Map<String, dynamic> json) {
    empId = json['emp_id'];
    empName = json['emp_name'];
    defSal = json['def_sal'];
    empClo = json['emp_clo'];
    centerId = json['center_id'];
    empType = json['emp_type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['emp_id'] = empId;
    data['emp_name'] = empName;
    data['def_sal'] = defSal;
    data['emp_clo'] = empClo;
    data['center_id'] = centerId;
    data['emp_type'] = empType;
    return data;
  }
}
