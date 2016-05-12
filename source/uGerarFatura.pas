unit uGerarFatura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, RXCtrls, StdCtrls, Buttons, RxLookup,
  ToolEdit, RXDBCtrl, Mask, ExtCtrls, DB, DBTables, ImgList, DBIProcs;

type
  TfrmGerarFatura = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    btGravar: TSpeedButton;
    btCancelar: TSpeedButton;
    spFechar: TSpeedButton;
    Label5: TLabel;
    pnlBotoes: TPanel;
    pnlTOTAL: TPanel;
    lbl_LEG_TOPEDI: TRxLabel;
    Panel3: TPanel;
    pnlGrid: TPanel;
    dbePedido: TEdit;
    dbeDTPEDI: TDateEdit;
    dbeHOPEDI: TEdit;
    cmbNMVEND: TEdit;
    cmbNMCLIE: TEdit;
    lbl_TOPEDI: TLabel;
    qryPedido: TQuery;
    dsItensPedidos: TDataSource;
    qryCliente: TQuery;
    qryVendedor: TQuery;
    qryItensPedido: TQuery;
    qryItensPedidoITP_NRPEDI: TStringField;
    qryItensPedidoITP_NRITEM: TStringField;
    qryItensPedidoITP_CDPROD: TStringField;
    qryItensPedidoITP_TAMANH: TStringField;
    qryItensPedidoITP_QTPROD: TFloatField;
    qryItensPedidoITP_VLUNIT: TCurrencyField;
    qryItensPedidoITP_FLSITU: TStringField;
    qryItensPedidoITP_VLUNI2: TCurrencyField;
    qryItensPedidoITE_SUBTOT: TCurrencyField;
    qryItensPedidoITP_NMPROD: TStringField;
    qryProdutos: TQuery;
    qryProdutosPRO_CDPROD: TStringField;
    qryProdutosPRO_CDBARR: TStringField;
    qryProdutosPRO_NMPROD: TStringField;
    qryProdutosPRO_VLVEND: TFloatField;
    Label1: TLabel;
    edtNRPEDI: TEdit;
    qryItensPedidoITP_NRFATU: TStringField;
    ImageList1: TImageList;
    tbItensPedidos: TTable;
    GridItens: TRxDBGrid;
    tbItensPedidosTFA_NRPEDI: TStringField;
    tbItensPedidosTFA_NRITEM: TStringField;
    tbItensPedidosTFA_CDPROD: TStringField;
    tbItensPedidosTFA_NRFATU: TStringField;
    tbItensPedidosTFA_QTPROD: TFloatField;
    tbItensPedidosTFA_VLUNIT: TCurrencyField;
    tbItensPedidosTFA_FLSITU: TBooleanField;
    tbItensPedidosTFA_NMPROD: TStringField;
    tbItensPedidosTFA_VLSUBT: TCurrencyField;
    qryDados: TQuery;
    btFatura: TBitBtn;
    btFechar: TBitBtn;
    procedure spFecharClick(Sender: TObject);
    procedure dbePedidoKeyPress(Sender: TObject; var Key: Char);
    procedure dbePedidoChange(Sender: TObject);
    procedure qryItensPedidoCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure edtNRPEDIKeyPress(Sender: TObject; var Key: Char);
    procedure edtNRPEDIChange(Sender: TObject);
    procedure GridItensCellClick(Column: TColumn);
    procedure GridItensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridItensColEnter(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridItensKeyPress(Sender: TObject; var Key: Char);
    procedure tbItensPedidosCalcFields(DataSet: TDataSet);
    procedure btFecharClick(Sender: TObject);
    procedure btFaturaClick(Sender: TObject);
    procedure edtNRPEDIEnter(Sender: TObject);
    procedure dbePedidoEnter(Sender: TObject);
    procedure tbItensPedidosAfterPost(DataSet: TDataSet);
  private
    Procedure CARREGAR_DADOS;
    Procedure CONSULTA;
    Procedure LIMPAR_CAMPOS;
    Procedure LIMPAR_BD;
    Procedure TOTAL_FATURA;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerarFatura: TfrmGerarFatura;
  M_NRPEDI, M_ORDSER : String;
  W_CDCLIE, W_CDVEND : String;
  M_VLFATU : Real;
  M_FLFECH : Boolean;

implementation

Uses uFuncoes, uFecharFatura, udmInfoModa;

{$R *.dfm}

procedure TfrmGerarFatura.spFecharClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmGerarFatura.dbePedidoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
     If (Key = #13) and not uFuncoes.Empty(dbePedido.Text) Then
     Begin
          Key := #0;
          M_ORDSER := uFuncoes.StrZero(dbePedido.Text,6);
          //
          With qryPedido do
          Begin
               SQL.Clear;
               Close;
               SQL.Add('Select * from "SACPED.DB" Where (PED_ORDSER=:pORDSER)');
               //
               ParamByName('pORDSER').AsString := M_ORDSER;
               //
               Prepare;
               Open;
          End;
          //
          If (qryPedido.RecordCount > 0) then
          Begin
               dbePedido.Text := uFuncoes.StrZero(dbePedido.Text,6);
               M_NRPEDI := qryPedido.FieldByName('PED_NRPEDI').AsString;
               edtNRPEDI.Text := M_NRPEDI;
               CARREGAR_DADOS;
               //
               With qryItensPedido do
               Begin
                    Close;
                    //
                    ParamByName('pNRPEDI').AsString := M_NRPEDI;
                    //
                    Prepare;
                    Open;
               End;
               //
               If (qryItensPedido.RecordCount = 0) Then
               Begin
                    Application.MessageBox('Pedido já foi faturado!!!',
                       'ATENÇÃO',MB_OK+MB_ICONINFORMATION);
                    btFatura.Enabled := False;
                    Exit;
               End
               Else
                   btFatura.Enabled := True;
               //
               With qryDados do
               Begin
                    SQL.Clear;
                    Close;
                    SQL.Add('Delete from SACTFA');
                    //
                    ExecSQL;
               End;
               //
               While not (qryItensPedido.Eof) do
               Begin
                    With qryDados do
                    Begin
                         SQL.Clear;
                         Close;
                         SQL.Add('INSERT INTO SACTFA (TFA_NRPEDI, TFA_NRITEM, TFA_CDPROD, TFA_NRFATU, TFA_QTPROD, TFA_VLUNIT)');
                         SQL.Add('VALUES (:pNRPEDI, :pNRITEM, :pCDPROD, :pNRFATU, :pQTPROD, :pVLUNIT)');
                         //
                         ParamByName('pNRPEDI').AsString := qryItensPedido.FieldByName('ITP_NRPEDI').AsString;
                         ParamByName('pNRITEM').AsString := qryItensPedido.FieldByName('ITP_NRITEM').AsString;
                         ParamByName('pCDPROD').AsString := qryItensPedido.FieldByName('ITP_CDPROD').AsString;
                         ParamByName('pNRFATU').AsString := qryItensPedido.FieldByName('ITP_NRFATU').AsString;
                         ParamByName('pQTPROD').AsFloat  := qryItensPedido.FieldByName('ITP_QTPROD').AsFloat;
                         ParamByName('pVLUNIT').AsCurrency := qryItensPedido.FieldByName('ITP_VLUNIT').AsCurrency;
                         //
                         ExecSQL;
                    End;
                    //
                    qryItensPedido.Next;
               End;
               //
               tbItensPedidos.Open;
               //
               TOTAL_FATURA;
          End
          Else
          Begin
               ShowMessage('Pedido não cadastro!!!');
               //
               qryItensPedido.Close;
               qryPedido.Close;
               qryProdutos.Close;
               tbItensPedidos.Close;
               //
               dbePedido.Clear;
               dbePedido.SetFocus;
               Exit;
          End;
     End;
end;

procedure TfrmGerarFatura.CARREGAR_DADOS;
begin
     dbeDTPEDI.Date := qryPedido.FieldByName('PED_DTPEDI').AsDateTime;
     dbeHOPEDI.Text := qryPedido.FieldByName('PED_HOPEDI').AsString;
     W_CDCLIE := qryPedido.FieldByName('PED_CDCLIE').AsString;
     W_CDVEND := qryPedido.FieldByName('PED_CDVEND').AsString;
     // Nome do Cliente
     With qryCliente do
     Begin
          Close;
          //
          ParamByName('pCDCLIE').AsString := W_CDCLIE;
          Prepare;
          Open;
     End;
     //
     cmbNMCLIE.Text := qryCliente.FieldByName('CLI_NMCLIE').AsString;
     // Nome do Vendedor
     With qryVendedor do
     Begin
          Close;
          //
          ParamByName('pCDVEND').AsString := W_CDVEND;
          Prepare;
          Open;
     End;
     //
     cmbNMVEND.Text := qryVendedor.FieldByName('VEN_NMVEND').AsString;
     //
     lbl_TOPEDI.Caption := FormatFloat('###,###,##0.#0',qryPedido.FieldByName('PED_TOPEDI').AsFloat);
end;

procedure TfrmGerarFatura.LIMPAR_CAMPOS;
begin
     dbeDTPEDI.Clear;
     dbeHOPEDI.Clear;
     cmbNMCLIE.Clear;
     cmbNMVEND.Clear;
     lbl_TOPEDI.Caption := '0,00';
end;

procedure TfrmGerarFatura.dbePedidoChange(Sender: TObject);
begin
     If uFuncoes.Empty (dbePedido.Text) Then
     Begin
          edtNRPEDI.Clear;
          //
          qryItensPedido.Close;
          tbItensPedidos.Close;
          qryPedido.Close;
          //qryProdutos.Close;
          //
          LIMPAR_BD;
          //
          tbItensPedidos.Close;
          //
          LIMPAR_CAMPOS;
     End;
end;

procedure TfrmGerarFatura.qryItensPedidoCalcFields(DataSet: TDataSet);
begin
    qryItensPedido.FieldByName('ITE_SUBTOT').AsCurrency :=
       qryItensPedido.FieldByName('ITP_VLUNIT').AsCurrency*
       qryItensPedido.FieldByName('ITP_QTPROD').AsCurrency;
end;

procedure TfrmGerarFatura.FormCreate(Sender: TObject);
begin
     With qryProdutos do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Select PRO_CDPROD, PRO_CDBARR, PRO_NMPROD, PRO_VLVEND');
          SQL.Add('from "SACPRO.DBF"');
          //
          Prepare;
          Open;
     End;
     //
     LIMPAR_BD;
end;

procedure TfrmGerarFatura.edtNRPEDIKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
     If (Key = #13) and not uFuncoes.Empty(edtNRPEDI.Text) Then
     Begin
          Key := #0;
          M_NRPEDI := uFuncoes.StrZero(edtNRPEDI.Text,7);
          //
          With qryPedido do
          Begin
               SQL.Clear;
               Close;
               SQL.Add('Select * from "SACPED.DB" Where (PED_NRPEDI=:pNRPEDI)');
               //SQL.Add('Or (PED_ORDSER=:pORDSER)');
               //
               ParamByName('pNRPEDI').AsString := M_NRPEDI;
               //ParamByName('pORDSER').AsString := M_ORDSER;
               //
               Prepare;
               Open;
          End;
          //
          If (qryPedido.RecordCount > 0) then
          Begin
               edtNRPEDI.Text := M_NRPEDI;
               dbePedido.Text := uFuncoes.StrZero(dbePedido.Text,6);
               dbePedido.Text := qryPedido.FieldByName('PED_ORDSER').AsString;
               CARREGAR_DADOS;
               //
               With qryItensPedido do
               Begin
                    Close;
                    //
                    ParamByName('pNRPEDI').AsString := M_NRPEDI;
                    //
                    Prepare;
                    Open;
                    First;
               End;
               //
               If (qryItensPedido.RecordCount = 0) Then
               Begin
                    Application.MessageBox('Pedido já foi faturado!!!',
                       'ATENÇÃO',MB_OK+MB_ICONINFORMATION);
                    btFatura.Enabled := False;
                    Exit;
               End
               Else
                   btFatura.Enabled := True;
               //
               With qryDados do
               Begin
                    SQL.Clear;
                    Close;
                    SQL.Add('Delete from SACTFA');
                    //
                    ExecSQL;
               End;
               //
               While not (qryItensPedido.Eof) do
               Begin
                    With qryDados do
                    Begin
                         SQL.Clear;
                         Close;
                         SQL.Add('INSERT INTO SACTFA (TFA_NRPEDI, TFA_NRITEM, TFA_CDPROD, TFA_NRFATU, TFA_QTPROD, TFA_VLUNIT)');
                         SQL.Add('VALUES (:pNRPEDI, :pNRITEM, :pCDPROD, :pNRFATU, :pQTPROD, :pVLUNIT)');
                         //
                         ParamByName('pNRPEDI').AsString := qryItensPedido.FieldByName('ITP_NRPEDI').AsString;
                         ParamByName('pNRITEM').AsString := qryItensPedido.FieldByName('ITP_NRITEM').AsString;
                         ParamByName('pCDPROD').AsString := qryItensPedido.FieldByName('ITP_CDPROD').AsString;
                         ParamByName('pNRFATU').AsString := qryItensPedido.FieldByName('ITP_NRFATU').AsString;
                         ParamByName('pQTPROD').AsFloat  := qryItensPedido.FieldByName('ITP_QTPROD').AsFloat;
                         ParamByName('pVLUNIT').AsCurrency := qryItensPedido.FieldByName('ITP_VLUNIT').AsCurrency;
                         //
                         ExecSQL;
                    End;
                    //
                    qryItensPedido.Next;
               End;
               //
               tbItensPedidos.Open;
               //
               TOTAL_FATURA;
          End
          Else
          Begin
               ShowMessage('Pedido não cadastro!!!');
               //
               qryItensPedido.Close;
               qryPedido.Close;
               qryProdutos.Close;
               tbItensPedidos.Close;
               //
               edtNRPEDI.Clear;
               edtNRPEDI.SetFocus;
               Exit;
          End;
     End;
end;

procedure TfrmGerarFatura.edtNRPEDIChange(Sender: TObject);
begin
     If uFuncoes.Empty (edtNRPEDI.Text) Then
     Begin
          qryItensPedido.Close;
          tbItensPedidos.Close;
          qryPedido.Close;
          //qryProdutos.Close;
          //
          LIMPAR_BD;
          //
          tbItensPedidos.Close;
          //
          LIMPAR_CAMPOS;
     End;
end;

procedure TfrmGerarFatura.GridItensCellClick(Column: TColumn);
begin
  if Column.Field = tbItensPedidosTFA_FLSITU then
  begin
       tbItensPedidos.Edit;
       If uFuncoes.Empty(tbItensPedidosTFA_NRFATU.AsString) Then
          tbItensPedidosTFA_FLSITU.AsBoolean := not tbItensPedidosTFA_FLSITU.AsBoolean;
       tbItensPedidos.Post;
       //
       TOTAL_FATURA;
  end;
end;

procedure TfrmGerarFatura.GridItensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  R: TRect;
begin
  {pinta checkbox}
  if Column.Field = tbItensPedidosTFA_FLSITU  then
  begin
    GridItens.Canvas.FillRect(Rect);
    ImageList1.Draw(GridItens.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
    if tbItensPedidosTFA_FLSITU.AsBoolean  then
      ImageList1.Draw(GridItens.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(GridItens.Canvas, Rect.Left + 10, Rect.Top + 1, 1);
  end;
end;

procedure TfrmGerarFatura.GridItensColEnter(Sender: TObject);
begin
  if GridItens.SelectedField <> tbItensPedidosTFA_FLSITU then
     GridItens.SelectedIndex := 6;
  //
  if GridItens.SelectedField = tbItensPedidosTFA_FLSITU then
    GridItens.Options := GridItens.Options - [dgEditing]
  else
    GridItens.Options := GridItens.Options + [dgEditing];
end;

procedure TfrmGerarFatura.GridItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = 46) Then
        KEY := 0;
end;

procedure TfrmGerarFatura.GridItensKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #8) or (Key = #13) Then
     begin
          Key := #0;
          tbItensPedidos.Edit;
          //
          If uFuncoes.Empty(tbItensPedidosTFA_NRFATU.AsString) Then
              tbItensPedidosTFA_FLSITU.AsBoolean := not tbItensPedidosTFA_FLSITU.AsBoolean;
          //
          tbItensPedidos.Next;
          //
          TOTAL_FATURA;
     End;
end;

procedure TfrmGerarFatura.tbItensPedidosCalcFields(DataSet: TDataSet);
begin
    tbItensPedidos.FieldByName('TFA_VLSUBT').AsCurrency :=
       tbItensPedidos.FieldByName('TFA_VLUNIT').AsCurrency*
       tbItensPedidos.FieldByName('TFA_QTPROD').AsCurrency;
end;

procedure TfrmGerarFatura.LIMPAR_BD;
begin
     With qryDados do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Delete from SACTFA');
          ExecSQL;
    End;
    //
    With dmInfoModa.qryParcelaFatura do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Delete from "SACCRT.DB"');
          ExecSQL;
     End;
end;

procedure TfrmGerarFatura.btFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmGerarFatura.btFaturaClick(Sender: TObject);
begin
     TOTAL_FATURA;
     //
     If ( M_VLFATU = 0) Then
     Begin
          Application.MessageBox('O TOTAL da fatura está ZERO!!!'+#13,
                 'ATENÇÃO',MB_OK+MB_ICONINFORMATION);
          Exit;
     End;
     //
     Try
         //
         Application.CreateForm(TfrmFecharFatura, frmFecharFatura);
         M_FLFECH := False;
         uFecharFatura.M_TOFATU := M_VLFATU;
         uFecharFatura.W_NRPEDI := M_NRPEDI;
         uFecharFatura.M_CLCLIE := W_CDCLIE;
         frmFecharFatura.ShowModal;
     Finally
         frmFecharFatura.Free;
         //
         If (M_FLFECH = True) Then
             Close;
         //tbItensPedidos.Close;
         //edtNRPEDI.SetFocus;
         //edtNRPEDI.Clear;
         //CONSULTA;
     End;
end;

procedure TfrmGerarFatura.TOTAL_FATURA;
Var
    N_NRITEM : String;
begin
     N_NRITEM := tbItensPedidos.FieldByName('TFA_NRITEM').AsString;
     //
     tbItensPedidos.DisableControls;
     tbItensPedidos.First;
     //
     M_VLFATU := 0;
     While not (tbItensPedidos.Eof) do
     Begin
          If uFuncoes.Empty(tbItensPedidos.FieldByName('TFA_NRFATU').AsString )
            And (tbItensPedidos.FieldByName('TFA_FLSITU').AsBoolean) Then
             M_VLFATU := M_VLFATU+tbItensPedidos.FieldByName('TFA_VLSUBT').AsCurrency;
          // Proximo
          tbItensPedidos.Next;
     End;
     tbItensPedidos.EnableControls;
     //
     tbItensPedidos.Locate('TFA_NRITEM',N_NRITEM,[]);
     lbl_TOPEDI.Caption := FormatFloat('###,###,##0.#0',M_VLFATU);
end;

procedure TfrmGerarFatura.edtNRPEDIEnter(Sender: TObject);
begin
     If not uFuncoes.Empty(dbePedido.Text) Then
         dbePedido.Clear;
end;

procedure TfrmGerarFatura.dbePedidoEnter(Sender: TObject);
begin
     If not uFuncoes.Empty(edtNRPEDI.Text) Then
         edtNRPEDI.Clear;
end;

procedure TfrmGerarFatura.CONSULTA;
begin
     edtNRPEDI.Text := M_NRPEDI;
     //
     {With qryDados do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Delete from SACTFA');
          //
          ExecSQL;
     End;}
     With qryItensPedido do
     Begin
          Close;
          //
          ParamByName('pNRPEDI').AsString := M_NRPEDI;
          //
          Prepare;
          Open;
          First;
     End;
     //
     tbItensPedidos.DisableControls;
     tbItensPedidos.First;
     While not (tbItensPedidos.Eof) do
     Begin
          With qryDados do
          Begin
               SQL.Clear;
               Close;
               SQL.Add('INSERT INTO SACTFA (TFA_NRPEDI, TFA_NRITEM, TFA_CDPROD, TFA_NRFATU, TFA_QTPROD, TFA_VLUNIT)');
               SQL.Add('VALUES (:pNRPEDI, :pNRITEM, :pCDPROD, :pNRFATU, :pQTPROD, :pVLUNIT)');
               //
               ParamByName('pNRPEDI').AsString := tbItensPedidos.FieldByName('TFA_NRPEDI').AsString;
               ParamByName('pNRITEM').AsString := tbItensPedidos.FieldByName('TFA_NRITEM').AsString;
               ParamByName('pCDPROD').AsString := tbItensPedidos.FieldByName('TFA_CDPROD').AsString;
               ParamByName('pNRFATU').AsString := tbItensPedidos.FieldByName('TFA_NRFATU').AsString;
               ParamByName('pQTPROD').AsFloat  := tbItensPedidos.FieldByName('TFA_QTPROD').AsFloat;
               ParamByName('pVLUNIT').AsCurrency := tbItensPedidos.FieldByName('TFA_VLUNIT').AsCurrency;
               //
               ExecSQL;
          End;
          //
          tbItensPedidos.Next;
     End;
     //
     tbItensPedidos.Refresh;
     tbItensPedidos.EnableControls;
     tbItensPedidos.Close;
     tbItensPedidos.Open;
     //
     TOTAL_FATURA;
     //
     GridItens.SetFocus;
end;

procedure TfrmGerarFatura.tbItensPedidosAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbItensPedidos.Handle);     //Evitando Perdas de Dados.
     tbItensPedidos.FlushBuffers;
     tbItensPedidos.Refresh;
end;

end.
