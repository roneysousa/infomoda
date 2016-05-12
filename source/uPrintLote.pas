unit uPrintLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, DB, DBTables,
  DBCtrls;

type
  TfrmPrintLote = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    edtNRLOTE: TEdit;
    lbl_NRLOTE: TLabel;
    pnlGrid: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    GridPedidos: TDBGrid;
    btVisualizar: TBitBtn;
    btFechar: TBitBtn;
    dsProdutosLote: TDataSource;
    qryLotes: TQuery;
    qryLotesLOT_NRLOTE: TStringField;
    qryLotesLOT_NRPEDI: TStringField;
    qryLotesLOT_CDPROD: TStringField;
    qryLotesLOT_NMPROD: TStringField;
    qryLotesLOT_QTPROD: TFloatField;
    qryLotesLOT_NMPRO2: TStringField;
    qryQUANTIDADE: TQuery;
    qryQUANTIDADETOTAL: TFloatField;
    btImprimir: TBitBtn;
    qryLocalizar: TQuery;
    qryQTCORES: TQuery;
    qryQTNUMEROS: TQuery;
    qryQTCORESGTM_TOQUAN: TFloatField;
    qryProdLote: TQuery;
    qryProdLoteGTM_NRPEDI: TStringField;
    qryProdLoteGTM_NRLOTE: TStringField;
    qryProdLoteGTM_CDPROD: TStringField;
    qryProdLoteGTM_CDTAMA: TStringField;
    qryProdLoteGTM_CODCOR: TStringField;
    qryProdLoteGTM_TAMANH: TStringField;
    qryProdLoteGTM_QTPROD: TFloatField;
    qryProdLoteGTM_FLSITU: TStringField;
    qryIncItemRem: TQuery;
    btRemessa: TBitBtn;
    qryLocItem: TQuery;
    qryAtualizarItem: TQuery;
    qryRemessa: TQuery;
    qryLimparRemessa: TQuery;
    qryLotesLOT_NRSEQU: TStringField;
    qryPedido: TQuery;
    procedure edtNRLOTEKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNRLOTEChange(Sender: TObject);
    procedure dsProdutosLoteDataChange(Sender: TObject; Field: TField);
    procedure btVisualizarClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btRemessaClick(Sender: TObject);
  private
    { Private declarations }
    Procedure CONSULTA;
    Procedure QUANTIDADE;
    Procedure QUANTIDADE_CORES;
    Procedure QUANTIDADE_TAMANHO;
    Procedure IMPRIMIR_TODOS;
    Procedure REMESSA;
  public
    { Public declarations }
  end;

var
  frmPrintLote: TfrmPrintLote;

implementation

Uses udmInfoModa, uFuncoes, uPrincipal, uRelImpressaoPedido, uRelPedidos,
  uRelRemessa;

{$R *.dfm}

procedure TfrmPrintLote.edtNRLOTEKeyPress(Sender: TObject; var Key: Char);
Var
    W_QTMINI : Double;
