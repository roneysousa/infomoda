unit uCadPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, StdCtrls, Mask, DBCtrls, RxLookup, ToolEdit,
  RXDBCtrl, Grids, DBGrids, RXCtrls, Buttons, DBTables;

type
  TfrmCadPedidos = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    dbeNRPEDI: TDBEdit;
    dsPedido: TDataSource;
    Label2: TLabel;
    dbeDTPEDI: TDBDateEdit;
    dbeHOPEDI: TDBEdit;
    Label3: TLabel;
    cmbNMVEND: TRxDBLookupCombo;
    Label4: TLabel;
    cmbNMCLIE: TRxDBLookupCombo;
    pnlGrid: TPanel;
    pnlTOTAL: TPanel;
    pnlDados: TPanel;
    pnlBotoes: TPanel;
    GridItens: TDBGrid;
    dsItemPedido2: TDataSource;
    lbl_TOPEDI: TRxLabel;
    btGravar: TSpeedButton;
    btCancelar: TSpeedButton;
    btAdicionar: TBitBtn;
    btEditar: TBitBtn;
    btGravarItem: TBitBtn;
    btCancelarItem: TBitBtn;
    Panel3: TPanel;
    DBText1: TDBText;
    qryItensPedidos: TQuery;
    qryItensPedidosITP_NRPEDI: TStringField;
    qryItensPedidosITP_NRITEM: TStringField;
    qryItensPedidosITP_CDPROD: TStringField;
    qryItensPedidosITP_TAMANH: TStringField;
    qryItensPedidosITP_QTPROD: TFloatField;
    qryItensPedidosITP_VLUNIT: TCurrencyField;
    qryItensPedidosITP_FLSITU: TStringField;
    qryExcluirItens: TQuery;
    dsItemPedido: TDataSource;
    qryItensPedidosITE_SUBTOT: TCurrencyField;
    qryApagarItens: TQuery;
    qryProdutos: TQuery;
    qryProdutosPRO_CDPROD: TStringField;
    qryProdutosPRO_CDBARR: TStringField;
    qryProdutosPRO_NMPROD: TStringField;
    qryProdutosPRO_VLVEND: TFloatField;
    qryItensPedidosITP_VLUNI2: TCurrencyField;
    qryItensPedidosITP_NMPROD: TStringField;
    btExcluir: TBitBtn;
    qryTOPEDI: TQuery;
    spFechar: TSpeedButton;
    Label5: TLabel;
    dbePedido: TDBEdit;
    qryLocPedido: TQuery;
    qryItensPedido: TQuery;
    qryItensPedidoITP_NRPEDI: TStringField;
    qryItensPedidoITP_NRITEM: TStringField;
    qryItensPedidoITP_CDPROD: TStringField;
    qryItensPedidoITP_QTPROD: TFloatField;
    qryItensPedidoITP_FLSITU: TStringField;
    qryItensPedidoITP_SUBTOT: TCurrencyField;
    qryItensPedidoITP_VLUNIT: TCurrencyField;
    qryItensPedidoITP_NMPROD: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dsItemPedido2StateChange(Sender: TObject);
    procedure dsPedidoStateChange(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dbeHOPEDIExit(Sender: TObject);
    procedure dbeDTPEDIExit(Sender: TObject);
    procedure btGravarItemClick(Sender: TObject);
    procedure dbeQTPRODKeyPress(Sender: TObject; var Key: Char);
    procedure btCancelarItemClick(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btEditar2Click(Sender: TObject);
    procedure dsPedidoDataChange(Sender: TObject; Field: TField);
    procedure FormActivate(Sender: TObject);
    procedure cmbNMCLIEKeyPress(Sender: TObject; var Key: Char);
    procedure cmbNMVENDKeyPress(Sender: TObject; var Key: Char);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbeQTPRODChange(Sender: TObject);
    procedure dbeCDPRODEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qryItensPedidosCalcFields(DataSet: TDataSet);
    procedure btExcluirClick(Sender: TObject);
    procedure spFecharClick(Sender: TObject);
    procedure dbePedidoKeyPress(Sender: TObject; var Key: Char);
    procedure dbePedidoExit(Sender: TObject);
    procedure dbeDTPEDIKeyPress(Sender: TObject; var Key: Char);
  private
    procedure IMPRIMIR_PEDIDO;
    procedure LISTA_PRODUTOS;
    procedure TOTAL_PEDIDO2;
    { Private declarations }
  public
    procedure TOTAL_PEDIDO;
    { Public declarations }
  end;

var
  frmCadPedidos: TfrmCadPedidos;
  M_NRITEM, M_QTPEDI, M_QTATEN : Integer;
  M_TOPEDI : Real;
  M_NRPEDI : String;
  M_FLGRAV : Boolean;

implementation

uses udmInfoModa, uFuncoes, uPrincipal, uLocProduto, uCadGradeTamanho,
  uRelPedidos, uCadItemPedido, uInclusaoProduto;

{$R *.dfm}

procedure TfrmCadPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmInfoModa.tbGradeTamanho.Close; 
     dmInfoModa.tbItensPedido.Close;
     dmInfoModa.tbPedidos.Close;
     //
     uFuncoes.Limpar_Status;
     //
     Action := caFree;
end;

procedure TfrmCadPedidos.GridItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = 46) Then
      KEY := 0;
    If key = vk_F2 then
        btAdicionar.SetFocus;
end;

procedure TfrmCadPedidos.TOTAL_PEDIDO;
begin
     With dmInfoModa.qryTOTPEDIDO do
     begin
          Close;
          //
          ParamByName('pNRPEDI').AsString :=
            dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
          //
          Prepare;
          Open;
          First;
     End;
     //
     M_TOPEDI := 0;
     M_QTPEDI := 0;
     M_QTATEN := 0;
     //
     dmInfoModa.qryTOTPEDIDO.DisableControls;
     While not (dmInfoModa.qryTOTPEDIDO.Eof) do
     begin
          M_TOPEDI := M_TOPEDI + dmInfoModa.qryTOTPEDIDO.FieldByName('ITE_SUBTOT').AsCurrency;
          dmInfoModa.qryTOTPEDIDO.Next;
     End;
     //
     M_QTPEDI := dmInfoModa.qryTOTPEDIDO.RecordCount;
     //
     dmInfoModa.qryTOTPEDIDO.EnableControls;
     //
end;

procedure TfrmCadPedidos.dsItemPedido2StateChange(Sender: TObject);
begin
    If (dmInfoModa.tbItensPedido.Active = True) Then
    begin
      //btAdicionar.Enabled := dsItemPedido.State in [dsBrowse];
      //btEditar.Enabled    := dsItemPedido.State in [dsBrowse];
      btGravarItem.Enabled   := dsItemPedido.State in [dsInsert,dsEdit];
      btCancelarItem.Enabled := dsItemPedido.State in [dsInsert,dsEdit];
      //btTamanho.Enabled   := dsItemPedido.State in [dsInsert,dsEdit];
    End
    Else
    begin
      //btAdicionar.Enabled := False;
      //btEditar.Enabled    := False;
      btGravarItem.Enabled   := False;
      btCancelarItem.Enabled := False;
      //btTamanho.Enabled   := False;
    End;
    //
end;

procedure TfrmCadPedidos.dsPedidoStateChange(Sender: TObject);
begin
    //
    btGravar.Enabled   := (dsPedido.State in [dsInsert,dsEdit])
                     and not uFuncoes.Empty(cmbNMVEND.Text)
                     and not uFuncoes.Empty(cmbNMCLIE.Text)
                     and (M_NRITEM > 0);
    btCancelar.Enabled := dsPedido.State in [dsInsert,dsEdit];
end;

procedure TfrmCadPedidos.btCancelarClick(Sender: TObject);
Var
   W_NRPEDI : String;
begin
  Try
   If (dmInfoModa.tbPedidos.FieldByName('PED_TOPEDI').AsCurrency > 0) Then
   Begin
     W_NRPEDI := dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
     //
     With qryExcluirItens do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Select * from SACITP  Where (ITP_NRPEDI = :pNRPEDI)');
          //
          ParamByName('pNRPEDI').AsString := W_NRPEDI;
          //
          ExecSQL;
     End;
     //
     With qryApagarItens do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Delete from SACGTM Where (GTM_NRPEDI = :pNRPEDI)');
          //
          ParamByName('pNRPEDI').AsString := W_NRPEDI;
          //
          ExecSQL;
     End;
     //
     {dmInfoModa.tbItensPedido.Filtered := False;
     dmInfoModa.tbItensPedido.Filter   := 'ITP_NRPEDI='
         +QuotedStr(dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString);
     dmInfoModa.tbItensPedido.Filtered := True;
     //
     dmInfoModa.tbItensPedido.DisableControls;
     dmInfoModa.tbItensPedido.First;
     While not (dmInfoModa.tbItensPedido.Eof) do
     begin
          dmInfoModa.tbItensPedido.Edit;
          dmInfoModa.tbItensPedido.FieldByName('ITP_FLSITU').AsString := 'C';
          dmInfoModa.tbItensPedido.Next;
     End;
     dmInfoModa.tbItensPedido.EnableControls;}
     Application.MessageBox(PChar('Pedido Nº.'+W_NRPEDI+' cancelado!!!'),
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
     //
   End;
     // Cancela pedido atual
     dmInfoModa.tbPedidos.Cancel;
     //
     Close;
  Except
     Application.MessageBox(PChar('Error no cancelamento do pedido Nº.'+W_NRPEDI),
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
     Close;
  End;
end;

procedure TfrmCadPedidos.btGravarClick(Sender: TObject);
begin
      If (M_FLGRAV = False) Then
      begin
            Application.MessageBox('Não há itens no pedido!!!',
              'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
            btGravar.Enabled    := False;
            btAdicionar.Enabled := True;
            btAdicionar.SetFocus;
            Exit;
      End;
      //
     If uFuncoes.Empty(dbePedido.text) Then
     begin
          Application.MessageBox('Digite o número do pedido.',
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dbePedido.SetFocus;
          Exit;
     End;
     //
     If (dbeDTPEDI.text='  /  /    ') Then
     begin
          Application.MessageBox('Digite a data do pedido.',
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dbeDTPEDI.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(dbeHOPEDI.text) Then
     begin
          Application.MessageBox('Digite a hora do pedido.',
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dbeHOPEDI.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(cmbNMVEND.text) Then
     begin
          Application.MessageBox('Selecione o vendedor.',
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          cmbNMVEND.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(cmbNMCLIE.text) Then
     begin
          Application.MessageBox('Selecione o cliente.',
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          cmbNMCLIE.SetFocus;
          Exit;
     End;
     //
     If (dsPedido.State in [dsInsert]) Then
     Begin
       If (M_NRITEM < 1) Then
       begin
            Application.MessageBox('Não há itens no pedido!!!',
              'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
            btGravar.Enabled := False;
            btAdicionar.SetFocus;
            Exit;
       End;
     End;
     //
  If Application.MessageBox('Confirma o fechamento do pedido?',
    'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
  Begin
     Try
          If (dsPedido.State in [dsInsert]) Then
             dmInfoModa.tbPedidos.FieldByName('PED_CDUSUA').AsString := uPrincipal.M_CDUSUA;
          //
          dmInfoModa.tbPedidos.FieldByName('PED_QTPEDI').AsInteger := M_QTPEDI;
          dmInfoModa.tbPedidos.Post;
          //
          Application.MessageBox('Registro gravado com sucesso!!!',
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          //
          If Application.MessageBox('Imprimir pedido?',
              'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                  IMPRIMIR_PEDIDO;
          //
          Close;
          //
     Except
          Application.MessageBox('Erro ao tentar gravar registro!!!',
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbPedidos.Cancel;
     End;
  End
  Else
    Exit;

end;

procedure TfrmCadPedidos.dbeHOPEDIExit(Sender: TObject);
begin
     If (dsPedido.State in [dsInsert, dsEdit]) Then
     begin
          try
              StrToTime(dbeHOPEDI.Text);
          except
              on EConvertError do
              begin
                   ShowMessage ('Hora digitada Inválida!');
                   dbeHOPEDI.Clear;
                   dbeHOPEDI.SetFocus;
                   Exit;
              End;
          end;
     End;
end;

procedure TfrmCadPedidos.dbeDTPEDIExit(Sender: TObject);
begin
     If (dsPedido.State in [dsInsert, dsEdit]) Then
     begin
          try
              StrToDate(dbeDTPEDI.Text);
          except
              on EConvertError do
              begin
                   ShowMessage ('Data digitada Inválida!');
                   dbeDTPEDI.Clear;
                   dbeDTPEDI.SetFocus;
                   Exit;
              End;
          end;
     End;
end;

procedure TfrmCadPedidos.btGravarItemClick(Sender: TObject);
begin
  If (dsPedido.State in [dsInsert, dsEdit]) then
  begin
     //
     Try
          dmInfoModa.tbItensPedido.FieldByName('ITP_VLUNIT').AsCurrency :=
                  dmInfoModa.tbItensPedido.FieldByName('ITP_VLUNI2').AsCurrency;
          //
          dmInfoModa.tbItensPedido.Post;
          //
          dmInfoModa.tbItensPedido.DisableControls;
          dmInfoModa.tbItensPedido.Filtered := False;
          dmInfoModa.tbItensPedido.Filter   := 'ITP_NRPEDI='+QuotedStr(M_NRPEDI);
          dmInfoModa.tbItensPedido.Filtered := True;
          dmInfoModa.tbItensPedido.Last;
          dmInfoModa.tbItensPedido.EnableControls;
          //
          With qryItensPedidos do
          begin
               DisableControls;
               Close;
               //
               ParamByName('pNRPEDI').AsString := M_NRPEDI;
               //
               Prepare;
               Open;
               EnableControls;
          End;
          //
          //btGravar.Enabled   := True;
          //btCancelar.Enabled := True;
          //
          TOTAL_PEDIDO;
          //
          btAdicionar.SetFocus;
     Except
          Application.MessageBox('Erro ao tentar gravar registro!!!',
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbPedidos.Cancel;
     End;
  End;
end;

procedure TfrmCadPedidos.dbeQTPRODKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) Then
     begin
          Key := #0;
          //

     End;
end;

procedure TfrmCadPedidos.btCancelarItemClick(Sender: TObject);
begin
     If (dsPedido.State = dsInsert) Then
        M_NRITEM := M_NRITEM-1;
     //
     //btGravar.Enabled   := True;
     //btCancelar.Enabled := True;
     //
     dmInfoModa.tbItensPedido.Cancel;
     //
     btAdicionar.SetFocus;
end;

procedure TfrmCadPedidos.btAdicionarClick(Sender: TObject);
begin
     //
     If uFuncoes.Empty(cmbNMVEND.text) Then
     begin
          Application.MessageBox('Selecione o vendedor.',
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          cmbNMVEND.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(cmbNMCLIE.text) Then
     begin
          Application.MessageBox('Selecione o cliente.',
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          cmbNMCLIE.SetFocus;
          Exit;
     End;
      //
      If (dsPedido.State in [dsInsert, dsEdit]) then
      begin
           Try
              //
              //M_NRITEM := M_NRITEM+1;
              M_NRITEM := dmInfoModa.tbItensPedido.RecordCount+1;
              //
              btGravar.Enabled   := True;
              //btCancelar.Enabled := False;
              //dbeCDPROD.ReadOnly := False;
              //
              {If (dmInfoModa.tbItensPedido.Active = False) Then
                dmInfoModa.tbItensPedido.Open;}
              //
              dmInfoModa.tbItensPedido.Append;
              dmInfoModa.tbItensPedido.FieldByName('ITP_NRPEDI').AsString :=
                     dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
              dmInfoModa.tbItensPedido.FieldByName('ITP_NRITEM').AsString := uFuncoes.StrZero(InttoStr(M_NRITEM),3);
              //
             { Try
       If (dmInfoModa.tbGrade2.Active = False) Then
          dmInfoModa.tbGrade2.Open;
       //
       //dmInfoModa.tbGrade2.DisableControls;
       //
       With dmInfoModa.qryCores do
       Begin
            SQL.Clear;
            Close;
            SQL.Add('Select * from SACCOR order by COR_NOMCOR');
            Prepare;
            Open;
            First;
       End;
       //
       While not (dmInfoModa.qryCores.Eof) do
       begin
            dmInfoModa.tbGrade2.Append;
            dmInfoModa.tbGrade2.FieldByName('GRD_NRPEDI').AsString  :=
                     dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString;
            dmInfoModa.tbGrade2.FieldByName('GRD_CDPROD').AsString  := '';
            dmInfoModa.tbGrade2.FieldByName('GRD_CODCOR').AsString  :=
                     dmInfoModa.qryCores.FieldByName('COR_CODCOR').AsString;
            dmInfoModa.tbGrade2.Post;
            //
            dmInfoModa.qryCores.Next;
       End;
       //
       dmInfoModa.tbGrade2.Close;
       dmInfoModa.tbGrade2.Filtered := False;
       dmInfoModa.tbGrade2.Filter   := 'GRD_NRPEDI='+QuotedStr(dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString);
       dmInfoModa.tbGrade2.Filtered := True;
       //
       dmInfoModa.tbGrade2.Open;
       //
       //dmInfoModa.tbGrade2.First;
       //
                  Application.CreateForm(TfrmIncProdutos, frmIncProdutos);
                  frmIncProdutos.ShowModal;
              Finally
                  frmIncProdutos.Free;
                  LISTA_PRODUTOS;
                  btAdicionar.SetFocus;
              End;}
              //
              Try
                  Application.CreateForm(TfrmInclusaoProdutos, frmInclusaoProdutos);
                  frmInclusaoProdutos.ShowModal;
              Finally
                  frmInclusaoProdutos.Free;
                  LISTA_PRODUTOS;
                  btAdicionar.SetFocus;
              End;
             {Try
                  Application.CreateForm(TfrmGradeTamanho, frmGradeTamanho);
                  frmGradeTamanho.ShowModal;
              Finally
                  frmGradeTamanho.Free;
                  LISTA_PRODUTOS;
                  btAdicionar.SetFocus;
              End;}
              //
           Except
                Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                        MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
               dmInfoModa.tbItensPedido.Cancel;
           End;
      End;
end;

procedure TfrmCadPedidos.btEditarClick(Sender: TObject);
begin
      If (dsPedido.State in [dsInsert, dsEdit]) then
      begin
           If (M_NRITEM < 1) Then
           begin
                ShowMessage('Não há itens para edição!!!');
                Exit;
           End;
           //
           Try
              //
              //btGravar.Enabled   := False;
              //btCancelar.Enabled := False;
              //dbeCDPROD.ReadOnly := True;
              //
              dmInfoModa.tbItensPedido.Edit;
           Except
                Application.MessageBox('Error ao tentar editar registro?', 'Erro',
                        MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
               dmInfoModa.tbItensPedido.Cancel;
           End;
      End;
end;

procedure TfrmCadPedidos.btEditar2Click(Sender: TObject);
begin
     Try
          //
          M_NRITEM := 0;
          //
          dmInfoModa.tbPedidos.Edit;
          cmbNMVEND.SetFocus;
     Except
          Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbPedidos.Cancel;
     End;
end;

procedure TfrmCadPedidos.dsPedidoDataChange(Sender: TObject;
  Field: TField);
begin
     frmPrincipal.Info.Panels[1].Text := ' Registro: ' + IntToStr(dsPedido.DataSet.RecNo) +
                          ' de ' + IntToStr(dsPedido.DataSet.RecordCount);
end;

procedure TfrmCadPedidos.FormActivate(Sender: TObject);
begin
     //
{     Try
          //
          dmInfoModa.tbParametros.Edit;
          dmInfoModa.tbParametros.FieldByName('PAR_NRPEDI').AsFloat :=
           dmInfoModa.tbParametros.FieldByName('PAR_NRPEDI').AsFloat+1;
          dmInfoModa.tbParametros.Post;
          //
          M_NRPEDI := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_NRPEDI').AsString,7);
          M_NRITEM := 0;
          //
          dmInfoModa.tbPedidos.Append;
          dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString := M_NRPEDI;
          dmInfoModa.tbPedidos.FieldByName('PED_DTPEDI').AsString := DatetoStr(Date());
          dmInfoModa.tbPedidos.FieldByName('PED_HOPEDI').AsString := TimetoStr(Time());
          //
              dmInfoModa.tbItensPedido.Close;
              dmInfoModa.tbItensPedido.Filtered := False;
              dmInfoModa.tbItensPedido.Filter   := 'ITP_NRPEDI='+QuotedStr(M_NRPEDI);
              dmInfoModa.tbItensPedido.Filtered := True;
              dmInfoModa.tbItensPedido.Open;
          //
          M_FLGRAV := False;
          cmbNMVEND.SetFocus;
     Except
          Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbPedidos.Cancel;
     End;}
     dbePedido.SetFocus;
end;

procedure TfrmCadPedidos.cmbNMCLIEKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(cmbNMCLIE.Text) Then
     begin
          Key := #0;
          btAdicionar.SetFocus;
     End;
end;

procedure TfrmCadPedidos.cmbNMVENDKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(cmbNMVEND.Text) Then
     begin
          Key := #0;
          cmbNMCLIE.SetFocus;
     End;
end;

procedure TfrmCadPedidos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
      If (dsPedido.State in [dsInsert, dsEdit]) then
      begin
         // Se total do pedido for maior que Zero
         If (dmInfoModa.tbPedidos.FieldByName('PED_TOPEDI').AsCurrency > 0) Then
         Begin
           If Application.MessageBox('Gravar alterações?',
               'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
           begin
                CanClose := False;
                Exit;
           End
           Else
           begin
                btCancelarClick(Sender);
                CanClose := True;
                Exit;
            End;
        End
        Else
        begin
                dmInfoModa.tbPedidos.Cancel;
                CanClose := True;
                Exit;
        End;
      End;
end;

procedure TfrmCadPedidos.dbeQTPRODChange(Sender: TObject);
begin
   {   If not uFuncoes.Empty(dbeQTPROD.Text) Then
         btGravarItem.Enabled := True
      Else
        btGravarItem.Enabled  := False;}
end;

procedure TfrmCadPedidos.dbeCDPRODEnter(Sender: TObject);
begin
     If (dsItemPedido.State in [dsInsert, dsEdit]) Then
        btGravarItem.Enabled := False;
end;

procedure TfrmCadPedidos.FormCreate(Sender: TObject);
begin
     If (dmInfoModa.tbPedidos.Active = False) Then
         dmInfoModa.tbPedidos.Open;
     //
     M_TOPEDI := 0;
     //
     //
     Try
          //
          If (dmInfoModa.tbParametros.Active = False) Then
             dmInfoModa.tbParametros.Open;
          //
          dmInfoModa.tbParametros.Edit;
          dmInfoModa.tbParametros.FieldByName('PAR_NRPEDI').AsFloat :=
           dmInfoModa.tbParametros.FieldByName('PAR_NRPEDI').AsFloat+1;
          dmInfoModa.tbParametros.Post;
          //
          M_NRPEDI := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_NRPEDI').AsString,7);
          M_NRITEM := 0;
          //
          dmInfoModa.tbPedidos.Append;
          dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString := M_NRPEDI;
          dmInfoModa.tbPedidos.FieldByName('PED_DTPEDI').AsString := DatetoStr(Date());
          dmInfoModa.tbPedidos.FieldByName('PED_HOPEDI').AsString := TimetoStr(Time());
          //
              dmInfoModa.tbItensPedido.Close;
              dmInfoModa.tbItensPedido.Filtered := False;
              dmInfoModa.tbItensPedido.Filter   := 'ITP_NRPEDI='+QuotedStr(M_NRPEDI);
              dmInfoModa.tbItensPedido.Filtered := True;
              dmInfoModa.tbItensPedido.Open;
          //
          With qryItensPedidos do
          begin
               DisableControls;
               Close;
               //
               ParamByName('pNRPEDI').AsString := M_NRPEDI;
               //
               Prepare;
               Open;
               EnableControls;
          End;
          //
          btExcluir.Enabled := False;
          M_FLGRAV := False;
     Except
          Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbPedidos.Cancel;
     End;     
end;

procedure TfrmCadPedidos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If key = vk_F2 then
     begin
          btAdicionar.SetFocus;
     end;
end;

procedure TfrmCadPedidos.IMPRIMIR_PEDIDO;
Var
   M_VLCUST, M_VLUNIT, M_QTPROD, M_QUANTO, M_TOUNIT,M_TOGERA, W_QTDCOR : Real;
   M_NRITEM : Integer;
   M_CDPROD, W_CDPROD, M_SPACE, M_CDCLIE, M_CODCOR : String;
begin
  //
  Try
     Screen.Cursor := crHourGlass;
     Application.CreateForm(TfrmRelPedidos, frmRelPedidos);
     //
     M_VLCUST := 0;
     M_NRITEM := 1;
     M_NRPEDI := dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
     M_CDCLIE := dmInfoModa.tbPedidos.FieldByName('PED_CDCLIE').AsString;
     M_CDPROD := '0';
     M_VLUNIT := 0;
     M_SPACE  := '    ';
     M_QUANTO := 0;
     M_TOUNIT := 0;
     M_TOGERA := 0;
     //
     M_QTPROD := 0;
     //
     With dmInfoModa.qryItens do
     begin
          SQL.Clear;
          Close;
          Sql.add('Select * from SACITP Where ITP_NRPEDI='+ quotedstr(M_NRPEDI));
          Prepare;
          Open;
          First;
     End;
     //
     While not (dmInfoModa.qryItens.Eof) do
     begin
          M_CDPROD := dmInfoModa.qryItens.FieldByName('ITP_CDPROD').AsString;
          M_VLUNIT := dmInfoModa.qryItens.FieldByName('ITP_VLUNIT').AsFloat;
          //
          With dmInfoModa.qryCores do
          begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACCOR order by COR_CODCOR');
              Prepare;
              Open;
              First;
         End;
         //
         While not (dmInfoModa.qryCores.Eof) do
         Begin
            With frmRelPedidos do
            begin
                 M_CODCOR := dmInfoModa.qryCores.FieldByName('COR_CODCOR').AsString;
                 //
                 With dmInfoModa.qryItensPedidos do
                 Begin
                      SQL.Clear;
                      Close;
                      Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                      Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                      Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                      Prepare;
                      Open;
                  End;
                  //
                  If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                  begin
                      W_QTDCOR := 0;
                      // Imprime o código do produto
                      //txtCDPROD.Lines.Add(uFuncoes.Padl(M_CDPROD,13));
                      txtCDPROD.Lines.Add(Copy(M_CDPROD,3,11));
                      // Imprime o nome da cor
                      //txtCOR.Lines.Add(uFuncoes.Padl(dmInfoModa.qryCores.FieldByName ('COR_NOMCOR').AsString,8));
                      txtCOR.Lines.Add(dmInfoModa.qryCores.FieldByName ('COR_CODCOR').AsString);
                      // Valor unitario
                      txtVLUNIT.Lines.Add(FormatFloat('###,##0.#0',M_VLUNIT));
                      // Tamanho 34
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('34'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR34.Lines.Add(FormatFloat('###',M_QTPROD));
                           //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
                           //
                      End
                      Else
                          txtNR34.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 36
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('36') + ' OR GTM_TAMANH='+quotedstr('PP'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR36.Lines.Add(FormatFloat('###',M_QTPROD));
                           //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
                           //
                      End
                      Else
                          txtNR36.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 38
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('38') + ' OR GTM_TAMANH='+quotedstr('P'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR38.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR38.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 40
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('40') + ' OR GTM_TAMANH='+quotedstr('M'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR40.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR40.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 42
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('42') + ' OR GTM_TAMANH='+quotedstr('G'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR42.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR42.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 44
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('44') + ' OR GTM_TAMANH='+quotedstr('GG'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR44.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR44.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 46
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('46'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR46.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR46.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 48
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('48'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR48.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR48.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 50
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('50'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR50.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR50.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      txtQTPROD.Lines.Add(FormatFloat('###',W_QTDCOR));
                      txtTOTAL.Lines.Add(FormatFloat('###,###,##0.#0', M_VLUNIT*W_QTDCOR));
                      //
                      M_QUANTO := M_QUANTO+W_QTDCOR;
                      M_TOUNIT := M_TOUNIT+M_VLUNIT;
                      M_TOGERA := M_TOGERA+(M_VLUNIT*W_QTDCOR);
                 End;
                 //
                 txtTOQUAN.Caption := FormatFloat('###',M_QUANTO);
                 txtTOPREC.Caption := FormatFloat('###,##0.#0',M_TOUNIT);
                 txtTOTALGERAL.Caption := FormatFloat('###,###,##0.#0',M_TOGERA);
            End;     // fim-with-frmRelPedidos
             //
              dmInfoModa.qryCores.Next;      // próximo-registro
         End;   // fim-do-enquanto dmInfoModa.qryCores
      //
      dmInfoModa.qryItens.Next;
     End;   //fim-do-enquanto dmInfoModa.qryItens
     //
     With  frmRelPedidos do
     begin
          //
          With qryClientes Do
          Begin
               SQL.Clear;
               Close;
               SQL.Add('Select * from SACCLI Where (CLI_CDCLIE=:pCDCLIE)');
               ParamByName('pCDCLIE').AsString := M_CDCLIE;
               Prepare;
               OPen;
          End;
          //
          txtTOQUAN.Caption := FormatFloat('###,###,##0.#0',M_QUANTO);
          txtTOPREC.Caption := FormatFloat('###,###,##0.#0',M_TOUNIT);
          txtTOTALGERAL.Caption := FormatFloat('###,###,##0.#0',M_TOGERA);
          //
          txtNRPEDI.Caption := M_NRPEDI;
          Screen.Cursor := crDefault;          
          qrRelPedidos.Preview;
     End;
     //
  Finally
     Screen.Cursor := crDefault;
     frmRelPedidos.Free;
  End;
  //
  Application.ProcessMessages;
end;

procedure TfrmCadPedidos.qryItensPedidosCalcFields(DataSet: TDataSet);
begin
     qryItensPedidosITE_SUBTOT.AsCurrency :=
        qryItensPedidosITP_VLUNI2.AsCurrency*qryItensPedidosITP_QTPROD.AsFloat;
end;

procedure TfrmCadPedidos.LISTA_PRODUTOS;
begin
     With qryItensPedidos do
     begin
         DisableControls;
         Close;
         //
         ParamByName('pNRPEDI').AsString := M_NRPEDI;
         //
         Prepare;
         Open;
         EnableControls;
     End;
     //
     If (qryItensPedidos.RecordCount > 0) Then
       btExcluir.Enabled := True
     Else
       btExcluir.Enabled := False;
end;

procedure TfrmCadPedidos.btExcluirClick(Sender: TObject);
Var
   N_NRPEDI, N_CDBARR : String;
   W_NRITEM : integer;
begin
  Try
    If Application.MessageBox('Excluir item atual?',
               'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
    Begin
         N_NRPEDI := dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
         N_CDBARR := qryItensPedidos.FieldByName('ITP_CDPROD').AsString;
         //
         With qryExcluirItens do
         Begin
              SQL.Clear;
              Close;
              SQL.Add('Delete from SACITP  Where (ITP_NRPEDI = :pNRPEDI)');
              SQL.Add('And (ITP_CDPROD = :pCDBARR )');
              //
              ParamByName('pNRPEDI').AsString := N_NRPEDI;
              ParamByName('pCDBARR').AsString := N_CDBARR;
              //
              ExecSQL;
         End;
         //
         With qryApagarItens do
         Begin
              SQL.Clear;
              Close;
              SQL.Add('Delete from SACGTM Where (GTM_NRPEDI = :pNRPEDI)');
              SQL.Add('And (GTM_CDPROD = :pCDBARR )');
              //
              ParamByName('pNRPEDI').AsString := N_NRPEDI;
              ParamByName('pCDBARR').AsString := N_CDBARR;
              //
              ExecSQL;
         End;
         //
         dmInfoModa.tbItensPedido.Close;
         dmInfoModa.tbItensPedido.Filtered := False;
         dmInfoModa.tbItensPedido.Filter   := 'ITP_NRPEDI='
             +QuotedStr(dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString);
         dmInfoModa.tbItensPedido.Filtered := True;
         dmInfoModa.tbItensPedido.Open;
         //
         dmInfoModa.tbItensPedido.DisableControls;
         dmInfoModa.tbItensPedido.First;
         W_NRITEM := 1;
         While not (dmInfoModa.tbItensPedido.Eof) do
         begin
              dmInfoModa.tbItensPedido.Edit;
              dmInfoModa.tbItensPedido.FieldByName('ITP_NRITEM').AsString :=
                  uFuncoes.StrZero(InttoStr(W_NRITEM),3);
              //
              W_NRITEM := W_NRITEM+1;
              //
              dmInfoModa.tbItensPedido.Next;
         End;
         dmInfoModa.tbItensPedido.EnableControls;
         //
         LISTA_PRODUTOS;
         TOTAL_PEDIDO2;
   End;
  //
  Except
      Showmessage('Erro ao tentar excluit item!!!');
  End;
end;

procedure TfrmCadPedidos.TOTAL_PEDIDO2;
Var
   W_TOPEDI, W_QTPROD, W_VLUNIT : Real;
begin
     W_TOPEDI := 0;
     W_QTPROD := 0;
     W_VLUNIT := 0;
     //
     With qryTOPEDI do
     begin
          SQL.Clear;
          Close;
          SQL.Add('Select * from SACITP');
          SQL.Add('Where (ITP_NRPEDI = :pNRPEDI)');
          //
          ParamByName('pNRPEDI').AsString :=
            dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
          //
          Prepare;
          Open;
          First;
     End;
     //
     While not (qryTOPEDI.Eof) do
     Begin
          W_QTPROD := qryTOPEDI.FieldByName('ITP_QTPROD').AsFloat;
          W_VLUNIT := qryTOPEDI.FieldByName('ITP_VLUNIT').AsFloat;
          //
          W_TOPEDI := W_TOPEDI + (W_QTPROD*W_VLUNIT);
          qryTOPEDI.Next;
     End;
     //M_TOPEDI := 0;
     //
     dmInfoModa.tbPedidos.FieldByName('PED_TOPEDI').AsCurrency := W_TOPEDI;
     //
     qryTOPEDI.Close; 
end;

procedure TfrmCadPedidos.spFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadPedidos.dbePedidoKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key := #0;
     //
     If (Key = #13) and not uFuncoes.Empty(dbePedido.Text) Then
     begin
          Key := #0;
          dbeDTPEDI.SetFocus;
     End;
end;

procedure TfrmCadPedidos.dbePedidoExit(Sender: TObject);
begin
     If not uFuncoes.Empty(dbePedido.Text) Then
     Begin
          dbePedido.Text := uFuncoes.StrZero(dbePedido.Text,6);
          //
          With qryLocPedido do
          Begin
               Close;
               //
               ParamByName('pORDSER').AsString := dbePedido.Text;
               //
               Open;
          End;
          //
          If (qryLocPedido.RecordCount > 0) Then
          Begin
               Application.MessageBox('Pedido já cadastrado!!!',
                  'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
               dbePedido.SetFocus;
               dbePedido.Clear;
               qryLocPedido.Close; 
               //
               Exit;
          End;
     End;
end;

procedure TfrmCadPedidos.dbeDTPEDIKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(dbeDTPEDI.Text) Then
     begin
          Key := #0;
          cmbNMVEND.SetFocus;
     End;
end;

End.


