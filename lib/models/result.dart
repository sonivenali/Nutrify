class Result {
  String uri;
  String calories;
  String totalWeight;
  List<String> dietLabels;
  List<String> healthLabels;
  List<String> cautions;
  TotalNutrients totalNutrients;
  TotalDaily totalDaily;

  Result(
      {this.uri,
        this.calories,
        this.totalWeight,
        this.dietLabels,
        this.healthLabels,
        this.cautions,
        this.totalNutrients,
        this.totalDaily});

  Result.fromJson(Map<String, dynamic> json) {
    uri = json['uri'].toString();
    calories = json['calories'].toString();
    totalWeight = json['totalWeight'].toString();
    dietLabels = json['dietLabels'].cast<String>();
    healthLabels = json['healthLabels'].cast<String>();
    cautions = json['cautions'].cast<String>();
    totalNutrients = json['totalNutrients'] != null
        ? new TotalNutrients.fromJson(json['totalNutrients'])
        : null;
    totalDaily = json['totalDaily'] != null
        ? new TotalDaily.fromJson(json['totalDaily'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uri'] = this.uri;
    data['calories'] = this.calories;
    data['totalWeight'] = this.totalWeight;
    data['dietLabels'] = this.dietLabels;
    data['healthLabels'] = this.healthLabels;
    data['cautions'] = this.cautions;
    if (this.totalNutrients != null) {
      data['totalNutrients'] = this.totalNutrients.toJson();
    }
    if (this.totalDaily != null) {
      data['totalDaily'] = this.totalDaily.toJson();
    }
    return data;
  }
}

class TotalNutrients {
  ENERCKCAL eNERCKCAL;
  ENERCKCAL fAT;
  ENERCKCAL fASAT;
  ENERCKCAL fAMS;
  ENERCKCAL fAPU;
  ENERCKCAL cHOCDF;
  ENERCKCAL fIBTG;
  ENERCKCAL sUGAR;
  ENERCKCAL pROCNT;
  CHOLE cHOLE;
  ENERCKCAL nA;
  ENERCKCAL cA;
  ENERCKCAL mG;
  ENERCKCAL k;
  ENERCKCAL fE;
  ENERCKCAL zN;
  ENERCKCAL p;
  ENERCKCAL vITARAE;
  ENERCKCAL vITC;
  ENERCKCAL tHIA;
  ENERCKCAL rIBF;
  ENERCKCAL nIA;
  ENERCKCAL vITB6A;
  ENERCKCAL fOLDFE;
  ENERCKCAL fOLFD;
  CHOLE fOLAC;
  CHOLE vITB12;
  CHOLE vITD;
  ENERCKCAL tOCPHA;
  ENERCKCAL vITK1;
  ENERCKCAL wATER;

  TotalNutrients(
      {this.eNERCKCAL,
        this.fAT,
        this.fASAT,
        this.fAMS,
        this.fAPU,
        this.cHOCDF,
        this.fIBTG,
        this.sUGAR,
        this.pROCNT,
        this.cHOLE,
        this.nA,
        this.cA,
        this.mG,
        this.k,
        this.fE,
        this.zN,
        this.p,
        this.vITARAE,
        this.vITC,
        this.tHIA,
        this.rIBF,
        this.nIA,
        this.vITB6A,
        this.fOLDFE,
        this.fOLFD,
        this.fOLAC,
        this.vITB12,
        this.vITD,
        this.tOCPHA,
        this.vITK1,
        this.wATER});

  TotalNutrients.fromJson(Map<String, dynamic> json) {
    eNERCKCAL = json['ENERC_KCAL'] != null
        ? new ENERCKCAL.fromJson(json['ENERC_KCAL'])
        : null;
    fAT = json['FAT'] != null ? new ENERCKCAL.fromJson(json['FAT']) : null;
    fASAT =
    json['FASAT'] != null ? new ENERCKCAL.fromJson(json['FASAT']) : null;
    fAMS = json['FAMS'] != null ? new ENERCKCAL.fromJson(json['FAMS']) : null;
    fAPU = json['FAPU'] != null ? new ENERCKCAL.fromJson(json['FAPU']) : null;
    cHOCDF =
    json['CHOCDF'] != null ? new ENERCKCAL.fromJson(json['CHOCDF']) : null;
    fIBTG =
    json['FIBTG'] != null ? new ENERCKCAL.fromJson(json['FIBTG']) : null;
    sUGAR =
    json['SUGAR'] != null ? new ENERCKCAL.fromJson(json['SUGAR']) : null;
    pROCNT =
    json['PROCNT'] != null ? new ENERCKCAL.fromJson(json['PROCNT']) : null;
    cHOLE = json['CHOLE'] != null ? new CHOLE.fromJson(json['CHOLE']) : null;
    nA = json['NA'] != null ? new ENERCKCAL.fromJson(json['NA']) : null;
    cA = json['CA'] != null ? new ENERCKCAL.fromJson(json['CA']) : null;
    mG = json['MG'] != null ? new ENERCKCAL.fromJson(json['MG']) : null;
    k = json['K'] != null ? new ENERCKCAL.fromJson(json['K']) : null;
    fE = json['FE'] != null ? new ENERCKCAL.fromJson(json['FE']) : null;
    zN = json['ZN'] != null ? new ENERCKCAL.fromJson(json['ZN']) : null;
    p = json['P'] != null ? new ENERCKCAL.fromJson(json['P']) : null;
    vITARAE = json['VITA_RAE'] != null
        ? new ENERCKCAL.fromJson(json['VITA_RAE'])
        : null;
    vITC = json['VITC'] != null ? new ENERCKCAL.fromJson(json['VITC']) : null;
    tHIA = json['THIA'] != null ? new ENERCKCAL.fromJson(json['THIA']) : null;
    rIBF = json['RIBF'] != null ? new ENERCKCAL.fromJson(json['RIBF']) : null;
    nIA = json['NIA'] != null ? new ENERCKCAL.fromJson(json['NIA']) : null;
    vITB6A =
    json['VITB6A'] != null ? new ENERCKCAL.fromJson(json['VITB6A']) : null;
    fOLDFE =
    json['FOLDFE'] != null ? new ENERCKCAL.fromJson(json['FOLDFE']) : null;
    fOLFD =
    json['FOLFD'] != null ? new ENERCKCAL.fromJson(json['FOLFD']) : null;
    fOLAC = json['FOLAC'] != null ? new CHOLE.fromJson(json['FOLAC']) : null;
    vITB12 = json['VITB12'] != null ? new CHOLE.fromJson(json['VITB12']) : null;
    vITD = json['VITD'] != null ? new CHOLE.fromJson(json['VITD']) : null;
    tOCPHA =
    json['TOCPHA'] != null ? new ENERCKCAL.fromJson(json['TOCPHA']) : null;
    vITK1 =
    json['VITK1'] != null ? new ENERCKCAL.fromJson(json['VITK1']) : null;
    wATER =
    json['WATER'] != null ? new ENERCKCAL.fromJson(json['WATER']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eNERCKCAL != null) {
      data['ENERC_KCAL'] = this.eNERCKCAL.toJson();
    }
    if (this.fAT != null) {
      data['FAT'] = this.fAT.toJson();
    }
    if (this.fASAT != null) {
      data['FASAT'] = this.fASAT.toJson();
    }
    if (this.fAMS != null) {
      data['FAMS'] = this.fAMS.toJson();
    }
    if (this.fAPU != null) {
      data['FAPU'] = this.fAPU.toJson();
    }
    if (this.cHOCDF != null) {
      data['CHOCDF'] = this.cHOCDF.toJson();
    }
    if (this.fIBTG != null) {
      data['FIBTG'] = this.fIBTG.toJson();
    }
    if (this.sUGAR != null) {
      data['SUGAR'] = this.sUGAR.toJson();
    }
    if (this.pROCNT != null) {
      data['PROCNT'] = this.pROCNT.toJson();
    }
    if (this.cHOLE != null) {
      data['CHOLE'] = this.cHOLE.toJson();
    }
    if (this.nA != null) {
      data['NA'] = this.nA.toJson();
    }
    if (this.cA != null) {
      data['CA'] = this.cA.toJson();
    }
    if (this.mG != null) {
      data['MG'] = this.mG.toJson();
    }
    if (this.k != null) {
      data['K'] = this.k.toJson();
    }
    if (this.fE != null) {
      data['FE'] = this.fE.toJson();
    }
    if (this.zN != null) {
      data['ZN'] = this.zN.toJson();
    }
    if (this.p != null) {
      data['P'] = this.p.toJson();
    }
    if (this.vITARAE != null) {
      data['VITA_RAE'] = this.vITARAE.toJson();
    }
    if (this.vITC != null) {
      data['VITC'] = this.vITC.toJson();
    }
    if (this.tHIA != null) {
      data['THIA'] = this.tHIA.toJson();
    }
    if (this.rIBF != null) {
      data['RIBF'] = this.rIBF.toJson();
    }
    if (this.nIA != null) {
      data['NIA'] = this.nIA.toJson();
    }
    if (this.vITB6A != null) {
      data['VITB6A'] = this.vITB6A.toJson();
    }
    if (this.fOLDFE != null) {
      data['FOLDFE'] = this.fOLDFE.toJson();
    }
    if (this.fOLFD != null) {
      data['FOLFD'] = this.fOLFD.toJson();
    }
    if (this.fOLAC != null) {
      data['FOLAC'] = this.fOLAC.toJson();
    }
    if (this.vITB12 != null) {
      data['VITB12'] = this.vITB12.toJson();
    }
    if (this.vITD != null) {
      data['VITD'] = this.vITD.toJson();
    }
    if (this.tOCPHA != null) {
      data['TOCPHA'] = this.tOCPHA.toJson();
    }
    if (this.vITK1 != null) {
      data['VITK1'] = this.vITK1.toJson();
    }
    if (this.wATER != null) {
      data['WATER'] = this.wATER.toJson();
    }
    return data;
  }
}

class ENERCKCAL {
  String label;
  double quantity;
  String unit;

  ENERCKCAL({this.label, this.quantity, this.unit});

  ENERCKCAL.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    quantity = json['quantity'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['quantity'] = this.quantity;
    data['unit'] = this.unit;
    return data;
  }
}

class CHOLE {
  String label;
  int quantity;
  String unit;

  CHOLE({this.label, this.quantity, this.unit});

  CHOLE.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    quantity = json['quantity'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['quantity'] = this.quantity;
    data['unit'] = this.unit;
    return data;
  }
}

class TotalDaily {
  ENERCKCAL eNERCKCAL;
  ENERCKCAL fAT;
  ENERCKCAL fASAT;
  ENERCKCAL cHOCDF;
  ENERCKCAL fIBTG;
  ENERCKCAL pROCNT;
  CHOLE cHOLE;
  ENERCKCAL nA;
  ENERCKCAL cA;
  ENERCKCAL mG;
  ENERCKCAL k;
  ENERCKCAL fE;
  ENERCKCAL zN;
  ENERCKCAL p;
  ENERCKCAL vITARAE;
  ENERCKCAL vITC;
  ENERCKCAL tHIA;
  ENERCKCAL rIBF;
  ENERCKCAL nIA;
  ENERCKCAL vITB6A;
  ENERCKCAL fOLDFE;
  CHOLE vITB12;
  CHOLE vITD;
  ENERCKCAL tOCPHA;
  ENERCKCAL vITK1;

  TotalDaily(
      {this.eNERCKCAL,
        this.fAT,
        this.fASAT,
        this.cHOCDF,
        this.fIBTG,
        this.pROCNT,
        this.cHOLE,
        this.nA,
        this.cA,
        this.mG,
        this.k,
        this.fE,
        this.zN,
        this.p,
        this.vITARAE,
        this.vITC,
        this.tHIA,
        this.rIBF,
        this.nIA,
        this.vITB6A,
        this.fOLDFE,
        this.vITB12,
        this.vITD,
        this.tOCPHA,
        this.vITK1});

  TotalDaily.fromJson(Map<String, dynamic> json) {
    eNERCKCAL = json['ENERC_KCAL'] != null
        ? new ENERCKCAL.fromJson(json['ENERC_KCAL'])
        : null;
    fAT = json['FAT'] != null ? new ENERCKCAL.fromJson(json['FAT']) : null;
    fASAT =
    json['FASAT'] != null ? new ENERCKCAL.fromJson(json['FASAT']) : null;
    cHOCDF =
    json['CHOCDF'] != null ? new ENERCKCAL.fromJson(json['CHOCDF']) : null;
    fIBTG =
    json['FIBTG'] != null ? new ENERCKCAL.fromJson(json['FIBTG']) : null;
    pROCNT =
    json['PROCNT'] != null ? new ENERCKCAL.fromJson(json['PROCNT']) : null;
    cHOLE = json['CHOLE'] != null ? new CHOLE.fromJson(json['CHOLE']) : null;
    nA = json['NA'] != null ? new ENERCKCAL.fromJson(json['NA']) : null;
    cA = json['CA'] != null ? new ENERCKCAL.fromJson(json['CA']) : null;
    mG = json['MG'] != null ? new ENERCKCAL.fromJson(json['MG']) : null;
    k = json['K'] != null ? new ENERCKCAL.fromJson(json['K']) : null;
    fE = json['FE'] != null ? new ENERCKCAL.fromJson(json['FE']) : null;
    zN = json['ZN'] != null ? new ENERCKCAL.fromJson(json['ZN']) : null;
    p = json['P'] != null ? new ENERCKCAL.fromJson(json['P']) : null;
    vITARAE = json['VITA_RAE'] != null
        ? new ENERCKCAL.fromJson(json['VITA_RAE'])
        : null;
    vITC = json['VITC'] != null ? new ENERCKCAL.fromJson(json['VITC']) : null;
    tHIA = json['THIA'] != null ? new ENERCKCAL.fromJson(json['THIA']) : null;
    rIBF = json['RIBF'] != null ? new ENERCKCAL.fromJson(json['RIBF']) : null;
    nIA = json['NIA'] != null ? new ENERCKCAL.fromJson(json['NIA']) : null;
    vITB6A =
    json['VITB6A'] != null ? new ENERCKCAL.fromJson(json['VITB6A']) : null;
    fOLDFE =
    json['FOLDFE'] != null ? new ENERCKCAL.fromJson(json['FOLDFE']) : null;
    vITB12 = json['VITB12'] != null ? new CHOLE.fromJson(json['VITB12']) : null;
    vITD = json['VITD'] != null ? new CHOLE.fromJson(json['VITD']) : null;
    tOCPHA =
    json['TOCPHA'] != null ? new ENERCKCAL.fromJson(json['TOCPHA']) : null;
    vITK1 =
    json['VITK1'] != null ? new ENERCKCAL.fromJson(json['VITK1']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eNERCKCAL != null) {
      data['ENERC_KCAL'] = this.eNERCKCAL.toJson();
    }
    if (this.fAT != null) {
      data['FAT'] = this.fAT.toJson();
    }
    if (this.fASAT != null) {
      data['FASAT'] = this.fASAT.toJson();
    }
    if (this.cHOCDF != null) {
      data['CHOCDF'] = this.cHOCDF.toJson();
    }
    if (this.fIBTG != null) {
      data['FIBTG'] = this.fIBTG.toJson();
    }
    if (this.pROCNT != null) {
      data['PROCNT'] = this.pROCNT.toJson();
    }
    if (this.cHOLE != null) {
      data['CHOLE'] = this.cHOLE.toJson();
    }
    if (this.nA != null) {
      data['NA'] = this.nA.toJson();
    }
    if (this.cA != null) {
      data['CA'] = this.cA.toJson();
    }
    if (this.mG != null) {
      data['MG'] = this.mG.toJson();
    }
    if (this.k != null) {
      data['K'] = this.k.toJson();
    }
    if (this.fE != null) {
      data['FE'] = this.fE.toJson();
    }
    if (this.zN != null) {
      data['ZN'] = this.zN.toJson();
    }
    if (this.p != null) {
      data['P'] = this.p.toJson();
    }
    if (this.vITARAE != null) {
      data['VITA_RAE'] = this.vITARAE.toJson();
    }
    if (this.vITC != null) {
      data['VITC'] = this.vITC.toJson();
    }
    if (this.tHIA != null) {
      data['THIA'] = this.tHIA.toJson();
    }
    if (this.rIBF != null) {
      data['RIBF'] = this.rIBF.toJson();
    }
    if (this.nIA != null) {
      data['NIA'] = this.nIA.toJson();
    }
    if (this.vITB6A != null) {
      data['VITB6A'] = this.vITB6A.toJson();
    }
    if (this.fOLDFE != null) {
      data['FOLDFE'] = this.fOLDFE.toJson();
    }
    if (this.vITB12 != null) {
      data['VITB12'] = this.vITB12.toJson();
    }
    if (this.vITD != null) {
      data['VITD'] = this.vITD.toJson();
    }
    if (this.tOCPHA != null) {
      data['TOCPHA'] = this.tOCPHA.toJson();
    }
    if (this.vITK1 != null) {
      data['VITK1'] = this.vITK1.toJson();
    }
    return data;
  }
}
