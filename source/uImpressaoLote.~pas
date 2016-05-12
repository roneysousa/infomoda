unit uImpressaoLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, DB, StdCtrls, Buttons;

type
  TfrmImpressaoLote = class(TForm)
    Panel2: TPanel;
    pnlSuperior: TPanel;
    pnlGrid: TPanel;
    pnlInferior: TPanel;
    GridPedidos: TDBGrid;
    dsModelo: TDataSource;
    edtNRLOTE: TEdit;
    lbl_NRLOTE: TLabel;
    btVisualizar: TBitBtn;
    btFechar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure edtNRLOTEKeyPress(Sender: TObject; var Key: Char);
    procedure edtNRLOTEChange(Sender: TObject);
    procedure dsModeloDataChange(Sender: TObject; Field: TField);
    procedure edtNRLOTEEnter(Sender: TObject);
    procedure edtNRLOTEExit(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpressaoLote: TfrmImpressaoLote;
  M_NRLOTE, M_NRPEDI, M_CDMODE, M_CDPROD : String;

implementation

uses udmInfoModa, uFuncoes, uPrincipal, uRelImpressaoPedido;

{$R *.dfm}

procedure TfrmImpressaoLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmInfoModa.qryPedido.Close;
     dmInfoModa.qryModelo.Close;
     dmInfoModa.qryProduto.Close;
     // 
     uFuncoes.Limpar_Status;
     //
     Action := caFree;
end;

procedure TfrmImpressaoLote.FormActivate(Sender: TObject);
begin
     //
     GridPedidos.Align := alClient;
end;

procedure TfrmImpressaoLote.edtNRLOTEKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     If (Key = #13) and not uFuncoes.Empty(edtNRLOTE.Text) Then
     begin
          Key := #13;
          M_CDPROD := uFuncoes.StrZero(edtNRLOTE.Text,13);
          //
          If not (dmInfoModa.qryModelo.Locate('MDP_CDPROD',M_CDPROD,[]) ) Then
          begin
                Application.MessageBox('Código não cadastro.',
                       'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                Exit;
          End;
          {With dmInfoModa.qryModelo do
          begin
               SQL.Clear;
               Close;
               Sql.add('Select * from SACMDP Where MDP_CDPROD like' + quotedstr(M_CDPROD+'%'));
               //Sql.add('Select * from SACMDP Where MDP_CDPROD like' + quotedstr(M_CDMODE+'%'));
               ExecSQL;
               Open;
          End;}
     End;
end;

procedure TfrmImpressaoLote.edtNRLOTEChange(Sender: TObject);
begin
     If not uFuncoes.Empty(edtNRLOTE.Text) Then
     begin
          dmInfoModa.qryModelo.Locate('MDP_CDPROD',uFuncoes.StrZero(edtNRLOTE.Text,13),[loPartialKey]);
     End;
     {Else
     begin
          With dmInfoModa.qryModelo do
          begin
               SQL.Clear;
               Close;
               Sql.add('Select * from SACMDP');
               ExecSQL;
               Open;
          End;
     End;}
end;

procedure TfrmImpressaoLote.dsModeloDataChange(Sender: TObject;
  Field: TField);
begin
     frmPrincipal.Info.Panels[2].Text := ' Registro: ' + IntToStr(dsModelo.DataSet.RecNo) +
                          ' de ' + IntToStr(dsModelo.DataSet.RecordCount);
end;

procedure TfrmImpressaoLote.edtNRLOTEEnter(Sender: TObject);
begin
     edtNRLOTE.Clear;
end;

procedure TfrmImpressaoLote.edtNRLOTEExit(Sender: TObject);
begin
     {If not uFuncoes.Empty(edtNRLOTE.Text) Then
       edtNRLOTE.Text := uFuncoes.StrZero(edtNRLOTE.Text,13);}
end;

procedure TfrmImpressaoLote.btVisualizarClick(Sender: TObject);
Var
   M_VLCUST : Real;
   M_NRITEM : Integer;
begin
  Try
     btVisualizar.Enabled := False;
     Application.CreateForm(TfrmRelModelo, frmRelModelo);
     //
     M_VLCUST := 0;
     M_NRITEM := 1;
     //M_NRPEDI := dmInfoModa.qryPedido.FieldByName('PED_NRPEDI').AsString;
     M_CDMODE := dmInfoModa.qryModelo.FieldByName('MDP_CDMODE').AsString;
     //
     With frmRelModelo.qryRelModelo do
     Begin
          Close;
          ParamByName('pCDMODE').AsString := M_CDMODE;
          ExecSQL;
          Open;
     End;
     //
     With frmRelModelo.qryItens do
     Begin
          SQL.Clear;
          Close;
          Sql.add('Select * from SACIMP Where IMP_CDMODE='+ quotedstr(M_CDMODE) + ' order by IMP_NRITEM');
          ExecSQL;
          Open;
     End;
     //
     While not (frmRelModelo.qryItens.Eof) do
     begin
          With frmRelModelo do
          begin
                txtMaterial.Lines.Add(uFuncoes.Padl(frmRelModelo.qryItens.FieldByName('IMP_NMMATE').AsString,20));
                txtPreco.Lines.Add(FormatFloat('###,###,##0.#0',frmRelModelo.qryItens.FieldByName('IMP_VLCUST').AsFloat));
                //txtUnidade.Lines.Add(FormatFloat('###,###,##0.#0',frmRelModelo.qryItens.FieldByName('IMP_QTMATE').AsFloat));
                txtUnidade.Lines.Add(frmRelModelo.qryItens.FieldByName('IMP_CDUNID').AsString);
                M_VLCUST := frmRelModelo.qryItens.FieldByName('IMP_VLCUST').AsCurrency*frmRelModelo.qryItens.FieldByName('IMP_QTMATE').AsFloat;
                //txtCusto.Lines.Add(FormatFloat('###,###,##0.#0',M_VLCUST));
          End;
          //
          frmRelModelo.qryItens.Next;
     End;
     //
     With frmRelModelo do
     begin
         With qryRelModelo do
         begin
             If (FieldByName('MDP_FLMOLH').AsBoolean = False) Then
                 img_Molho.Picture := img_limpa.Picture;
             //
             If (FieldByName('MDP_FLTRIA').AsBoolean = False) Then
                 img_Triangulo.Picture := img_limpa.Picture;
             If (FieldByName('MDP_FLETIQ').AsBoolean = False) Then
                 img_Quadrado.Picture := img_limpa.Picture;
             If (FieldByName('MDP_FLFERR').AsBoolean = False) Then
                 img_Ferro.Picture := img_limpa.Picture;
             If (FieldByName('MDP_FLSOL').AsBoolean = False) Then
                img_Circulo.Picture := img_limpa.Picture;
         End;
     End;
     //
     frmRelModelo.qrImpressaoPedido.Preview;
  Finally
     frmRelModelo.Free;
     btVisualizar.Enabled := True;
  End;
end;

procedure TfrmImpressaoLote.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmImpressaoLote.FormCreate(Sender: TObject);
begin
     With dmInfoModa.qryProduto do
     begin
          SQL.Clear;
          Close;
          Sql.add('Select * from SACPRO order by PRO_NMPROD');
          Prepare;
          Open;
     End;
     //
     With dmInfoModa.qryModelo do
     begin
          SQL.Clear;
          Close;
          Sql.add('Select * from SACMDP order by MDP_CDMODE');
          Prepare;
          Open;
     End;
end;

end.
