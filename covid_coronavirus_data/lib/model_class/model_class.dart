class COVID19Data{
  final String loc;
  final int confirmedCasesIndian;
  final int confirmedCasesForeign;
  final int discharged;
  final int deaths;
  final int totalConfirmed;

  COVID19Data ({
    required this.loc,
    required this.confirmedCasesIndian,
    required this.confirmedCasesForeign,
    required this.discharged,
    required this.deaths,
    required this.totalConfirmed,
});

  factory COVID19Data.fromJson(Map<String,dynamic> json){
    return COVID19Data(
        loc: json["data"]["regional"][0]["loc"],
        confirmedCasesIndian: json["data"]["regional"][0]["confirmedCasesIndian"],
        confirmedCasesForeign: json["data"]["regional"][0]["confirmedCasesForeign"],
        discharged: json["data"]["regional"][0]["discharged"],
        deaths: json["data"]["regional"][0]["deaths"],
        totalConfirmed: json["data"]["regional"][0]["totalConfirmed"]
    );
  }
  factory COVID19Data.fromJson1(Map<String,dynamic> json){
    return COVID19Data(
        loc: json["data"]["regional"][1]["loc"],
        confirmedCasesIndian: json["data"]["regional"][1]["confirmedCasesIndian"],
        confirmedCasesForeign: json["data"]["regional"][1]["confirmedCasesForeign"],
        discharged: json["data"]["regional"][1]["discharged"],
        deaths: json["data"]["regional"][1]["deaths"],
        totalConfirmed: json["data"]["regional"][1]["totalConfirmed"]
    );
  }
  factory COVID19Data.fromJson2(Map<String,dynamic> json){
    return COVID19Data(
        loc: json["data"]["regional"][2]["loc"],
        confirmedCasesIndian: json["data"]["regional"][2]["confirmedCasesIndian"],
        confirmedCasesForeign: json["data"]["regional"][2]["confirmedCasesForeign"],
        discharged: json["data"]["regional"][2]["discharged"],
        deaths: json["data"]["regional"][2]["deaths"],
        totalConfirmed: json["data"]["regional"][2]["totalConfirmed"]
    );
  }
  factory COVID19Data.fromJson3(Map<String,dynamic> json){
    return COVID19Data(
        loc: json["data"]["regional"][3]["loc"],
        confirmedCasesIndian: json["data"]["regional"][3]["confirmedCasesIndian"],
        confirmedCasesForeign: json["data"]["regional"][3]["confirmedCasesForeign"],
        discharged: json["data"]["regional"][3]["discharged"],
        deaths: json["data"]["regional"][3]["deaths"],
        totalConfirmed: json["data"]["regional"][3]["totalConfirmed"]
    );
  }
  factory COVID19Data.fromJson4(Map<String,dynamic> json){
    return COVID19Data(
        loc: json["data"]["regional"][4]["loc"],
        confirmedCasesIndian: json["data"]["regional"][4]["confirmedCasesIndian"],
        confirmedCasesForeign: json["data"]["regional"][4]["confirmedCasesForeign"],
        discharged: json["data"]["regional"][4]["discharged"],
        deaths: json["data"]["regional"][4]["deaths"],
        totalConfirmed: json["data"]["regional"][4]["totalConfirmed"]
    );
  }
  factory COVID19Data.fromJson5(Map<String,dynamic> json){
    return COVID19Data(
        loc: json["data"]["regional"][5]["loc"],
        confirmedCasesIndian: json["data"]["regional"][5]["confirmedCasesIndian"],
        confirmedCasesForeign: json["data"]["regional"][5]["confirmedCasesForeign"],
        discharged: json["data"]["regional"][5]["discharged"],
        deaths: json["data"]["regional"][5]["deaths"],
        totalConfirmed: json["data"]["regional"][5]["totalConfirmed"]
    );
  }
  factory COVID19Data.fromJson6(Map<String,dynamic> json){
    return COVID19Data(
        loc: json["data"]["regional"][6]["loc"],
        confirmedCasesIndian: json["data"]["regional"][6]["confirmedCasesIndian"],
        confirmedCasesForeign: json["data"]["regional"][6]["confirmedCasesForeign"],
        discharged: json["data"]["regional"][6]["discharged"],
        deaths: json["data"]["regional"][6]["deaths"],
        totalConfirmed: json["data"]["regional"][6]["totalConfirmed"]
    );
  }
  factory COVID19Data.fromJson7(Map<String,dynamic> json){
    return COVID19Data(
        loc: json["data"]["regional"][11]["loc"],
        confirmedCasesIndian: json["data"]["regional"][11]["confirmedCasesIndian"],
        confirmedCasesForeign: json["data"]["regional"][11]["confirmedCasesForeign"],
        discharged: json["data"]["regional"][11]["discharged"],
        deaths: json["data"]["regional"][11]["deaths"],
        totalConfirmed: json["data"]["regional"][11]["totalConfirmed"]
    );
  }
  factory COVID19Data.fromJson8(Map<String,dynamic> json){
    return COVID19Data(
        loc: json["data"]["regional"][8]["loc"],
        confirmedCasesIndian: json["data"]["regional"][8]["confirmedCasesIndian"],
        confirmedCasesForeign: json["data"]["regional"][8]["confirmedCasesForeign"],
        discharged: json["data"]["regional"][8]["discharged"],
        deaths: json["data"]["regional"][8]["deaths"],
        totalConfirmed: json["data"]["regional"][8]["totalConfirmed"]
    );
  }
  factory COVID19Data.fromJson9(Map<String,dynamic> json){
    return COVID19Data(
        loc: json["data"]["regional"][9]["loc"],
        confirmedCasesIndian: json["data"]["regional"][9]["confirmedCasesIndian"],
        confirmedCasesForeign: json["data"]["regional"][9]["confirmedCasesForeign"],
        discharged: json["data"]["regional"][9]["discharged"],
        deaths: json["data"]["regional"][9]["deaths"],
        totalConfirmed: json["data"]["regional"][9]["totalConfirmed"]
    );
  }
  factory COVID19Data.fromJson10(Map<String,dynamic> json){
    return COVID19Data(
        loc: json["data"]["regional"][10]["loc"],
        confirmedCasesIndian: json["data"]["regional"][10]["confirmedCasesIndian"],
        confirmedCasesForeign: json["data"]["regional"][10]["confirmedCasesForeign"],
        discharged: json["data"]["regional"][10]["discharged"],
        deaths: json["data"]["regional"][10]["deaths"],
        totalConfirmed: json["data"]["regional"][10]["totalConfirmed"]
    );
  }
}
