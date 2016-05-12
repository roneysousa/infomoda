unit uConfRemessa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, Grids, DBGrids, Buttons, DB,
  DBTables;

type
  TfrmConfRemessa = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Label2: TLabel;
    edtDTINIC: TDateEdit;
    Label3: TLabel;
    edtDTFINA: TDateEdit;
    Panel4: TPanel;
    btGerar: TBitBtn;
    qryProdutosRemessa: TQuery;
    dsProdutos: TDataSource;
    qryProdutos: TQuery;
    qryLimparRemessa: TQuery;
    Label1: TLabel;
    Label4: TLabel;
    edtPDINIC: TEdit;
    edtPDFINA: TEdit;
    qryPedido: TQuery;
    qryItens: TQuery;
    qryLocItem: TQuery;
    qryIncluirDados: TQuery;
    qryIncRemessa: TQuery;
    btVisualizar: TBitBtn;
    btFechar: TBitBtn;
    qryProdutosRemessaREM_NRSEQU: TIntegerField;
    qryProdutosRemessaREM_CDPROD: TStringField;
    qryProdutosRemessaREM_QTPROD: TFloatField;
    qryProdutosRemessaREM_NMPROD: TStringField;
    qryLocRemessa: TQuery;
    qryExistPedido: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btGerarClick(Sender: TObject);
    procedure edtPDINICKeyPress(Sender: TObject; var Key: Char);
    procedure edtPDINICExit(Sender: TObject);
    procedure edtPDFINAExit(Sender: TObject);
    procedure edtPDFINAKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure edtPDINICChange(Sender: TObject);
    procedure edtPDINICEnter(Sender: TObject);
  private
     Procedure GERAR_DADOS;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfRemessa: TfrmConfRemessa;
  M_TOPECA : Double;

implementation

uses uRelRemessa, uFuncoes, uPrincipal, udmInfoModa;

{$R *.dfm}

procedure TfrmConfRemessa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     qryProdutosRemessa.Close; 
     //
     Action := caFree;
end;

procedure TfrmConfRemessa.GridProdutosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      if (Shift = [ssCtrl]) and (Key = 46) Then 
          KEY := 0;
end;

procedure TfrmConfRemessa.btGerarClick(Sender: TObject);
Var
  N_TOPECA : Real;
  N_PEDIDO : String;
begin
     If uFuncoes.Empty(edtPDINIC.Text) Then
     Begin
          ShowMessage('Digite o pedido inicial.');
          edtPDINIC.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(edtPDFINA.Text) Then
     Begin
          ShowMessage('Digite o pedido do final.');
          edtPDFINA.SetFocus;
          Exit;
     End;
     //
     Try
         btGerar.Enabled  := False;
         With qryLimparRemessa do
         Begin
              SQl.Clear;
              Close;
              SQL.Add('Delete from SACRIT');
              //
              ExecSQL;
         End;
         //
         With qryLimparRemessa do
         Begin
              SQl.Clear;
              Close;
              SQL.Add('Delete from SACREM');
              //
              ExecSQL;
         End;
         //
         N_TOPECA := 0;
         N_PEDIDO := '';
         //
         GERAR_DADOS;
         //
         Try
             Application.CreateForm(TfrmRelRemessa, frmRelRemessa);
             //
             With frmRelRemessa do
             begin
                  //txtNRLOTE.Caption := uFuncoes.StrZero(edtNRLOTE.Text,7);
                  //txtNRPEDIDO.Caption := N_PEDIDO;
                  txtNRPEDIDO.Caption := edtPDINIC.Text +' A '+edtPDFINA.Text;
                  txtUSUARIO.Caption  := uPrincipal.M_NMUSUA; 
                  //txtTOTPEC.Caption := FloattoStr(M_TOPECA)+ ' PEÇA(S)';
                  //FormatFloat('###,###,##0.#0',N_TOPECA);
                 //
                 {With qryRemessa do
                 Begin
                      Close;
                      //
                      ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
                      //
                      Prepare;
                      Open;
                 End;}
                 //
                 tbRem.Open;
                 //
                 tbRemessa.Open;
                 //
                 qrRemessa.Preview;
             End;
        Finally
             frmRelRemessa.Free;
             btGerar.Enabled := True;
             //
             edtPDINIC.Clear;
             edtPDFINA.Clear;
        End;

         //
         {With qryProdutosRemessa do
         begin
              SQL.Clear;
              Close;
              SQL.Add('Select * from SACREM order by REM_CDPROD');
              Prepare;
              Open;
         End;}
        //
     Except
           ShowMessage('Erro ao tentar gerar Remessa de pedido.');
           btGerar.Enabled  := True;
     End;
