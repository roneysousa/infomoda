unit uRelPlanej;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables;

type
  TfrmRelPlanej = class(TForm)
    qrPlanejamento: TQuickRep;
    TitleBand1: TQRBand;
    PageHeaderBand1: TQRBand;
    QRDBImage1: TQRDBImage;
    QRLabel6: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape12: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    txtQTPRIM: TQRLabel;
    txtQTSEGU: TQRLabel;
    txtQTQUAT: TQRLabel;
    txtQTTERC: TQRLabel;
    txtTOTAL: TQRLabel;
    QRLabel10: TQRLabel;
    txtPeriodo: TQRLabel;
    txtQTPROP: TQRLabel;
    txtQTPROS: TQRLabel;
    txtQTPROQ: TQRLabel;
    txtQTPROT: TQRLabel;
    txTOTPROD: TQRLabel;
    txtESTPRI: TQRLabel;
    txtESTSEG: TQRLabel;
    txtESTTER: TQRLabel;
    txtESTQUA: TQRLabel;
    QRLabel5: TQRLabel;
    tbSemanas: TTable;
    tbProdSemana: TTable;
    tbSemanasSEM_NRSEMA: TStringField;
    tbSemanasSEM_NMDESC: TStringField;
    tbSemanasSEM_QTSEMA: TFloatField;
    dsSemanas: TDataSource;
    tbProdSemanaISM_NRSEQU: TAutoIncField;
    tbProdSemanaISM_NRSEMA: TStringField;
    tbProdSemanaISM_CDPROD: TStringField;
    tbProdSemanaISM_QTPROD: TFloatField;
    qryNMProdutos: TQuery;
    tbProdSemanaISM_NMPROD: TStringField;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    SummaryBand1: TQRBand;
    QRExpr1: TQRExpr;
    QRLabel14: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPlanej: TfrmRelPlanej;

implementation

Uses udmInfoModa;

{$R *.dfm}

end.
