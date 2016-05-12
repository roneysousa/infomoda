unit uRelMPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TfrmRelMPS = class(TForm)
    qrMPS: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    QRDBImage1: TQRDBImage;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    txtTOTPRIM: TQRLabel;
    txtTOTSEGU: TQRLabel;
    txtTOTTERC: TQRLabel;
    txtTOTQUAR: TQRLabel;
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
    QRLabel2: TQRLabel;
    txtPERIODO: TQRLabel;
    QRLabel3: TQRLabel;
    txtNMPROD: TQRLabel;
    txtUSUARIO: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelMPS: TfrmRelMPS;

implementation

Uses udmInfoModa, uImpMPS;

{$R *.dfm}

end.
