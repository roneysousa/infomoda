unit uRelImpressaoPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables,jpeg;

type
  TfrmRelModelo = class(TForm)
    qrImpressaoPedido: TQuickRep;
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape3: TQRShape;
    QRLabel9: TQRLabel;
    QRShape4: TQRShape;
    QRLabel10: TQRLabel;
    QRShape5: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape8: TQRShape;
    QRLabel15: TQRLabel;
    QRShape9: TQRShape;
    QRLabel16: TQRLabel;
    QRShape10: TQRShape;
    QRLabel18: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel20: TQRLabel;
    QRShape13: TQRShape;
    QRShape15: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRShape14: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel17: TQRLabel;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    qryRelModelo: TQuery;
    QRBand1: TQRBand;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRLabel44: TQRLabel;
    QRLabel52: TQRLabel;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape86: TQRShape;
    QRShape87: TQRShape;
    QRShape88: TQRShape;
    QRShape89: TQRShape;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRShape103: TQRShape;
    QRLabel54: TQRLabel;
    QRShape104: TQRShape;
    QRShape105: TQRShape;
    QRShape106: TQRShape;
    QRShape107: TQRShape;
    QRShape108: TQRShape;
    QRShape109: TQRShape;
    QRShape124: TQRShape;
    QRLabel55: TQRLabel;
    QRShape125: TQRShape;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRShape129: TQRShape;
    QRLabel59: TQRLabel;
    QRShape130: TQRShape;
    QRShape131: TQRShape;
    QRShape132: TQRShape;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRShape134: TQRShape;
    QRLabel69: TQRLabel;
    QRShape136: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRLabel35: TQRLabel;
    QRShape34: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRLabel48: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel68: TQRLabel;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRLabel71: TQRLabel;
    QRLabel72: TQRLabel;
    QRLabel74: TQRLabel;
    QRLabel73: TQRLabel;
    QRLabel75: TQRLabel;
    QRLabel76: TQRLabel;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    QRShape61: TQRShape;
    QRLabel81: TQRLabel;
    QRLabel83: TQRLabel;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRLabel85: TQRLabel;
    QRLabel87: TQRLabel;
    QRShape69: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRLabel89: TQRLabel;
    QRShape79: TQRShape;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRShape80: TQRShape;
    QRLabel96: TQRLabel;
    QRShape135: TQRShape;
    QRShape137: TQRShape;
    QRShape138: TQRShape;
    QRShape139: TQRShape;
    QRShape140: TQRShape;
    QRShape141: TQRShape;
    QRLabel97: TQRLabel;
    QRShape142: TQRShape;
    QRLabel98: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel101: TQRLabel;
    QRShape143: TQRShape;
    QRShape144: TQRShape;
    QRShape145: TQRShape;
    QRLabel102: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel88: TQRLabel;
    QRShape147: TQRShape;
    QRShape68: TQRShape;
    QRShape146: TQRShape;
    QRLabel49: TQRLabel;
    QRShape148: TQRShape;
    QRShape149: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel70: TQRLabel;
    QRShape150: TQRShape;
    QRLabel80: TQRLabel;
    QRLabel82: TQRLabel;
    QRShape151: TQRShape;
    QRLabel84: TQRLabel;
    QRLabel90: TQRLabel;
    QRShape152: TQRShape;
    QRShape153: TQRShape;
    QRShape154: TQRShape;
    QRShape155: TQRShape;
    QRShape156: TQRShape;
    QRShape157: TQRShape;
    QRLabel91: TQRLabel;
    QRShape158: TQRShape;
    v: TQRShape;
    QRShape159: TQRShape;
    QRShape160: TQRShape;
    QRShape161: TQRShape;
    QRLabel92: TQRLabel;
    QRShape162: TQRShape;
    QRLabel104: TQRLabel;
    QRShape163: TQRShape;
    QRShape164: TQRShape;
    QRLabel105: TQRLabel;
    QRLabel106: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRLabel38: TQRLabel;
    QRImage1: TQRImage;
    QRShape165: TQRShape;
    qryItens: TQuery;
    qryProdutos: TQuery;
    txtMaterial: TQRRichText;
    txtPreco: TQRRichText;
    txtUnidade: TQRRichText;
    txtCusto: TQRRichText;
    qryItensIMP_CDMODE: TStringField;
    qryItensIMP_NRITEM: TStringField;
    qryItensIMP_MTPRIM: TStringField;
    qryItensIMP_QTMATE: TFloatField;
    qryProdutosPRO_CDPROD: TStringField;
    qryMaterial: TQuery;
    qryMaterialMAT_CDMATE: TStringField;
    qryMaterialMAT_NMMATE: TStringField;
    qryItensIMP_NMMATE: TStringField;
    qryMaterialMAT_VLCUST: TCurrencyField;
    qryItensIMP_VLCUST: TCurrencyField;
    QRDBRichText1: TQRDBRichText;
    QRShape127: TQRShape;
    QRShape128: TQRShape;
    QRShape126: TQRShape;
    QRShape168: TQRShape;
    img_Molho: TQRImage;
    img_Triangulo: TQRImage;
    img_Quadrado: TQRImage;
    img_Ferro: TQRImage;
    img_Circulo: TQRImage;
    QRImage7: TQRImage;
    QRImage8: TQRImage;
    QRImage9: TQRImage;
    QRImage10: TQRImage;
    QRImage11: TQRImage;
    qryRelModeloMDP_CDMODE: TStringField;
    qryRelModeloMDP_CDPROD: TStringField;
    qryRelModeloMDP_DTPROD: TMemoField;
    qryRelModeloMDP_IMGFRE: TGraphicField;
    qryRelModeloMDP_FLMOLH: TBooleanField;
    qryRelModeloMDP_FLTRIA: TBooleanField;
    qryRelModeloMDP_FLETIQ: TBooleanField;
    qryRelModeloMDP_FLFERR: TBooleanField;
    qryRelModeloMDP_FLSOL: TBooleanField;
    img_limpa: TQRImage;
    qryMaterialMAT_CDUNID: TStringField;
    qryItensIMP_CDUNID: TStringField;
    txtNR34: TQRMemo;
    QRLabel113: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel117: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRShape110: TQRShape;
    QRShape111: TQRShape;
    txtNR36: TQRMemo;
    txtNR38: TQRMemo;
    txtNR40_02: TQRMemo;
    txtNR42: TQRMemo;
    txtNR44: TQRMemo;
    txtNR46: TQRMemo;
    txtNR48: TQRMemo;
    txtNR50: TQRMemo;
    txtTOGRADE: TQRMemo;
    txtCor: TQRMemo;
    img_Modelo: TQRImage;
    txtTOPROD: TQRLabel;
    txtTO34: TQRLabel;
    txtTO36: TQRLabel;
    txtTO38: TQRLabel;
    txtTO40: TQRLabel;
    txtTO42: TQRLabel;
    txtTO44: TQRLabel;
    txtTO46: TQRLabel;
    txtTO48: TQRLabel;
    txtTO50: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
  private
    { Private declarations }
  public
     Procedure Le_Imagem_JPEG2(Campo:TBlobField; Foto:TQRImage);
    { Public declarations }
  end;

var
  frmRelModelo: TfrmRelModelo;

implementation

Uses udmInfoModa;

{$R *.dfm}

{ TfrmRelModelo }

procedure TfrmRelModelo.Le_Imagem_JPEG2(Campo: TBlobField; Foto: TQRImage);
var BS:TBlobStream;
    MinhaImagem:TJPEGImage;
Begin
    if Campo.AsString <> '' Then
    Begin
        BS := TBlobStream.Create((Campo as TBlobField), BMREAD);
        MinhaImagem := TJPEGImage.Create;
        MinhaImagem.LoadFromStream(BS);
        Foto.Picture.Assign(MinhaImagem);
        BS.Free;
        MinhaImagem.Free;
    End;
end;

end.