end;

procedure TfrmConfRemessa.edtPDINICKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (Key = #13) and not uFuncoes.Empty(edtPDINIC.Text) Then
    Begin
         key:=#0;
         edtPDFINA.SetFocus;
    End;
end;

procedure TfrmConfRemessa.GERAR_DADOS;
Var
   M_NRPEDI, M_CDPROD, M_CODCOR, M_CDTAMA : String;
   M_DTPEDI : TDate;
   M_NRINIC, M_NRFINA : String;
   M_QTPROD : Double;
begin
     M_NRINIC := edtPDINIC.Text;
     M_NRFINA := edtPDFINA.Text;
     //
     With qryPedido do
     begin
          Close;
          //
          ParamByName('pNRINIC').AsString := M_NRINIC;
          ParamByName('pNRFINA').AsString := M_NRFINA;
          //
          Prepare;
          Open;
          First;
     End;
     //
     M_TOPECA := 0;
     While not (qryPedido.Eof) Do
     Begin
          M_NRPEDI := qryPedido.FieldByName('PED_NRPEDI').AsString;
          M_DTPEDI := qryPedido.FieldByName('PED_DTPEDI').AsDateTime;
          //
          With qryItens do
          begin
               Close;
               //
               ParamByName('pNRPEDI').AsString := M_NRPEDI;
               //
               Prepare;
               Open;
               First;
          End;
          //
          M_QTPROD := 0;
          If (qryItens.RecordCount > 0) Then
          Begin
            qryItens.First;
            While not (qryItens.Eof) do
            begin
               M_CDPROD := qryItens.FieldByName('GTM_CDPROD').AsString;
               M_CODCOR := qryItens.FieldByName('GTM_CODCOR').AsString;
               M_CDTAMA := qryItens.FieldByName('GTM_CDTAMA').AsString;
               M_QTPROD := qryItens.FieldByName('GTM_QTPROD').AsFloat;
               //
               With qryLocItem do
               begin
                    Close;
                    //
                    ParamByName('pCDPROD').AsString := M_CDPROD;
                    ParamByName('pCDTAMA').AsString := M_CDTAMA;
                    ParamByName('pCODCOR').AsString := M_CODCOR;
                    //
                    Prepare;
                    Open;
               End;
               //
               //ShowMessage('Quant : '+ InttoStr(qryLocItem.RecordCount));
               //
               If (qryLocItem.RecordCount = 0) Then
               Begin
                   With qryLocRemessa do
                   Begin
                      Close;
                      //
                      ParamByName('pCDPROD').AsString := M_CDPROD;
                      //
                      Prepare;
                      Open;
                   End;
                   //
                   If (qryLocRemessa.RecordCount = 0) Then
                   BEgin
                     //
                     With qryIncRemessa do
                     begin
                          SQL.Clear;
                          Close;
                          SQL.Add('INSERT INTO SACREM (REM_CDPROD, REM_QTPROD)');
                          SQL.Add('VALUES (:pCDPROD, :pQTPROD)');
                          //
                          ParamByName('pCDPROD').AsString := M_CDPROD;
                          ParamByName('pQTPROD').AsFloat  := M_QTPROD;
                          //
                          ExecSQL;
                     End;
                   End;
                   // Incluir
                   With qryIncluirDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('INSERT INTO SACRIT (RIT_CDPROD, RIT_CDTAMA, RIT_CODCOR, RIT_QTPROD)');
                        SQL.Add('VALUES (:pCDPROD, :pCDTAMA, :pCODCOR, :pQTPROD)');
                        //
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pQTPROD').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;   // fim-with
                   //
                   M_TOPECA := M_TOPECA+M_QTPROD;
                   //
               End
               Else   // Atualizar a quantidade
               Begin
                   // Atualizar
                  { With qryIncRemessa do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('UPDATE SACREM SET REM_QTPROD = REM_QTPROD + :pQTPROD');
                        SQL.Add('Where (REM_CDPROD = :pCDPROD)');
                        //
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pQTPROD').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;}
                   //
                   With qryIncluirDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('UPDATE SACRIT SET RIT_QTPROD = RIT_QTPROD + :pQTPROD');
                        SQL.Add('Where (RIT_CDPROD = :pCDPROD) And (RIT_CODCOR = :pCODCOR)');
                        SQL.Add('And (RIT_CDTAMA = :pCDTAMA)');
                        //
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pQTPROD').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;   // fim-with
                   //
                   M_TOPECA := M_TOPECA+M_QTPROD;
                   //
               End;     //fim-se-localiza
               //
               qryItens.Next; 
             End;
          End;
          //
          qryPedido.next
     End;
end;

procedure TfrmConfRemessa.edtPDINICExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtPDINIC.Text) Then
     begin
         If (dmInfoModa.tbParametros.Active = False) Then
           dmInfoModa.tbParametros.Open;
         //
         With qryExistPedido do
         begin
              Close;
              //
              ParamByname('pNRPEDI').AsString := uFuncoes.StrZero(edtPDINIC.Text,7);
              Prepare;
              Open;
         End;
         //
         If (qryExistPedido.RecordCount = 0) Then
         Begin
              ShowMessage('Número de pedido não existente!!!');
              qryExistPedido.Close;
              edtPDINIC.SetFocus;
              edtPDINIC.Clear;
              Exit;
         End;
         //
         edtPDINIC.Text := uFuncoes.StrZero(edtPDINIC.Text,7);
     End;
end;

procedure TfrmConfRemessa.edtPDFINAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtPDFINA.Text) Then
     begin
         With qryExistPedido do
         begin
              Close;
              //
              ParamByname('pNRPEDI').AsString := uFuncoes.StrZero(edtPDFINA.Text,7);
              Prepare;
              Open;
         End;
         //
         If (qryExistPedido.RecordCount = 0) Then
         Begin
              ShowMessage('Número de pedido não existente!!!');
              qryExistPedido.Close;
              edtPDFINA.SetFocus;
              edtPDFINA.Clear;
              Exit;
         End;
         //
         edtPDFINA.Text := uFuncoes.StrZero(edtPDFINA.Text,7);
         //
         If (edtPDFINA.Text < edtPDINIC.Text) Then
         Begin
              ShowMessage('O numero do pedido final não'+#13
                          +'ser menor que o inicial!!!');
              edtPDFINA.SetFocus;
              edtPDFINA.Clear;
              Exit;  
         End;
     End;
