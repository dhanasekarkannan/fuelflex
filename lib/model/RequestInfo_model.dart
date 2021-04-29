class TestRequest {
  RequestInfo requestInfo;

  TestRequest({this.requestInfo});

  TestRequest.fromJson(Map<String, dynamic> json) {
    requestInfo = json['RequestInfo'] != null
        ? new RequestInfo.fromJson(json['RequestInfo'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.requestInfo != null) {
      data['RequestInfo'] = this.requestInfo.toJson();
    }
    return data;
  }
}

class RequestInfo {
  String requestType;
  String termSerialNum;
  String version;

  RequestInfo({this.requestType, this.termSerialNum, this.version});

  RequestInfo.fromJson(Map<String, dynamic> json) {
    requestType = json['RequestType'];
    termSerialNum = json['TermSerialNum'];
    version = json['version'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['RequestType'] = this.requestType;
    data['TermSerialNum'] = this.termSerialNum;
    data['version'] = this.version;
    return data;
  }
}