begin
     If not( key in['0'..'9',#8, #13] ) then
          key:=#0;
     //
     //
     If (Key = #13) and not uFuncoes.Empty(edtNRLOTE.Text)  Then
     begin
          key:=#0;
          edtNRLOTE.Text := uFuncoes.StrZero(edtNRLOTE.Text,7); 
          //
          If (dmInfoModa.tbParametros.Active = False) Then
             dmInfoModa.tbParametros.Open;
          //
          If (StrtoFloat(edtNRLOTE.Text)> dmInfoModa.tbParametros.FieldByName('PAR_NRLOTE').AsFloat) Then
          Begin
               Application.MessageBox('Lote não existente!!!' ,
                  'ATENÇÃO',MB_OK+MB_ICONINFORMATION);
               qryLotes.Close;
               edtNRLOTE.Clear;
               edtNRLOTE.SetFocus;
               Exit;
          End;
          //
          CONSULTA;
          //
          W_QTMINI := dmInfoModa.tbParametros.FieldByName('PAR_QTMINI').AsFloat;
          //
          With qryLotes do
          begin
               Close;
               ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
               ParamByName('pQTMINI').AsFloat  := W_QTMINI;
               Prepare;
               Open;
          End;
          //
          If (qryLotes.RecordCount = 0) Then
          begin
               Application.MessageBox('Nenhum produto deste lote atingiu'+#13
                                     +'a quantidade minima!!!' ,
              'ATENÇÃO',MB_OK+MB_ICONINFORMATION);
              //
              qryLotes.Close;
              edtNRLOTE.SetFocus;
              edtNRLOTE.Clear;
              Exit;
          End;
     End;
end;

procedure TfrmPrintLote.btFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmPrintLote.CONSULTA;
Var
    W_NRSEQU, M_NRPEDI, M_NRLOTE, M_CDPROD, M_NMPROD : String;
    M_QTPROD : Double;
begin
  try
      Screen.Cursor := crHourGlass;
     { Escreva o ação a executar aqui }
     //
     Try
          dmInfoModa.tbLotes.Exclusive := True;
          dmInfoModa.tbLotes.Open;
          uFuncoes.EsvaziaTabela(dmInfoModa.tbLotes);
          dmInfoModa.tbLotes.Close;
     Except
          ShowMessage('Erro ao tentar abria tabela!!!');
          Exit;
     End;
     M_NRLOTE := uFuncoes.StrZero(edtNRLOTE.Text,7);
     //
     With dmInfoModa.qryPedido do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Select * from SACPED Where (PED_NRLOTE=:pNRLOTE)');
          ParamByName('pNRLOTE').AsString := M_NRLOTE;
          Prepare;
          Open;
          First;
     End;
     //
     While not (dmInfoModa.qryPedido.Eof) do
     Begin
           M_NRPEDI := dmInfoModa.qryPedido.FieldByName('PED_NRPEDI').AsString;
           //
           With dmInfoModa.qryProdutosLote do
           Begin
                SQL.Clear;
                Close;
                {SQL.Add('Select * from SACGTM Where (GTM_NRPEDI=:pNRPEDI)');
                ParamByName('pNRPEDI').AsString := M_NRPEDI;}
                SQL.Add('Select * from SACITP Where (ITP_NRPEDI=:pNRPEDI)');
                ParamByName('pNRPEDI').AsString := M_NRPEDI;
                Prepare;
                Open;
                First;
           End;
           //
           While not (dmInfoModa.qryProdutosLote.Eof) do
           begin
               M_CDPROD := dmInfoModa.qryProdutosLote.FieldByName('ITP_CDPROD').AsString;
               //
               With qryQUANTIDADE do
               Begin
                     SQL.Clear;
                     Close;
                     SQL.Add('Select SUM(ITP_QTPROD) TOTAL from SACITP');
                     SQL.Add('Where (ITP_NRPEDI=:fNRPEDI) And (ITP_CDPROD=:fCDPROD)');
                     ParamByName('fNRPEDI').AsString := M_NRPEDI;
                     ParamByName('fCDPROD').AsString := M_CDPROD;
                     Prepare;
                     Open;
                     M_QTPROD := qryQUANTIDADE.FieldByName('TOTAL').AsFloat;
                     //
                     Close;
               End;
               //M_NMPROD := dmInfoModa.qryProdutosLote.FieldByName('GTM_NMPROD').AsString;
               //
               With dmInfoModa.qryItensLote do
               begin
                    SQL.Clear;
                    Close;
                    SQL.Add('Select * from SACGTM Where (GTM_NRLOTE=:pNRLOTE)');
                    SQL.Add('And (GTM_CDPROD=:pCDPROD)');
                    //ParamByName('pNRPEDI').AsString := M_NRPEDI;
                    ParamByName('pNRLOTE').AsString := M_NRLOTE;
                    ParamByName('pCDPROD').AsString := M_CDPROD;
                    Prepare;
                    Open;
               End;
               //
               with qryLocalizar do
               begin
                    Close;
                    //
                    ParamByName('pNRLOTE').AsString := M_NRLOTE;
                    ParamByName('pCDPROD').AsString := M_CDPROD;
                    Prepare;
                    Open;
               End;
               //
               If (qryLocalizar.RecordCount = 0) Then
               Begin
                 iF (dmInfoModa.tbParametros.Active = FALSE) Then
                     dmInfoModa.tbParametros.Open;
                 //
                 dmInfoModa.tbParametros.Edit;
                 //
                 dmInfoModa.tbParametros.FieldByName('PAR_NRSEQU').AsFloat :=
                    dmInfoModa.tbParametros.FieldByName('PAR_NRSEQU').AsFloat +1;
                 dmInfoModa.tbParametros.Post;
                 //
                 W_NRSEQU := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_NRSEQU').AsString,10);
                 //
                 With dmInfoModa.qryIncLote do
                 begin
                    SQL.Clear;
                    Close;
                    SQL.Add('INSERT INTO SACLOT (LOT_NRSEQU,LOT_NRLOTE,LOT_NRPEDI,LOT_CDPROD,LOT_QTPROD) VALUES');
                    SQL.Add('(:pNRSEQU,:pNRLOTE,:pNRPEDI,:pCDPROD,:pQTPROD)');
                    //
                    ParamByName('pNRSEQU').AsString := W_NRSEQU;
                    ParamByName('pNRLOTE').AsString := M_NRLOTE;
                    ParamByName('pNRPEDI').AsString := M_NRPEDI;
                    ParamByName('pCDPROD').AsString := M_CDPROD;
                    ParamByName('pQTPROD').AsFloat  := M_QTPROD;
                    //
                    Execsql;
                 End;
               End
               Else
               Begin
                 With dmInfoModa.qryIncLote do
                 begin
                    SQL.Clear;
                    Close;
                    SQL.Add('UPDATE SACLOT SET LOT_QTPROD = LOT_QTPROD+:pQTPROD');
                    SQL.Add('Where (LOT_NRLOTE=:pNRLOTE) And (LOT_CDPROD=:pCDPROD)');
                    //
                    ParamByName('pNRLOTE').AsString := M_NRLOTE;
                    ParamByName('pCDPROD').AsString := M_CDPROD;
                    ParamByName('pQTPROD').AsFloat  := M_QTPROD;
                    //
                    Execsql;
                 End;
               End;     //fim-se
               //
               dmInfoModa.qryProdutosLote.Next;
            End;
           //
           dmInfoModa.qryPedido.Next;
     End;
     //
     dmInfoModa.qryPedido.Close;
     dmInfoModa.qryProdutosLote.Close;
     dmInfoModa.qryItensLote.Close; 
     //
  finally
      Screen.Cursor := crDefault;
  end;
  Application.ProcessMessages;
end;

procedure TfrmPrintLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     qryLotes.Close;
     uFuncoes.Limpar_Status;
     //
     Action := caFree;
end;

procedure TfrmPrintLote.edtNRLOTEChange(Sender: TObject);
begin
      If uFuncoes.Empty(edtNRLOTE.Text) Then
         qryLotes.Close; 
end;

procedure TfrmPrintLote.dsProdutosLoteDataChange(Sender: TObject;
  Field: TField);
begin
     frmPrincipal.Info.Panels[2].Text := ' Registro: ' + IntToStr(dsProdutosLote.DataSet.RecNo) +
                          ' de ' + IntToStr(dsProdutosLote.DataSet.RecordCount);
end;

procedure TfrmPrintLote.btVisualizarClick(Sender: TObject);
Var
   M_VLCUST : Real;
   M_NRITEM : Integer;
   M_CDMODE, M_CDPROD : String;
begin
  If (qryLotes.Active =  False) Then
  Begin
       Application.MessageBox('Digite o número do lote!!!'+#13,
              'ATENÇÃO',MB_DEFBUTTON2+MB_OK+MB_ICONINFORMATION);
       //
       edtNRLOTE.SetFocus;
       Exit;
  End;
  //
  Try
     //
     btVisualizar.Enabled := False;
     Application.CreateForm(TfrmRelModelo, frmRelModelo);
     //
     M_VLCUST := 0;
     M_NRITEM := 1;
     //M_NRPEDI := dmInfoModa.qryPedido.FieldByName('PED_NRPEDI').AsString;
     //M_CDMODE := dmInfoModa.qryModelo.FieldByName('MDP_CDMODE').AsString;
     M_CDPROD := qryLotes.FieldByName('LOT_CDPROD').AsString;
     //
     With frmRelModelo.qryRelModelo do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Select * from SACMDP Where (MDP_CDPROD=:pCDPROD)');
          ParamByName('pCDPROD').AsString := M_CDPROD;
          Prepare;
          Open;
          //
          M_CDMODE := frmRelModelo.qryRelModelo.FieldByName('MDP_CDMODE').AsString;
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
     frmRelModelo.qryItens.Close;
     //
     //QUANTIDADE;
     QUANTIDADE_CORES;
     //
      With frmRelModelo do
      begin
           //
           Le_Imagem_JPEG2(frmRelModelo.qryRelModeloMDP_IMGFRE, img_Modelo);
           //
           qrImpressaoPedido.Preview;
     End;
  Finally
     frmRelModelo.Free;
     btVisualizar.Enabled := True;
  End;
  //
end;

procedure TfrmPrintLote.QUANTIDADE;
Var
    W_NRPEDI, W_CDPROD, M_SPACE, M_NRLOTE, M_CODCOR :String;
    M_VLCUST, M_VLUNIT, M_QTPROD, M_QUANTO, M_TOUNIT,M_TOGERA, W_QTPROD : Real;
    W_TOTCOR, W_TOTNUM : Double;
begin
     //
     M_SPACE := '  ';
     W_NRPEDI := qryLotes.FieldByName('LOT_NRPEDI').AsString;
     W_CDPROD := qryLotes.FieldByName('LOT_CDPROD').AsString;
     M_NRLOTE := qryLotes.FieldByName('LOT_NRLOTE').AsString;
     //
     With dmInfoModa.qryItens2 do
     begin
          SQL.Clear;
          Close;
          //Sql.add('Select * from SACITP Where ITP_NRPEDI='+ quotedstr(W_NRPEDI));
          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(W_NRPEDI));
          //Sql.add('And GTM_NRLOTE='+ quotedstr(M_NRLOTE));
          Sql.add('And GTM_CDPROD='+ quotedstr(W_CDPROD));
          Prepare;
          Open;
          First;
     End;
     //
     W_TOTCOR := 0;
     W_TOTNUM := 0;
     //
     With frmRelModelo do
     begin
          txtTO34.Caption := '';
          txtTO36.Caption := '';
          txtTO38.Caption := '';
          txtTO40.Caption := '';
          txtTO42.Caption := '';
          txtTO44.Caption := '';
          txtTO46.Caption := '';
          txtTO48.Caption := '';
          txtTO50.Caption := '';
     End;
     //
     While not (dmInfoModa.qryItens2.Eof) do
     begin
       With frmRelModelo do
       begin
          M_QTPROD := dmInfoModa.qryItens2.FieldByName('GTM_QTPROD').AsFloat;
          M_QUANTO := M_QUANTO+M_QTPROD;
          W_CDPROD := dmInfoModa.qryItens2.FieldByName('GTM_CDPROD').AsString;
          M_VLUNIT := dmInfoModa.qryItens2.FieldByName('GTM_VLUNIT').AsFloat;
          M_TOUNIT := M_TOUNIT+M_VLUNIT;
          //
          With dmInfoModa.qryCores do
          Begin
               SQL.Clear;
               Close;
               Sql.add('Select * from SACCOR order by COR_CODCOR');
               Prepare;
               Open;
               First;
          End;
          //
        While not (dmInfoModa.qryCores.Eof) do
        begin
          M_CODCOR := dmInfoModa.qryCores.FieldByName('COR_CODCOR').AsString;
          //
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
              Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
              Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
              Sql.add('and GTM_TAMANH='+quotedstr('34'));
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          W_TOTCOR := 0;
          W_TOTNUM := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               //
               txtNR34.Lines.Add(FormatFloat('###',W_QTPROD));
               W_TOTCOR := W_TOTCOR+W_QTPROD;
               W_TOTNUM := W_TOTNUM+W_QTPROD;
               //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
               txtCor.Lines.Add(dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString);
               //
               txtNR36.Lines.Add(M_SPACE);
               txtNR38.Lines.Add(M_SPACE);
               txtNR40_02.Lines.Add(M_SPACE);
               txtNR42.Lines.Add(M_SPACE);
               txtNR44.Lines.Add(M_SPACE);
               txtNR46.Lines.Add(M_SPACE);
               txtNR48.Lines.Add(M_SPACE);
               txtNR50.Lines.Add(M_SPACE);
               //
               txtTOGRADE.Lines.Add(FormatFloat('###',W_TOTCOR));
               If (W_TOTNUM > 0) Then
                  txtTO34.Caption := FormatFloat('###',W_TOTNUM)
               Else
                  txtTO34.Caption := FormatFloat('###',W_TOTNUM);
               //
          End
          Else
               //txtNR34.Lines.Add(M_SPACE);
          //
          dmInfoModa.qryItensPedidos.Close;
          dmInfoModa.qryItens2.Next;
          //
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
              Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
              Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
              Sql.add('and GTM_TAMANH='+quotedstr('36')); //+' or GTM_TAMANH="PP"'
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          W_TOTCOR := 0;
          W_TOTNUM := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               txtNR36.Lines.Add(FormatFloat('###',W_QTPROD));
               W_TOTCOR := W_TOTCOR+W_QTPROD;
               W_TOTNUM := W_TOTNUM+W_QTPROD;
               //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
               txtCor.Lines.Add(dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString);
               //
               txtNR34.Lines.Add(M_SPACE);
               txtNR38.Lines.Add(M_SPACE);
               //txtNR40.Lines.Add(M_SPACE);
               txtNR42.Lines.Add(M_SPACE);
               txtNR44.Lines.Add(M_SPACE);
               txtNR46.Lines.Add(M_SPACE);
               txtNR48.Lines.Add(M_SPACE);
               txtNR50.Lines.Add(M_SPACE);
               //
               txtTOGRADE.Lines.Add(FormatFloat('###',W_TOTCOR));
               If (W_TOTNUM > 0) Then
                  txtTO36.Caption := FormatFloat('###',W_TOTNUM)
               Else
                  txtTO36.Caption := FormatFloat('###',W_TOTNUM);
               //
          End
          Else
               //txtNR36.Lines.Add(M_SPACE);
          //
          dmInfoModa.qryItensPedidos.Close;
          dmInfoModa.qryItens2.Next;
          //
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
              Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
              Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
              Sql.add('and GTM_TAMANH='+quotedstr('38')); //+' or GTM_TAMANH="P"'
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          W_TOTCOR := 0;
          W_TOTNUM := 0;;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               txtNR38.Lines.Add(FormatFloat('###',W_QTPROD));
               W_TOTCOR := W_TOTCOR+W_QTPROD;
               W_TOTNUM := W_TOTNUM+W_QTPROD;
               //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
               txtCor.Lines.Add(dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString);
               //
               txtNR34.Lines.Add(M_SPACE);
               txtNR36.Lines.Add(M_SPACE);
               //txtNR40.Lines.Add(M_SPACE);
               txtNR42.Lines.Add(M_SPACE);
               txtNR44.Lines.Add(M_SPACE);
               txtNR46.Lines.Add(M_SPACE);
               txtNR48.Lines.Add(M_SPACE);
               txtNR50.Lines.Add(M_SPACE);
               //
               txtTOGRADE.Lines.Add(FormatFloat('###',W_TOTCOR));
               If (W_TOTNUM > 0) Then
                  txtTO38.Caption := FormatFloat('###',W_TOTNUM)
               Else
                  txtTO38.Caption := FormatFloat('###',W_TOTNUM);
               //
          End
          Else
               //txtNR38.Lines.Add(M_SPACE);
          //
          dmInfoModa.qryItensPedidos.Close;
          dmInfoModa.qryItens2.Next;
          //
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
              Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
              Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
              Sql.add('and GTM_TAMANH='+quotedstr('40')); //+' or GTM_TAMANH="M"'
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          W_TOTCOR := 0;
          W_TOTNUM := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               txtNR40_02.Lines.Add(FormatFloat('###',W_QTPROD));
               W_TOTCOR := W_TOTCOR+W_QTPROD;
               W_TOTNUM := W_TOTNUM+W_QTPROD;
               //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
               txtCor.Lines.Add(dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString);
               //
               txtNR34.Lines.Add(M_SPACE);
               txtNR38.Lines.Add(M_SPACE);
               txtNR36.Lines.Add(M_SPACE);
               txtNR42.Lines.Add(M_SPACE);
               txtNR44.Lines.Add(M_SPACE);
               txtNR46.Lines.Add(M_SPACE);
               txtNR48.Lines.Add(M_SPACE);
               txtNR50.Lines.Add(M_SPACE);
               //
               txtTOGRADE.Lines.Add(FormatFloat('###',W_TOTCOR));
               If (W_TOTNUM > 0) Then
                  txtTO40.Caption := FormatFloat('###',W_TOTNUM)
               Else
                  txtTO40.Caption := FormatFloat('###',W_TOTNUM);
               //
          End
          Else
               //txtNR40.Lines.Add(M_SPACE);
          //
          dmInfoModa.qryItensPedidos.Close;
          dmInfoModa.qryItens2.Next;
          //
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
              Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
              Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
              Sql.add('and GTM_TAMANH='+quotedstr('42'));  //+' or GTM_TAMANH="G"'
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          W_TOTCOR := 0;
          W_TOTNUM := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               txtNR42.Lines.Add(FormatFloat('###',W_QTPROD));
               W_TOTCOR := W_TOTCOR+W_QTPROD;
               //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
               txtCor.Lines.Add(dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString);
               //
               txtNR34.Lines.Add(M_SPACE);
               txtNR38.Lines.Add(M_SPACE);
               //txtNR40.Lines.Add(M_SPACE);
               txtNR44.Lines.Add(M_SPACE);
               txtNR36.Lines.Add(M_SPACE);
               txtNR46.Lines.Add(M_SPACE);
               txtNR48.Lines.Add(M_SPACE);
               txtNR50.Lines.Add(M_SPACE);
               //
               txtTOGRADE.Lines.Add(FormatFloat('###',W_TOTCOR));
               If (W_TOTNUM > 0) Then
                  txtTO42.Caption := FormatFloat('###',W_TOTNUM)
               Else
                  txtTO42.Caption := FormatFloat('###',W_TOTNUM);
               //
          End
          Else
               //txtNR42.Lines.Add(M_SPACE);
          //
          dmInfoModa.qryItensPedidos.Close;
          dmInfoModa.qryItens2.Next;
          //
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
              Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
              Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
              Sql.add('and GTM_TAMANH='+quotedstr('44'));  //+' or GTM_TAMANH="GG"'
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          W_TOTCOR := 0;
          W_TOTNUM := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               txtNR44.Lines.Add(FormatFloat('###',W_QTPROD));
               W_TOTCOR := W_TOTCOR+W_QTPROD;
               W_TOTNUM := W_TOTNUM+W_QTPROD;
               //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
               txtCor.Lines.Add(dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString);
               //
               txtNR34.Lines.Add(M_SPACE);
               txtNR38.Lines.Add(M_SPACE);
               //txtNR40.Lines.Add(M_SPACE);
               txtNR42.Lines.Add(M_SPACE);
               txtNR36.Lines.Add(M_SPACE);
               txtNR46.Lines.Add(M_SPACE);
               txtNR48.Lines.Add(M_SPACE);
               txtNR50.Lines.Add(M_SPACE);
               //
               txtTOGRADE.Lines.Add(FormatFloat('###',W_TOTCOR));
               If (W_TOTNUM > 0) Then
                  txtTO44.Caption := FormatFloat('###',W_TOTNUM)
               Else
                  txtTO44.Caption := FormatFloat('###',W_TOTNUM);
               //
          End
          Else
               //txtNR44.Lines.Add(M_SPACE);
          //
          dmInfoModa.qryItensPedidos.Close;
          dmInfoModa.qryItens2.Next;
          //
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
              Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
              Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
              Sql.add('and GTM_TAMANH='+quotedstr('46'));
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          W_TOTCOR := 0;
          W_TOTNUM := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               txtNR46.Lines.Add(dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsString);
               W_TOTCOR := W_TOTCOR+W_QTPROD;
               W_TOTNUM := W_TOTNUM+W_QTPROD;
               //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
               txtCor.Lines.Add(dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString);
               //
               txtNR34.Lines.Add(M_SPACE);
               txtNR38.Lines.Add(M_SPACE);
               //txtNR40.Lines.Add(M_SPACE);
               txtNR42.Lines.Add(M_SPACE);
               txtNR36.Lines.Add(M_SPACE);
               txtNR44.Lines.Add(M_SPACE);
               txtNR48.Lines.Add(M_SPACE);
               txtNR50.Lines.Add(M_SPACE);
               //
               txtTOGRADE.Lines.Add(FormatFloat('###',W_TOTCOR));
               If (W_TOTNUM > 0) Then
                  txtTO46.Caption := FormatFloat('###',W_TOTNUM)
               Else
                  txtTO46.Caption := FormatFloat('###',W_TOTNUM);
          End
          Else
               //txtNR46.Lines.Add(M_SPACE);
          //
          dmInfoModa.qryItensPedidos.Close;
          dmInfoModa.qryItens2.Next;
          //
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
              Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
              Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
              Sql.add('and GTM_TAMANH='+quotedstr('48'));
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          W_TOTCOR := 0;
          W_TOTNUM := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               txtNR48.Lines.Add(FormatFloat('###',W_QTPROD));
               W_TOTCOR := W_TOTCOR+W_QTPROD;
               W_TOTNUM := W_TOTNUM+W_QTPROD;
               //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
               txtCor.Lines.Add(dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString);
               //
               txtNR34.Lines.Add(M_SPACE);
               txtNR38.Lines.Add(M_SPACE);
               //txtNR40.Lines.Add(M_SPACE);
               txtNR42.Lines.Add(M_SPACE);
               txtNR44.Lines.Add(M_SPACE);
               txtNR46.Lines.Add(M_SPACE);
               txtNR36.Lines.Add(M_SPACE);
               txtNR50.Lines.Add(M_SPACE);
               //
               txtTOGRADE.Lines.Add(FormatFloat('###',W_TOTCOR));
               If (W_TOTNUM > 0) Then
                  txtTO48.Caption := FormatFloat('###',W_TOTNUM)
               Else
                  txtTO48.Caption := FormatFloat('###',W_TOTNUM);
               //
          End
          Else
               //txtNR48.Lines.Add(M_SPACE);
          //
          dmInfoModa.qryItensPedidos.Close;
          dmInfoModa.qryItens2.Next;
          //
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
              Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
              Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
              Sql.add('and GTM_TAMANH='+quotedstr('50'));
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          W_TOTCOR := 0;
          W_TOTNUM := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               txtNR50.Lines.Add(FormatFloat('###',W_QTPROD));
               W_TOTCOR := W_TOTCOR+W_QTPROD;
               W_TOTNUM := W_TOTNUM+W_QTPROD;
               //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
               txtCor.Lines.Add(dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString);
               //
               txtNR34.Lines.Add(M_SPACE);
               txtNR38.Lines.Add(M_SPACE);
               //txtNR40.Lines.Add(M_SPACE);
               txtNR42.Lines.Add(M_SPACE);
               txtNR44.Lines.Add(M_SPACE);
               txtNR46.Lines.Add(M_SPACE);
               txtNR48.Lines.Add(M_SPACE);
               txtNR36.Lines.Add(M_SPACE);
               //
               txtTOGRADE.Lines.Add(FormatFloat('###',W_TOTCOR));
               If (W_TOTNUM > 0) Then
                  txtTO50.Caption := FormatFloat('###',W_TOTNUM)
               Else
                  txtTO50.Caption := FormatFloat('###',W_TOTNUM);
               //
          End
          Else
               //txtNR50.Lines.Add(M_SPACE);
          //
          dmInfoModa.qryItensPedidos.Close;
        dmInfoModa.qryCores.Next;
        //
       End;
          dmInfoModa.qryItens2.Next;
        End;    // fim-with-frmRelModelo
       //dmInfoModa.qryItens2.Next;
     End;   //fim-do-enquanto
     //
     frmRelModelo.txtTOPROD.Caption := FormatFloat('###,###,##0',qryLotes.FieldByName('LOT_QTPROD').AsFloat);
end;

procedure TfrmPrintLote.btImprimirClick(Sender: TObject);
begin
      If (qryLotes.Active =  False) Then
      Begin
         Application.MessageBox('Digite o número do lote!!!'+#13,
              'ATENÇÃO',MB_DEFBUTTON2+MB_OK+MB_ICONINFORMATION);
         //
         edtNRLOTE.SetFocus;
         Exit;
      End;
     //
     If Application.MessageBox('Imprime todo o lote?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
     begin
           Try
                 qryLotes.DisableControls;
                 qryLotes.First;
                 While not (qryLotes.Eof) do
                 Begin
                      IMPRIMIR_TODOS;
                      qryLotes.Next;
                 End;
                 //
                 qryLotes.EnableControls;
           Except
                 ShowMessage('Error ao tentar imprimi todo o lote!!!');
           End;
     End;
end;

procedure TfrmPrintLote.QUANTIDADE_CORES;
Var
    W_NRPEDI, W_CDPROD, M_SPACE, M_NRLOTE, M_CODCOR :String;
    M_VLCUST, M_VLUNIT, M_QTPROD, M_QUANTO, M_TOUNIT,M_TOGERA, W_QTPROD : Real;
    W_TOTCOR, W_TOTNUM : Double;
begin
   Try
     Screen.Cursor := crHourGlass;
     //
     M_SPACE := '  ';
     W_NRPEDI := qryLotes.FieldByName('LOT_NRPEDI').AsString;
     W_CDPROD := qryLotes.FieldByName('LOT_CDPROD').AsString;
     M_NRLOTE := qryLotes.FieldByName('LOT_NRLOTE').AsString;
     //
     With frmRelModelo do
     begin
          txtTO34.Caption := '';
          txtTO36.Caption := '';
          txtTO38.Caption := '';
          txtTO40.Caption := '';
          txtTO42.Caption := '';
          txtTO44.Caption := '';
          txtTO46.Caption := '';
          txtTO48.Caption := '';
          txtTO50.Caption := '';
     End;
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
       With frmRelModelo do
       begin
          M_CODCOR := dmInfoModa.qryCores.FieldByName('COR_CODCOR').AsString;
          //
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
              Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
              Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
              Prepare;
              Open;
          End;
          //
         If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
         begin
              // Imprime o nome da cor
              //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryCores.FieldByName ('COR_NOMCOR').AsString,3));
              txtCor.Lines.Add(dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString);
              //
              W_TOTCOR := 0;
              //
              While not (dmInfoModa.qryItensPedidos.Eof) do
              begin
                 W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                 dmInfoModa.qryItensPedidos.Next;
              End;
              //txtTOGRADE.Lines.Add(FormatFloat('###',W_QTPROD)); //W_TOTCOR
              // Tamanho 34
              With dmInfoModa.qryItensPedidos do
              Begin
                SQL.Clear;
                Close;
                Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
                Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
                Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                Sql.add('and GTM_TAMANH='+quotedstr('34'));
                Prepare;
                Open;
                First;
              End;
              //
              W_QTPROD := 0;
              //
              While not (dmInfoModa.qryItensPedidos.Eof) do
              begin
                 W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                 dmInfoModa.qryItensPedidos.Next;
              End;
              //
              If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
              begin
                 //
                 txtNR34.Lines.Add(FormatFloat('###',W_QTPROD));
                 //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
                 //
              End
              Else
                  txtNR34.Lines.Add(M_SPACE);
              //
              dmInfoModa.qryItensPedidos.Close;
              //
          // Tamanho 36 ou PP
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where (GTM_NRLOTE='+ quotedstr(M_NRLOTE)+')');
              Sql.add('And (GTM_CDPROD='+quotedstr(W_CDPROD)+')');
              Sql.add('and (GTM_CODCOR='+quotedstr(M_CODCOR)+')');
              Sql.add('and (GTM_TAMANH='+quotedstr('36')+') or (GTM_TAMANH='+quotedstr('PP')+')');
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               //
               txtNR36.Lines.Add(FormatFloat('###',W_QTPROD));
               //
          End
          Else
             txtNR36.Lines.Add(M_SPACE);
          //
          dmInfoModa.qryItensPedidos.Close;
          //
          // Tamanho 38 ou P
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where (GTM_NRLOTE='+ quotedstr(M_NRLOTE)+')');
              Sql.add('And (GTM_CDPROD='+quotedstr(W_CDPROD)+')');
              Sql.add('and (GTM_CODCOR='+quotedstr(M_CODCOR)+')');
              Sql.add('and (GTM_TAMANH='+quotedstr('38')+') or (GTM_TAMANH='+quotedstr('P')+')');
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               //
               txtNR38.Lines.Add(FormatFloat('###',W_QTPROD));
               //
          End
          Else
              txtNR38.Lines.Add(M_SPACE);
          //
          dmInfoModa.qryItensPedidos.Close;
          // Tamanho 40 ou M
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where (GTM_NRLOTE='+ quotedstr(M_NRLOTE)+')');
              Sql.add('And (GTM_CDPROD='+quotedstr(W_CDPROD)+')');
              Sql.add('and (GTM_CODCOR='+quotedstr(M_CODCOR)+')');
              Sql.add('and (GTM_TAMANH='+quotedstr('40')+') or (GTM_TAMANH='+quotedstr('M')+')');
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               //
               txtNR40_02.Lines.Add(FormatFloat('###',W_QTPROD));
               //
          End
          Else
             txtNR40_02.Lines.Add(M_SPACE);
          //
          dmInfoModa.qryItensPedidos.Close;
          // Tamanho 42 ou G
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where (GTM_NRLOTE='+ quotedstr(M_NRLOTE)+')');
              Sql.add('And (GTM_CDPROD='+quotedstr(W_CDPROD)+')');
              Sql.add('and (GTM_CODCOR='+quotedstr(M_CODCOR)+')');
              Sql.add('and (GTM_TAMANH='+quotedstr('42')+') or (GTM_TAMANH='+quotedstr('G')+')');
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               //
               txtNR42.Lines.Add(FormatFloat('###',W_QTPROD));
               //
          End
          Else
              txtNR42.Lines.Add(M_SPACE);
          dmInfoModa.qryItensPedidos.Close;
          //
          With qryQTCORES do
          Begin
               Close;
               //
               ParamByName('pNRLOTE').AsString := M_NRLOTE;
               ParamByName('pCDPROD').AsString := W_CDPROD;
               ParamByName('pCODCOR').AsString := M_CODCOR;
               //
               Prepare;
               Open;
          End;
          // Tamanho 44 ou GG
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where (GTM_NRLOTE='+ quotedstr(M_NRLOTE)+')');
              Sql.add('And (GTM_CDPROD='+quotedstr(W_CDPROD)+')');
              Sql.add('and (GTM_CODCOR='+quotedstr(M_CODCOR)+')');
              Sql.add('and (GTM_TAMANH='+quotedstr('44')+') or (GTM_TAMANH='+quotedstr('GG')+')');
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               //
               txtNR44.Lines.Add(FormatFloat('###',W_QTPROD));
               //
          End
          Else
              txtNR44.Lines.Add(M_SPACE);
          dmInfoModa.qryItensPedidos.Close;
          // Tamanho 46
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where (GTM_NRLOTE='+ quotedstr(M_NRLOTE)+')');
              Sql.add('And (GTM_CDPROD='+quotedstr(W_CDPROD)+')');
              Sql.add('and (GTM_CODCOR='+quotedstr(M_CODCOR)+')');
              Sql.add('and (GTM_TAMANH='+quotedstr('46')+')');
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               //
               txtNR46.Lines.Add(FormatFloat('###',W_QTPROD));
               //
          End
          Else
              txtNR46.Lines.Add(M_SPACE);
          dmInfoModa.qryItensPedidos.Close;
          // Tamanho 48
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where (GTM_NRLOTE='+ quotedstr(M_NRLOTE)+')');
              Sql.add('And (GTM_CDPROD='+quotedstr(W_CDPROD)+')');
              Sql.add('and (GTM_CODCOR='+quotedstr(M_CODCOR)+')');
              Sql.add('and (GTM_TAMANH='+quotedstr('48')+')');
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               //
               txtNR48.Lines.Add(FormatFloat('###',W_QTPROD));
               //
          End
          Else
              txtNR48.Lines.Add(M_SPACE);
          dmInfoModa.qryItensPedidos.Close;
          // Tamanho 50
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where (GTM_NRLOTE='+ quotedstr(M_NRLOTE)+')');
              Sql.add('And (GTM_CDPROD='+quotedstr(W_CDPROD)+')');
              Sql.add('and (GTM_CODCOR='+quotedstr(M_CODCOR)+')');
              Sql.add('and (GTM_TAMANH='+quotedstr('50')+')');
              Prepare;
              Open;
              First;
          End;
          //
          W_QTPROD := 0;
          //
          While not (dmInfoModa.qryItensPedidos.Eof) do
          begin
               W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
               dmInfoModa.qryItensPedidos.Next;
          End;
          //
          If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
          begin
               //
               txtNR50.Lines.Add(FormatFloat('###',W_QTPROD));
               //
          End
          Else
              txtNR50.Lines.Add(M_SPACE);
          dmInfoModa.qryItensPedidos.Close;
          //
          With qryQTCORES do
          Begin
               Close;
               //
               ParamByName('pNRLOTE').AsString := M_NRLOTE;
               ParamByName('pCDPROD').AsString := W_CDPROD;
               ParamByName('pCODCOR').AsString := M_CODCOR;
               //
               Prepare;
               Open;
          End;
          //
          txtTOGRADE.Lines.Add(FormatFloat('###',qryQTCORES.FieldByName('GTM_TOQUAN').AsFloat));
          //
       End;     //fim-do-with frmRelModelo
          //
         End; //
          dmInfoModa.qryCores.Next;
     End;   // fim-do-enquanto das cores
     //
     QUANTIDADE_TAMANHO;
   Finally
     Screen.Cursor := crDefault;
   End;
   //
   Application.ProcessMessages;
end;

procedure TfrmPrintLote.QUANTIDADE_TAMANHO;
Var
    W_CDTAMA : String;
    M_TOPROD : Double;
begin
     M_TOPROD := 0;
     //
     With qryQTNUMEROS do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Select SUM(GTM_QTPROD) GTM_TONUME from SACGTM Where (GTM_NRLOTE=:pNRLOTE)');
          SQL.Add('And (GTM_CDPROD=:pCDPROD)');
          SQL.Add('and (GTM_TAMANH=:pTAMANH)');
          //
          ParamByName('pNRLOTE').AsString := qryLotes.FieldByName('LOT_NRLOTE').AsString;
          ParamByName('pCDPROD').AsString := qryLotes.FieldByName('LOT_CDPROD').AsString;
          ParamByName('pTAMANH').AsString := '34';
          //
          Prepare;
          Open;
      End;
      //
      M_TOPROD := M_TOPROD+qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat;
      frmRelModelo.txtTO34.Caption := FormatFloat('###',qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat);
      //
     With qryQTNUMEROS do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Select SUM(GTM_QTPROD) GTM_TONUME from SACGTM Where (GTM_NRLOTE=:pNRLOTE)');
          SQL.Add('And (GTM_CDPROD=:pCDPROD)');
          SQL.Add('and (GTM_TAMANH=:pTAMANH)');
          SQL.Add('or  (GTM_TAMANH=:pTAMAN2)');
          //
          ParamByName('pNRLOTE').AsString := qryLotes.FieldByName('LOT_NRLOTE').AsString;
          ParamByName('pCDPROD').AsString := qryLotes.FieldByName('LOT_CDPROD').AsString;
          ParamByName('pTAMANH').AsString := '36';
          ParamByName('pTAMAN2').AsString := 'PP';
          //
          Prepare;
          Open;
      End;
      //
      M_TOPROD := M_TOPROD+qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat;
      frmRelModelo.txtTO36.Caption := FormatFloat('###',qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat);
      //
      With qryQTNUMEROS do
      Begin
          SQL.Clear;
          Close;
          SQL.Add('Select SUM(GTM_QTPROD) GTM_TONUME from SACGTM Where (GTM_NRLOTE=:pNRLOTE)');
          SQL.Add('And (GTM_CDPROD=:pCDPROD)');
          SQL.Add('and (GTM_TAMANH=:pTAMANH)');
          SQL.Add('or  (GTM_TAMANH=:pTAMAN2)');
          //
          ParamByName('pNRLOTE').AsString := qryLotes.FieldByName('LOT_NRLOTE').AsString;
          ParamByName('pCDPROD').AsString := qryLotes.FieldByName('LOT_CDPROD').AsString;
          ParamByName('pTAMANH').AsString := '38';
          ParamByName('pTAMAN2').AsString := 'P';
          //
          Prepare;
          Open;
       End;
       //
       M_TOPROD := M_TOPROD+qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat;
       frmRelModelo.txtTO38.Caption := FormatFloat('###',qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat);
       //
      With qryQTNUMEROS do
      Begin
          SQL.Clear;
          Close;
          SQL.Add('Select SUM(GTM_QTPROD) GTM_TONUME from SACGTM Where (GTM_NRLOTE=:pNRLOTE)');
          SQL.Add('And (GTM_CDPROD=:pCDPROD)');
          SQL.Add('and (GTM_TAMANH=:pTAMANH)');
          SQL.Add('or  (GTM_TAMANH=:pTAMAN2)');
          //
          ParamByName('pNRLOTE').AsString := qryLotes.FieldByName('LOT_NRLOTE').AsString;
          ParamByName('pCDPROD').AsString := qryLotes.FieldByName('LOT_CDPROD').AsString;
          ParamByName('pTAMANH').AsString := '40';
          ParamByName('pTAMAN2').AsString := 'M';
          //
          Prepare;
          Open;
       End;
       //
       frmRelModelo.txtTO40.Caption := FormatFloat('###',qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat);
       //
      With qryQTNUMEROS do
      Begin
          SQL.Clear;
          Close;
          SQL.Add('Select SUM(GTM_QTPROD) GTM_TONUME from SACGTM Where (GTM_NRLOTE=:pNRLOTE)');
          SQL.Add('And (GTM_CDPROD=:pCDPROD)');
          SQL.Add('and (GTM_TAMANH=:pTAMANH)');
          SQL.Add('or  (GTM_TAMANH=:pTAMAN2)');
          //
          ParamByName('pNRLOTE').AsString := qryLotes.FieldByName('LOT_NRLOTE').AsString;
          ParamByName('pCDPROD').AsString := qryLotes.FieldByName('LOT_CDPROD').AsString;
          ParamByName('pTAMANH').AsString := '42';
          ParamByName('pTAMAN2').AsString := 'G';
          //
          Prepare;
          Open;
       End;
       //
       M_TOPROD := M_TOPROD+qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat;
       frmRelModelo.txtTO42.Caption := FormatFloat('###',qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat);
       //
      With qryQTNUMEROS do
      Begin
          SQL.Clear;
          Close;
          SQL.Add('Select SUM(GTM_QTPROD) GTM_TONUME from SACGTM Where (GTM_NRLOTE=:pNRLOTE)');
          SQL.Add('And (GTM_CDPROD=:pCDPROD)');
          SQL.Add('and (GTM_TAMANH=:pTAMANH)');
          SQL.Add('or  (GTM_TAMANH=:pTAMAN2)');
          //
          ParamByName('pNRLOTE').AsString := qryLotes.FieldByName('LOT_NRLOTE').AsString;
          ParamByName('pCDPROD').AsString := qryLotes.FieldByName('LOT_CDPROD').AsString;
          ParamByName('pTAMANH').AsString := '44';
          ParamByName('pTAMAN2').AsString := 'GG';
          //
          Prepare;
          Open;
       End;
       //
       M_TOPROD := M_TOPROD+qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat;
       frmRelModelo.txtTO44.Caption := FormatFloat('###',qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat);
       //
     With qryQTNUMEROS do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Select SUM(GTM_QTPROD) GTM_TONUME from SACGTM Where (GTM_NRLOTE=:pNRLOTE)');
          SQL.Add('And (GTM_CDPROD=:pCDPROD)');
          SQL.Add('and (GTM_TAMANH=:pTAMANH)');
          //
          ParamByName('pNRLOTE').AsString := qryLotes.FieldByName('LOT_NRLOTE').AsString;
          ParamByName('pCDPROD').AsString := qryLotes.FieldByName('LOT_CDPROD').AsString;
          ParamByName('pTAMANH').AsString := '46';
          //
          Prepare;
          Open;
      End;
      //
      M_TOPROD := M_TOPROD+qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat;
      frmRelModelo.txtTO46.Caption := FormatFloat('###',qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat);
       //
     With qryQTNUMEROS do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Select SUM(GTM_QTPROD) GTM_TONUME from SACGTM Where (GTM_NRLOTE=:pNRLOTE)');
          SQL.Add('And (GTM_CDPROD=:pCDPROD)');
          SQL.Add('and (GTM_TAMANH=:pTAMANH)');
          //
          ParamByName('pNRLOTE').AsString := qryLotes.FieldByName('LOT_NRLOTE').AsString;
          ParamByName('pCDPROD').AsString := qryLotes.FieldByName('LOT_CDPROD').AsString;
          ParamByName('pTAMANH').AsString := '48';
          //
          Prepare;
          Open;
      End;
      //
      M_TOPROD := M_TOPROD+qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat;
      frmRelModelo.txtTO48.Caption := FormatFloat('###',qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat);
       //
     With qryQTNUMEROS do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Select SUM(GTM_QTPROD) GTM_TONUME from SACGTM Where (GTM_NRLOTE=:pNRLOTE)');
          SQL.Add('And (GTM_CDPROD=:pCDPROD)');
          SQL.Add('and (GTM_TAMANH=:pTAMANH)');
          //
          ParamByName('pNRLOTE').AsString := qryLotes.FieldByName('LOT_NRLOTE').AsString;
          ParamByName('pCDPROD').AsString := qryLotes.FieldByName('LOT_CDPROD').AsString;
          ParamByName('pTAMANH').AsString := '50';
          //
          Prepare;
          Open;
      End;
      //
      M_TOPROD := M_TOPROD+qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat;
      frmRelModelo.txtTO50.Caption := FormatFloat('###',qryQTNUMEROS.FieldByName('GTM_TONUME').AsFloat);
       //                                                 //M_TOPROD
       frmRelModelo.txtTOPROD.Caption := FormatFloat('###',qryLotes.FieldByName('LOT_QTPROD').AsFloat);
end;

procedure TfrmPrintLote.IMPRIMIR_TODOS;
Var
   M_VLCUST : Real;
   M_NRITEM : Integer;
   M_CDMODE, M_CDPROD, M_NRPEDI, M_NRLOTE : String;
begin
  Try
     Application.CreateForm(TfrmRelModelo, frmRelModelo);
     //
     M_VLCUST := 0;
     M_NRITEM := 1;
     M_NRPEDI := qryLotes.FieldByName('LOT_NRPEDI').AsString;
     M_NRLOTE := qryLotes.FieldByName('LOT_NRLOTE').AsString;
     M_CDPROD := qryLotes.FieldByName('LOT_CDPROD').AsString;
     //
     With frmRelModelo.qryRelModelo do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Select * from SACMDP Where (MDP_CDPROD=:pCDPROD)');
          ParamByName('pCDPROD').AsString := M_CDPROD;
          Prepare;
          Open;
          //
          M_CDMODE := frmRelModelo.qryRelModelo.FieldByName('MDP_CDMODE').AsString;
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
     frmRelModelo.qryItens.Close;
     //
     //QUANTIDADE;
     QUANTIDADE_CORES;
     //
      With frmRelModelo do
      begin
           //
           Le_Imagem_JPEG2(frmRelModelo.qryRelModeloMDP_IMGFRE, img_Modelo);
           //
           qrImpressaoPedido.Print;
           //qrImpressaoPedido.Preview;
     End;
  Finally
     frmRelModelo.Free;
  End;
end;

procedure TfrmPrintLote.FormCreate(Sender: TObject);
begin
      With dmInfoModa.qryProduto do
      Begin
           SQL.Clear;
           Close;
           SQL.Add('Select * from SACPRO order by PRO_NMPROD');
           Prepare;
           Open;
      End;
end;

procedure TfrmPrintLote.REMESSA;
Var
    W_NRPEDI, W_CDPROD, M_SPACE, M_NRLOTE, M_CODCOR :String;
    M_VLCUST, M_VLUNIT, M_QTPROD, M_QUANTO, M_TOUNIT,M_TOGERA, W_QTPROD : Real;
    W_TOTCOR, W_TOTNUM : Double;
    N_NRPEDI, N_NRSEQU : String;
begin
 qryLotes.DisableControls;
 qryLotes.First;
 M_NRLOTE := qryLotes.FieldByName('LOT_NRLOTE').AsString;
 N_NRPEDI := qryLotes.FieldByName('LOT_NRPEDI').AsString;
 //uFuncoes.StrZero(edtNRLOTE.Text,7);
 //
 While not (qryLotes.Eof) do
 begin
     W_CDPROD := qryLotes.FieldByName('LOT_CDPROD').AsString;
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
          M_CODCOR := dmInfoModa.qryCores.FieldByName('COR_CODCOR').AsString;
          //
          With dmInfoModa.qryItensPedidos do
          Begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
              Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
              Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
              Prepare;
              Open;
          End;
          //
         If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
         begin
              // Tamanho 34
              With dmInfoModa.qryItensPedidos do
              Begin
                SQL.Clear;
                Close;
                Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
                Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
                Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                Sql.add('and GTM_TAMANH='+quotedstr('34'));
                Prepare;
                Open;
                First;
              End;
              //
              W_QTPROD := 0;
              //
              While not (dmInfoModa.qryItensPedidos.Eof) do
              begin
                 W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                 dmInfoModa.qryItensPedidos.Next;
              End;
              //
              If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
              begin
                 //
                 With qryLocItem do
                 Begin
                      Close;
                      //
                      ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                      ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                      ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                      //
                      Prepare;
                      Open;
                 End;
                 //
                 If (qryLocItem.RecordCount = 0) Then
                 Begin
                   //
                   With qryIncItemRem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                  End;
                 End
                 Else
                 begin
                   With qryAtualizarItem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                   End;
                 End;
              //
              End;
              dmInfoModa.qryItensPedidos.Close;
              //
              // Tamanho 36
              With dmInfoModa.qryItensPedidos do
              Begin
                SQL.Clear;
                Close;
                Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
                Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
                Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                Sql.add('and GTM_TAMANH='+quotedstr('36'));
                Prepare;
                Open;
                First;
              End;
              //
              W_QTPROD := 0;
              //
              While not (dmInfoModa.qryItensPedidos.Eof) do
              begin
                 W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                 dmInfoModa.qryItensPedidos.Next;
              End;
              //
              If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
              begin
                 //
                 With qryLocItem do
                 Begin
                      Close;
                      //
                      ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                      ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                      ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                      //
                      Prepare;
                      Open;
                 End;
                 //
                 If (qryLocItem.RecordCount = 0) Then
                 Begin
                   //
                   With qryIncItemRem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                  End;
                 End
                 Else
                 begin
                   With qryAtualizarItem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                   End;
                 End;
              //
              End;
              dmInfoModa.qryItensPedidos.Close;
              //
              // Tamanho 38
              With dmInfoModa.qryItensPedidos do
              Begin
                SQL.Clear;
                Close;
                Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
                Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
                Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                Sql.add('and GTM_TAMANH='+quotedstr('38'));
                Prepare;
                Open;
                First;
              End;
              //
              W_QTPROD := 0;
              //
              While not (dmInfoModa.qryItensPedidos.Eof) do
              begin
                 W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                 dmInfoModa.qryItensPedidos.Next;
              End;
              //
              If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
              begin
                 //
                 With qryLocItem do
                 Begin
                      Close;
                      //
                      ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                      ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                      ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                      //
                      Prepare;
                      Open;
                 End;
                 //
                 If (qryLocItem.RecordCount = 0) Then
                 Begin
                   //
                   With qryIncItemRem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                  End;
                 End
                 Else
                 begin
                   With qryAtualizarItem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                   End;
                 End;
              //
              End;
              dmInfoModa.qryItensPedidos.Close;
              //
              // Tamanho 40
              With dmInfoModa.qryItensPedidos do
              Begin
                SQL.Clear;
                Close;
                Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
                Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
                Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                Sql.add('and GTM_TAMANH='+quotedstr('40'));
                Prepare;
                Open;
                First;
              End;
              //
              W_QTPROD := 0;
              //
              While not (dmInfoModa.qryItensPedidos.Eof) do
              begin
                 W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                 dmInfoModa.qryItensPedidos.Next;
              End;
              //
              If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
              begin
                 //
                 With qryLocItem do
                 Begin
                      Close;
                      //
                      ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                      ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                      ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                      //
                      Prepare;
                      Open;
                 End;
                 //
                 If (qryLocItem.RecordCount = 0) Then
                 Begin
                   //
                   With qryIncItemRem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                  End;
                 End
                 Else
                 begin
                   With qryAtualizarItem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                   End;
                 End;
              //
              End;
              dmInfoModa.qryItensPedidos.Close;
              //
              // Tamanho 42
              With dmInfoModa.qryItensPedidos do
              Begin
                SQL.Clear;
                Close;
                Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
                Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
                Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                Sql.add('and GTM_TAMANH='+quotedstr('42'));
                Prepare;
                Open;
                First;
              End;
              //
              W_QTPROD := 0;
              //
              While not (dmInfoModa.qryItensPedidos.Eof) do
              begin
                 W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                 dmInfoModa.qryItensPedidos.Next;
              End;
              //
              If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
              begin
                 //
                 With qryLocItem do
                 Begin
                      Close;
                      //
                      ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                      ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                      ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                      //
                      Prepare;
                      Open;
                 End;
                 //
                 If (qryLocItem.RecordCount = 0) Then
                 Begin
                   //
                   With qryIncItemRem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                  End;
                 End
                 Else
                 begin
                   With qryAtualizarItem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                   End;
                 End;
              //
              End;
              dmInfoModa.qryItensPedidos.Close;
              //
              // Tamanho 44
              With dmInfoModa.qryItensPedidos do
              Begin
                SQL.Clear;
                Close;
                Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
                Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
                Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                Sql.add('and GTM_TAMANH='+quotedstr('44'));
                Prepare;
                Open;
                First;
              End;
              //
              W_QTPROD := 0;
              //
              While not (dmInfoModa.qryItensPedidos.Eof) do
              begin
                 W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                 dmInfoModa.qryItensPedidos.Next;
              End;
              //
              If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
              begin
                 //
                 With qryLocItem do
                 Begin
                      Close;
                      //
                      ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                      ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                      ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                      //
                      Prepare;
                      Open;
                 End;
                 //
                 If (qryLocItem.RecordCount = 0) Then
                 Begin
                   //
                   With qryIncItemRem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                  End;
                 End
                 Else
                 begin
                   With qryAtualizarItem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                   End;
                 End;
              //
              End;
              dmInfoModa.qryItensPedidos.Close;
              //
              // Tamanho 46
              With dmInfoModa.qryItensPedidos do
              Begin
                SQL.Clear;
                Close;
                Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
                Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
                Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                Sql.add('and GTM_TAMANH='+quotedstr('46'));
                Prepare;
                Open;
                First;
              End;
              //
              W_QTPROD := 0;
              //
              While not (dmInfoModa.qryItensPedidos.Eof) do
              begin
                 W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                 dmInfoModa.qryItensPedidos.Next;
              End;
              //
              If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
              begin
                 //
                 With qryLocItem do
                 Begin
                      Close;
                      //
                      ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                      ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                      ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                      //
                      Prepare;
                      Open;
                 End;
                 //
                 If (qryLocItem.RecordCount = 0) Then
                 Begin
                   //
                   With qryIncItemRem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                  End;
                 End
                 Else
                 begin
                   With qryAtualizarItem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                   End;
                 End;
              //
              End;
              dmInfoModa.qryItensPedidos.Close;
              //
              // Tamanho 48
              With dmInfoModa.qryItensPedidos do
              Begin
                SQL.Clear;
                Close;
                Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
                Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
                Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                Sql.add('and GTM_TAMANH='+quotedstr('48'));
                Prepare;
                Open;
                First;
              End;
              //
              W_QTPROD := 0;
              //
              While not (dmInfoModa.qryItensPedidos.Eof) do
              begin
                 W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                 dmInfoModa.qryItensPedidos.Next;
              End;
              //
              If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
              begin
                 //
                 With qryLocItem do
                 Begin
                      Close;
                      //
                      ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                      ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                      ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                      //
                      Prepare;
                      Open;
                 End;
                 //
                 If (qryLocItem.RecordCount = 0) Then
                 Begin
                   //
                   With qryIncItemRem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                  End;
                 End
                 Else
                 begin
                   With qryAtualizarItem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                   End;
                 End;
              //
              End;
              dmInfoModa.qryItensPedidos.Close;
              //
              // Tamanho 50
              With dmInfoModa.qryItensPedidos do
              Begin
                SQL.Clear;
                Close;
                Sql.add('Select * from SACGTM Where GTM_NRLOTE='+ quotedstr(M_NRLOTE));
                Sql.add('And GTM_CDPROD='+quotedstr(W_CDPROD));
                Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                Sql.add('and GTM_TAMANH='+quotedstr('50'));
                Prepare;
                Open;
                First;
              End;
              //
              W_QTPROD := 0;
              //
              While not (dmInfoModa.qryItensPedidos.Eof) do
              begin
                 W_QTPROD := W_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                 dmInfoModa.qryItensPedidos.Next;
              End;
              //
              If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
              begin
                 //
                 With qryLocItem do
                 Begin
                      Close;
                      //
                      ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                      ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                      ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                      //
                      Prepare;
                      Open;
                 End;
                 //
                 If (qryLocItem.RecordCount = 0) Then
                 Begin
                   //
                   With qryIncItemRem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                  End;
                 End
                 Else
                 begin
                   With qryAtualizarItem do
                   Begin
                     Close;
                     //
                     ParamByName('pCDPROD').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDPROD').AsString;
                     ParamByName('pCDTAMA').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CDTAMA').AsString;
                     ParamByName('pCODCOR').AsString := dmInfoModa.qryItensPedidos.FieldByName ('GTM_CODCOR').AsString;
                     ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                     //
                     ExecSQL;
                   End;
                 End;
              //
              End;
              dmInfoModa.qryItensPedidos.Close; 
              //
         End;  // Se existe produtos
         //
         dmInfoModa.qryCores.next;
     End;   // fim-do-enquanto das cores
     // Proximo produto
     qryLotes.Next;
 End;     //Fim-enquanto lote
 //
 qryLotes.EnableControls;
 qryLotes.First; 
 //
end;

procedure TfrmPrintLote.btRemessaClick(Sender: TObject);
Var
  N_TOPECA : Real;
  N_PEDIDO : String;
begin
     Try
         btRemessa.Enabled  := False;
         With qryLimparRemessa do
         Begin
              SQl.Clear;
              Close;
              SQL.Add('Delete from SACRIT');
              //
              ExecSQL;
         End;
         //
         N_TOPECA := 0;
         N_PEDIDO := '';
         //
         qryLotes.DisableControls;
         qryLotes.First;
         //
         While not (qryLotes.Eof) do
         Begin
              N_TOPECA := N_TOPECA + qryLotes.FieldByName('LOT_QTPROD').AsFloat;
              qryLotes.Next;
         End;
         //
         With qryPedido do
         Begin
              Close;
              //
              ParamByName('pNRLOTE').AsString := uFuncoes.StrZero(edtNRLOTE.Text,7);
              //
              Prepare;
              Open;
              First;
         End;
         //
         While not (qryPedido.Eof) do
         Begin
              N_PEDIDO := N_PEDIDO+Copy(qryPedido.FieldByName('PED_NRPEDI').AsString,4,4)+'/';
              qryPedido.Next;
         End;
         //
         qryLotes.EnableControls;
         //
         REMESSA;
         //
         Try
             Application.CreateForm(TfrmRelRemessa, frmRelRemessa);
             //
             With frmRelRemessa do
             begin
                  //txtNRLOTE.Caption := uFuncoes.StrZero(edtNRLOTE.Text,7);
                  txtNRPEDIDO.Caption := N_PEDIDO;
                  txtTOTPEC.Caption := FloattoStr(N_TOPECA)+ ' PEÇA(S)';
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
             btRemessa.Enabled := True;
        End;
        //
     Except
           ShowMessage('Erro ao tentar gerar Remessa de pedido.');
           btRemessa.Enabled  := True;
     End;
end;

end.
