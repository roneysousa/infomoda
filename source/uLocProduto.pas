unit uLocProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls, DB, DBTables;

type
  TfrmLocProduto = class(TForm)
    edtPROCURA: TLabeledEdit;
    BtnConfirmar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    GridDados: TDBGrid;
    dsProdutos: TDataSource;
    rdCODIGO: TRadioButton;
    rbNOME: TRadioButton;
    qryProduto: TQuery;
    qryProdutoPRO_CDPROD: TStringField;
    qryProdutoPRO_CDBARR: TStringField;
    qryProdutoPRO_NMPROD: TStringField;
    procedure edtPROCURAKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtPROCURAChange(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure edtPROCURAEnter(Sender: TObject);
    procedure rdCODIGOClick(Sender: TObject);
    procedure rbNOMEClick(Sender: TObject);
    procedure GridDadosDblClick(Sender: TObject);
    procedure GridDadosKeyPress(Sender: TObject; var Key: Char);
    procedure edtPROCURAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     M_NMFORM : Integer;
    { Public declarations }
  end;

var
  frmLocProduto: TfrmLocProduto;

implementation

Uses udmInfoModa,uFuncoes, uCadPedidos, uCadModelo, uImpMPS;

{$R *.dfm}

procedure TfrmLocProduto.edtPROCURAKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #27 then Close;
    if key = #13 then btnconfirmar.Click;
    if key = #13 then btncancelar.Click;
end;

procedure TfrmLocProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      Action := caFree;
end;

procedure TfrmLocProduto.edtPROCURAChange(Sender: TObject);
begin
     If not uFuncoes.Empty(edtPROCURA.Text) Then
     begin
         If (rdCODIGO.Checked = True) Then
         begin
              // Procura pelo codigo
              With qryProduto do
              begin
                   SQL.Clear;
                   Close;
                   Sql.add('Select PRO_CDPROD, PRO_CDBARR, PRO_NMPROD from SACPRO where PRO_CDBARR like '
                       + quotedstr(uFuncoes.StrZero(edtPROCURA.Text,13)+'%') + ' order by PRO_CDBARR');
                   Prepare;
                   Open;
              End;
         End;
         //
         If (rbNOME.Checked = True) Then
         begin
              // Procura pelo nome
              With qryProduto do
              begin
                   SQL.Clear;
                   Close;
                   Sql.add('Select PRO_CDPROD, PRO_CDBARR,PRO_NMPROD from SACPRO where PRO_NMPROD like ' + quotedstr(edtPROCURA.Text+'%') + ' order by PRO_NMPROD');
                   Prepare;
                   Open;
              End;
        End;
     End
     Else
     Begin
          With qryProduto do
          begin
               sql.clear;
               Close;
               sql.add('Select PRO_CDPROD, PRO_CDBARR,PRO_NMPROD from SACPRO order by PRO_NMPROD');
               Prepare;
               open;
          End;
     End;
end;

procedure TfrmLocProduto.BtnConfirmarClick(Sender: TObject);
Var
    M_CDPROD : String;
begin
   Try
     M_CDPROD := qryProduto.fieldByName('PRO_CDBARR').AsString;
     //
     If (M_NMFORM = 1) Then
     Begin
          frmCadModelo.edtCDPROD.Text := M_CDPROD;
     End;
     //
     If (M_NMFORM = 2) Then
     begin
         dmInfoModa.tbItensPedido.FieldByName('ITP_CDPROD').asString :=
              qryProduto.fieldByName('PRO_CDBARR').AsString;
     End;
     //
     If (M_NMFORM = 3) Then
     begin
        frmImpMPS.edtCDPROD.Text := M_CDPROD;
        frmImpMPS.lbl_NMPROD.Caption := qryProduto.fieldByName('PRO_NMPROD').AsString;
     End;   
     // Fechar janela de localizar
     close;
   Except
        ShowMessage('Erro ao selecionar produto...');
        Close;
   End;
end;

procedure TfrmLocProduto.BtnCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmLocProduto.edtPROCURAEnter(Sender: TObject);
begin
     edtPROCURA.Clear;
end;

procedure TfrmLocProduto.rdCODIGOClick(Sender: TObject);
begin
      edtPROCURA.SetFocus;
end;

procedure TfrmLocProduto.rbNOMEClick(Sender: TObject);
begin
     edtPROCURA.SetFocus;
end;

procedure TfrmLocProduto.GridDadosDblClick(Sender: TObject);
begin
     //btnconfirmar.Click;
     BtnConfirmarClick(Sender);
end;

procedure TfrmLocProduto.GridDadosKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) Then
     Begin
          Key := #0;
          BtnConfirmarClick(Sender);
     End;
end;

procedure TfrmLocProduto.edtPROCURAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (Key = VK_UP) Then
        qryProduto.Prior;
     If (Key = VK_DOWN) Then
        qryProduto.Next;
end;

procedure TfrmLocProduto.FormCreate(Sender: TObject);
begin
   With qryProduto do
   begin
         sql.clear;
         Close;
         sql.add('Select PRO_CDPROD, PRO_CDBARR,PRO_NMPROD from SACPRO order by PRO_NMPROD');
         Prepare;
         open;
   End;
end;

end.
