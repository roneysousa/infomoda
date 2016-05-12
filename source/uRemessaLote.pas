unit uRemessaLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, ToolEdit, ExtCtrls, DB, DBTables;

type
  TfrmRemessaLote = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    edtDTINIC: TDateEdit;
    edtDTFINA: TDateEdit;
    edtNRLOTE: TEdit;
    Panel4: TPanel;
    btGerar: TBitBtn;
    btVisualizar: TBitBtn;
    btFechar: TBitBtn;
    Panel2: TPanel;
    qryExisteLote: TQuery;
    qryIncRemessa: TQuery;
    qryProdutos: TQuery;
    qryIncluirDados: TQuery;
    qryPedido: TQuery;
    qryLimparRemessa: TQuery;
    qryProdutosRemessa: TQuery;
    qryProdutosRemessaREM_NRSEQU: TIntegerField;
    qryProdutosRemessaREM_CDPROD: TStringField;
    qryProdutosRemessaREM_NMPROD: TStringField;
    qryProdutosRemessaREM_QTPROD: TFloatField;
    qryItens: TQuery;
    qryLocItem: TQuery;
    qryLocRemessa: TQuery;
    dsProdutos: TDataSource;
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGerarClick(Sender: TObject);
    procedure edtNRLOTEKeyPress(Sender: TObject; var Key: Char);
    procedure edtNRLOTEExit(Sender: TObject);
  private
     Procedure GERAR_DADOS;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRemessaLote: TfrmRemessaLote;
  M_TOPECA : Double;
  M_PEDIDO : String;

implementation

Uses uFuncoes, uRelRemessa, uPrincipal, udmInfoModa;

{$R *.dfm}

procedure TfrmRemessaLote.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmRemessaLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TfrmRemessaLote.btGerarClick(Sender: TObject);
begin
     frmPrincipal.Info.Panels[0].Text := 'Aguarde geração de relatorio...';
     //
     If uFuncoes.Empty(edtNRLOTE.Text) Then
     Begin
          ShowMessage('Digite o numero do lote.');
          edtNRLOTE.SetFocus;
          frmPrincipal.Info.Panels[0].Text := ' ';
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
         GERAR_DADOS;
         //
         Try
             Application.CreateForm(TfrmRelRemessa, frmRelRemessa);
             //
             With frmRelRemessa do
             begin
                  txtNRLOTE.Caption := 'LOTE : '+ uFuncoes.StrZero(edtNRLOTE.Text,7);
                  txtNRPEDIDO.Caption := M_PEDIDO;
                  //txtNRPEDIDO.Caption := edtPDINIC.Text +' A '+edtPDFINA.Text;
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
             frmPrincipal.Info.Panels[0].Text := ' ';
             btGerar.Enabled := True;
             //
             edtNRLOTE.Clear;
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

procedure TfrmRemessaLote.GERAR_DADOS;
Var
   M_NRPEDI, M_CDPROD, M_CODCOR, M_CDTAMA : String;
   M_DTPEDI : TDate;
   M_NRLOTE, M_NRINIC, M_NRFINA : String;
   M_QTPROD : Double;
begin
     M_NRLOTE := edtNRLOTE.Text;
     M_PEDIDO := ' ';
     //
     With qryPedido do
     begin
          Close;
          //
          ParamByName('pNRLOTE').AsString := M_NRLOTE;
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
          M_PEDIDO := M_PEDIDO + Copy(qryPedido.FieldByName('PED_NRPEDI').AsString,4,4) +'/';
          qryPedido.Next;
     End;
          //
          With qryItens do
          begin
               Close;
               //
               ParamByName('pNRLOTE').AsString := M_NRLOTE;
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
                        SQL.Add('INSERT INTO SACRIT (RIT_CDPROD, RIT_CDTAMA, RIT_NRLOTE,RIT_CODCOR, RIT_QTPROD)');
                        SQL.Add('VALUES (:pCDPROD, :pCDTAMA, :pNRLOTE, :pCODCOR, :pQTPROD)');
                        //
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pNRLOTE').AsString := M_NRLOTE;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
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
{          qryPedido.next
     End;}
end;

procedure TfrmRemessaLote.edtNRLOTEKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (Key = #13) and not uFuncoes.Empty(edtNRLOTE.Text) Then
    Begin
         key:=#0;
         btGerar.SetFocus;
    End;
end;

procedure TfrmRemessaLote.edtNRLOTEExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtNRLOTE.Text) Then
     begin
         If (dmInfoModa.tbParametros.Active = False) Then
           dmInfoModa.tbParametros.Open;
         //
         With qryExisteLote do
         begin
              Close;
              //
              ParamByname('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
              Prepare;
              Open;
         End;
         //
         If (qryExisteLote.RecordCount = 0) Then
         Begin
              ShowMessage('Não existente este lote.');
              qryExisteLote.Close;
              edtNRLOTE.SetFocus;
              edtNRLOTE.Clear;
              Exit;
         End;
         //
         edtNRLOTE.Text := uFuncoes.StrZero(edtNRLOTE.Text,7);
     End;
end;

end.
