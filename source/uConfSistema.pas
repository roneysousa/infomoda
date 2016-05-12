unit uConfSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, Buttons, DBCtrls, DB, Mask,
  ExtDlgs;

type
  TfrmConfigSistema = class(TForm)
    pnlSuperior: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    tbsBasico: TTabSheet;
    Label1: TLabel;
    dbeNMEMPR: TDBEdit;
    dsParametros: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBImage1: TDBImage;
    DBText2: TDBText;
    DBComboBox1: TDBComboBox;
    btEditar: TSpeedButton;
    spOpen: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    btGravar: TSpeedButton;
    btCancelar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    TabSheet1: TTabSheet;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    spFechar: TSpeedButton;
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dsParametrosStateChange(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure spOpenClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure spFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfigSistema: TfrmConfigSistema;

implementation

uses udmInfoModa,uFuncoes;

{$R *.dfm}

procedure TfrmConfigSistema.btGravarClick(Sender: TObject);
begin
     If (dsParametros.State = dsEdit) Then
         dmInfoModa.tbParametros.Post;
end;

procedure TfrmConfigSistema.btCancelarClick(Sender: TObject);
begin
     dmInfoModa.tbParametros.Cancel;
end;

procedure TfrmConfigSistema.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TfrmConfigSistema.dsParametrosStateChange(Sender: TObject);
begin
      btEditar.Enabled   :=  dsParametros.State in [dsBrowse];
      spFechar.Enabled   :=  dsParametros.State in [dsBrowse];
      spOpen.Enabled     :=  dsParametros.State in [dsEdit];
      //
      btGravar.Enabled   :=  dsParametros.State in [dsEdit];
      btCancelar.Enabled :=  dsParametros.State in [dsEdit];
end;

procedure TfrmConfigSistema.btEditarClick(Sender: TObject);
begin
     dmInfoModa.tbParametros.Edit;
     If (PageControl1.ActivePage = tbsBasico) Then
         dbeNMEMPR.SetFocus;
     {If (PageControl1.ActivePage = tbsOutros) Then
         dbeQTATRA.SetFocus;}
end;

procedure TfrmConfigSistema.spOpenClick(Sender: TObject);
var
   BMP: TBitMap;
begin
     If not (dsParametros.State in [dsEdit]) Then
            dmInfoModa.tbParametros.Edit;
     //
     BMP := TBitMap.Create;
     If OpenPictureDialog1.Execute then
     begin
          If (dsParametros.State in [dsEdit]) then
          begin
               BMP.LoadFromFile(OpenPictureDialog1.FileName);
               dmInfoModa.tbParametros.FieldByName('PAR_IMLOGO').Assign(BMP);
          end;
     end;
end;

procedure TfrmConfigSistema.SpeedButton1Click(Sender: TObject);
begin
{    uFuncoes.Grava_Imagem_JPEG(dmInfoModa.tbParametros,
       dmInfoModa.tbParametrosPAR_IMLOG2 , image1,
    OpenPictureDialog2);}
end;

procedure TfrmConfigSistema.FormActivate(Sender: TObject);
begin
     PageControl1.ActivePage := tbsBasico; 
end;

procedure TfrmConfigSistema.spFecharClick(Sender: TObject);
begin
     Close;
end;

end.
