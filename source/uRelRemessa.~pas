unit uRelRemessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DB, DBTables, QRCtrls;

type
  TfrmRelRemessa = class(TForm)
    qrRemessa: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    qryRemessa: TQuery;
    qryCor: TQuery;
    qryRemessaRIT_CDPROD: TStringField;
    qryRemessaRIT_CDTAMA: TStringField;
    qryRemessaRIT_NRLOTE: TStringField;
    qryRemessaRIT_CODCOR: TStringField;
    qryRemessaRIT_QTPROD: TFloatField;
    qryRemessaRIT_NOMCOR: TStringField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    tbRemessa: TTable;
    tbREM: TTable;
    dsRemessa: TDataSource;
    QRSubDetail1: TQRSubDetail;
    QRDBText5: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText1: TQRDBText;
    tbRemessaRIT_CDPROD: TStringField;
    tbRemessaRIT_CDTAMA: TStringField;
    tbRemessaRIT_NRLOTE: TStringField;
    tbRemessaRIT_CODCOR: TStringField;
    tbRemessaRIT_QTPROD: TFloatField;
    tbRemessaRIT_NOMCOR: TStringField;
    QRLabel7: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRLabel8: TQRLabel;
    txtNRPEDIDO: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    tbREMREM_NRSEQU: TAutoIncField;
    tbREMREM_CDPROD: TStringField;
    tbREMREM_QTPROD: TFloatField;
    tbREMREM_QTPRO2: TFloatField;
    qryItensRem: TQuery;
    qryItensRemRIT_TOPROD: TFloatField;
    SummaryBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr2: TQRExpr;
    txtTOTPEC: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    txtUSUARIO: TQRLabel;
    txtNRLOTE: TQRLabel;
    procedure tbREMCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelRemessa: TfrmRelRemessa;
  W_TOPROD : Double;

implementation

Uses udmInfoModa;

{$R *.dfm}

procedure TfrmRelRemessa.tbREMCalcFields(DataSet: TDataSet);
begin
     //
     With qryItensRem do
     begin
          Close;
          //
          ParamByName('pCDPROD').AsString := tbREM.FieldByName('REM_CDPROD').AsString;
          //
          Prepare;
          Open;
     End;
     ///
     tbREM.FieldByName('REM_QTPRO2').AsFloat := qryItensRem.FieldByName('RIT_TOPROD').AsFloat;
     //W_TOPROD := W_TOPROD+
end;

end.
