unit uRelPedidosPeriodo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, DBTables, DB, QRCtrls;

type
  TfrmRelPedidosPediodo = class(TForm)
    qrPedidos: TQuickRep;
    PageHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    qryPedidos: TQuery;
    qryPedidosPED_NRPEDI: TStringField;
    qryPedidosPED_QTPEDI: TFloatField;
    qryPedidosPED_QTATEN: TFloatField;
    qryPedidosPED_DTPEDI: TDateField;
    qryPedidosPED_HOPEDI: TStringField;
    qryPedidosPED_TOPEDI: TCurrencyField;
    qryPedidosPED_CDVEND: TStringField;
    qryPedidosPED_NRLOTE: TStringField;
    qryPedidosPED_FLLOTE: TStringField;
    qryPedidosPED_FLSITU: TStringField;
    qryPedidosPED_CDCLIE: TStringField;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    qryCliente: TQuery;
    qryClienteCLI_CDCLIE: TStringField;
    qryClienteCLI_NMCLIE: TStringField;
    qryPedidosPED_NMCLIE: TStringField;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    qryPedidosPED_DTENTR: TDateField;
    qryPedidosPED_QTDIAS: TFloatField;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    SummaryBand1: TQRBand;
    qryJeans: TQuery;
    qryMalha: TQuery;
    QRLabel11: TQRLabel;
    txtPeriodo: TQRLabel;
    QRLabel12: TQRLabel;
    QRExpr1: TQRExpr;
    QRShape1: TQRShape;
    txtUSUARIO: TQRLabel;
    QRDBImage1: TQRDBImage;
    QRSysData3: TQRSysData;
    QRExpr2: TQRExpr;
    QRLabel8: TQRLabel;
    qryPedidosPED_ORDSER: TStringField;
    procedure qryPedidosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPedidosPediodo: TfrmRelPedidosPediodo;

implementation

Uses udmInfoModa;

{$R *.dfm}

procedure TfrmRelPedidosPediodo.qryPedidosCalcFields(DataSet: TDataSet);
begin
     qryPedidosPED_DTENTR.Value := IncMonth(qryPedidosPED_DTPEDI.Value,1);
     qryPedidosPED_QTDIAS.Value := Date()- qryPedidosPED_DTENTR.Value;
end;

end.