end;

procedure TfrmConfRemessa.edtPDFINAKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
    If (Key = #13) and not uFuncoes.Empty(edtPDFINA.Text) Then
    Begin
         key:=#0;
         If (btGerar.Enabled = False) Then
             btGerar.Enabled := True;
          //   
         btGerar.SetFocus;
    End;
end;

procedure TfrmConfRemessa.FormActivate(Sender: TObject);
begin
     edtPDINIC.SetFocus;
end;

procedure TfrmConfRemessa.btFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmConfRemessa.btVisualizarClick(Sender: TObject);
begin
     If uFuncoes.Empty(edtPDINIC.Text) Then
     Begin
          ShowMessage('Digite o pedido inicial.');
          edtPDINIC.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(edtPDFINA.Text) Then
     Begin
          ShowMessage('Digite o pedido do final.');
          edtPDFINA.SetFocus;
          Exit;
     End;
         //
         Try
             Application.CreateForm(TfrmRelRemessa, frmRelRemessa);
             //
             With frmRelRemessa do
             begin
                  //txtNRLOTE.Caption := uFuncoes.StrZero(edtNRLOTE.Text,7);
                  //txtNRPEDIDO.Caption := N_PEDIDO;
                  txtNRPEDIDO.Caption := 'DE '+ edtPDINIC.Text +' A '+edtPDFINA.Text;
                  txtTOTPEC.Caption := FloattoStr(M_TOPECA)+ ' PEÇA(S)';
                  //FormatFloat('###,###,##0.#0',N_TOPECA);
                 //
                 {With qryRemessa do
                 Begin
                      Close;
                      //
                      ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
                      //
                      Prepare;
                      Open;
                 End;}
                 //
                 tbRem.Open;
                 //
                 tbRemessa.Open;
                 //
                 qrRemessa.Preview;
             End;
        Finally
             frmRelRemessa.Free;
             btGerar.Enabled := True;
        End;
end;

procedure TfrmConfRemessa.edtPDINICChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtPDINIC.Text) Then
       qryProdutosRemessa.Close;
end;

procedure TfrmConfRemessa.edtPDINICEnter(Sender: TObject);
begin
     If (btGerar.Enabled = False) Then
       btGerar.Enabled := True;
end;

end.
