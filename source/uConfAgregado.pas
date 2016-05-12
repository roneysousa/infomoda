unit uConfAgregado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Buttons, DB, DBTables, Mask,
  ToolEdit;

type
  TfrmConfAgregado = class(TForm)
    Panel1: TPanel;
    DBText2: TDBText;
    Panel2: TPanel;
    Panel3: TPanel;
    btGerar: TBitBtn;
    BitBtn2: TBitBtn;
    cmbMes: TComboBox;
    Label1: TLabel;
    qryPedidos: TQuery;
    qryQUANT: TQuery;
    edtDTINIC: TDateEdit;
    edtDTFINA: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    qryPedidoSemana: TQuery;
    qryPedidoSemanaPED_NRPEDI: TStringField;
    qryPedidoSemanaPED_DTPEDI: TDateField;
    qryItensPedidos: TQuery;
    qryLocItens: TQuery;
    qryIncDados: TQuery;
    qryLimparDados: TQuery;
    qrySemanas: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure btGerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbMesExit(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTINICKeyPress(Sender: TObject; var Key: Char);
  private
    Procedure PRIMEIRA_SEMANA;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfAgregado: TfrmConfAgregado;
  M_DTINIC, M_DTFINA : String;
  W_DTINIC, W_DTFINA : TDate;
  W_QTTOTA, M_QTTOTA : Double;

implementation

Uses uFuncoes, uRelPlanej, uPrincipal;

{$R *.dfm}

procedure TfrmConfAgregado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
end;

procedure TfrmConfAgregado.BitBtn2Click(Sender: TObject);
begin
      Close;
end;

procedure TfrmConfAgregado.btGerarClick(Sender: TObject);
Var
   M_QTSEGU, M_QTPRIM, M_QTSEGS, M_QTTERC, M_QTQUAT, M_QTQUIT : Integer;
   W_DTPRIM, W_DTSEGU, W_DTTERC, W_DTQUAT, W_DTQUIN : TDate;
   M_TOTALP, M_QTPROD, W_QTPROD, N_QTPROD : Double;
   M_ESTPRI, M_ESTSEG, M_ESTTER, M_ESTQUA, M_ESTQUI  : Double;
   W_NRPEDI, W_CDPROD, M_NRSEMA : String;
begin
     frmPrincipal.Info.Panels[0].Text := 'Aguarde geração de relatorio...';
    //If uFuncoes.Empty(cmbMes.Text) Then
    If (edtDTINIC.Text = '  /  /    ') Then
    Begin
         ShowMessage('Digite o periodo inicial!!!');
         frmPrincipal.Info.Panels[0].Text := ' ';
         edtDTINIC.SetFocus;
         Exit;
    End;
    //
    Try
        btGerar.Enabled := False;
        //
                 With qryLimparDados do
                 Begin
                      SQL.Clear;
                      Close;
                      SQL.Add('Delete from "SACSEM.DB"');
                      ExecSQL;
                 End;
                 //
                 With qryLimparDados do
                 Begin
                      SQL.Clear;
                      Close;
                      SQL.Add('Delete from "SACISM.DB"');
                      ExecSQL;
                 End;
                 //
     M_NRSEMA := '01';
     // Inclui semana  1
     With qryIncDados do
     begin
          SQL.Clear;
          Close;
          SQL.Add('INSERT INTO SACSEM (SEM_NRSEMA, SEM_NMDESC)');
          SQL.Add('VALUES (:pNRSEMA, :pNMDESC)');
          //
          ParamByName('pNRSEMA').AsString := M_NRSEMA;
          ParamByName('pNMDESC').AsString := 'PRIMEIRA SEMANA';
          //
          ExecSQL;
     End;
     //
     M_NRSEMA := '02';
     // Inclui semana 2
     With qryIncDados do
     begin
          SQL.Clear;
          Close;
          SQL.Add('INSERT INTO SACSEM (SEM_NRSEMA, SEM_NMDESC)');
          SQL.Add('VALUES (:pNRSEMA, :pNMDESC)');
          //
          ParamByName('pNRSEMA').AsString := M_NRSEMA;
          ParamByName('pNMDESC').AsString := 'SEGUNDA SEMANA';
          //
          ExecSQL;
     End;
     M_NRSEMA := '03';
     // Inclui semana 3
     With qryIncDados do
     begin
          SQL.Clear;
          Close;
          SQL.Add('INSERT INTO SACSEM (SEM_NRSEMA, SEM_NMDESC)');
          SQL.Add('VALUES (:pNRSEMA, :pNMDESC)');
          //
          ParamByName('pNRSEMA').AsString := M_NRSEMA;
          ParamByName('pNMDESC').AsString := 'TERCEIRA SEMANA';
          //
          ExecSQL;
     End;
     //
     M_NRSEMA := '04';
     // Inclui semana 4
     With qryIncDados do
     begin
          SQL.Clear;
          Close;
          SQL.Add('INSERT INTO SACSEM (SEM_NRSEMA, SEM_NMDESC)');
          SQL.Add('VALUES (:pNRSEMA, :pNMDESC)');
          //
          ParamByName('pNRSEMA').AsString := M_NRSEMA;
          ParamByName('pNMDESC').AsString := 'QUARTA SEMANA';
          //
          ExecSQL;
     End;
                 //
         M_DTINIC := edtDTINIC.Text;
         M_DTFINA := edtDTFINA.Text;
         //
         With qryPedidos do
         Begin
              Close;
              //
              ParamByName('pDTINIC').AsDate := StrtoDate(M_DTINIC);
              ParamByName('pDTFINA').AsDate := StrtoDate(M_DTFINA);
              //
              Prepare;
              Open;
              First;
         End;
         //
         M_QTSEGU := QtdDiaSemana(StrtoDate(M_DTINIC),1);
         M_QTPRIM := 0;
         M_QTSEGS := 0;
         M_QTTERC := 0;
         M_QTQUAT := 0;
         M_QTQUIT := 0;
         M_TOTALP := 0;
         //
         M_ESTPRI := 0;
         M_ESTSEG := 0;
         M_ESTTER := 0;
         M_ESTQUA := 0;
         M_ESTQUI := 0;
         //
         W_DTPRIM := StrtoDate(M_DTINIC);
         W_DTSEGU := StrtoDate('08/'+Copy(M_DTINIC,4,7));//+uFuncoes.Datafinal(W_DTPRIM,7);
         W_DTTERC := StrtoDate('15/'+Copy(M_DTINIC,4,7));
         //uFuncoes.Datafinal(W_DTSEGU,7);
         W_DTQUAT := StrtoDate('22/'+Copy(M_DTINIC,4,7));
         //uFuncoes.Datafinal(W_DTTERC,7);
         W_DTQUIN := StrtoDate(M_DTFINA);
         //
         While not (qryPedidos.Eof) do
         Begin
              W_NRPEDI := qryPedidos.FieldByName('PED_NRPEDI').AsString;
              // Primeira semana
              If (qryPedidos.FieldByName('PED_DTPEDI').AsDateTime>=W_DTPRIM)
                And (qryPedidos.FieldByName('PED_DTPEDI').AsDateTime<W_DTSEGU) Then
              Begin
                  M_NRSEMA := '01';
                  W_QTTOTA := 0;
                  With qryItensPedidos do
                  begin
                      SQL.Clear;
                      Close;
                      SQL.Add('Select GTM_NRPEDI, GTM_CDPROD, GTM_QTPROD from SACGTM');
                      SQL.Add('Where (GTM_NRPEDI=:pNRPEDI)');
                      //
                      ParamByName('pNRPEDI').AsString := W_NRPEDI;
                      //
                      Prepare;
                      Open;
                      First;
                  End;
                  //
                  If (qryItensPedidos.RecordCount > 0) Then    // se tem registro
                  begin
                    While not (qryItensPedidos.Eof) do
                    Begin
                         W_CDPROD := qryItensPedidos.FieldByName('GTM_CDPROD').AsString;
                         N_QTPROD := qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                         //
                         With qryLocItens do
                         begin
                             Close;
                             //
                             ParamByName('pNRSEMA').AsString := M_NRSEMA;
                             ParamByName('pCDPROD').AsString := W_CDPROD;
                             //
                             Prepare;
                             Open;
                         End;
                         //
                         If (qryLocItens.RecordCount = 0) Then
                         begin
                              // incluir dados
                              With qryIncDados do
                              begin
                                   SQL.Clear;
                                   Close;
                                   SQL.Add('INSERT INTO SACISM (ISM_NRSEMA, ISM_CDPROD, ISM_QTPROD)');
                                   SQL.Add('VALUES (:pNRSEMA, :pCDPROD, :pQTPROD)');
                                   //
                                   ParamByName('pNRSEMA').AsString := M_NRSEMA;
                                   ParamByName('pCDPROD').AsString := W_CDPROD;
                                   ParamByName('pQTPROD').AsFloat  := N_QTPROD;
                                   //
                                   ExecSQL;
                              End;
                              //
                              W_QTTOTA := W_QTTOTA+N_QTPROD;
                         End
                         Else
                         Begin
                              // Alterar dados
                              With qryIncDados do
                              begin
                                   SQL.Clear;
                                   Close;
                                   SQL.Add('UPDATE SACISM SET ISM_QTPROD = ISM_QTPROD + :pQTPROD');
                                   SQL.Add('Where (ISM_NRSEMA=:pNRSEMA) AND (ISM_CDPROD=:pCDPROD)');
                                   //
                                   ParamByName('pNRSEMA').AsString := M_NRSEMA;
                                   ParamByName('pCDPROD').AsString := W_CDPROD;
                                   ParamByName('pQTPROD').AsFloat  := N_QTPROD;
                                   //
                                   ExecSQL;
                              End;
                              //
                              W_QTTOTA := W_QTTOTA+N_QTPROD;
                         End;
                         //
                       qryItensPedidos.Next;
                    End;
                  End;    // se existe registro
                  //
                  M_QTPRIM := M_QTPRIM+qryPedidos.FieldByName('PED_QTPEDI').AsInteger;
              End;
              // Segunda semana
              If (qryPedidos.FieldByName('PED_DTPEDI').AsDateTime>=W_DTSEGU)
                And (qryPedidos.FieldByName('PED_DTPEDI').AsDateTime<W_DTTERC) Then
              begin
                  M_NRSEMA := '02';
                  W_QTTOTA := 0;
                  With qryItensPedidos do
                  begin
                      SQL.Clear;
                      Close;
                      SQL.Add('Select GTM_NRPEDI, GTM_CDPROD, GTM_QTPROD from SACGTM');
                      SQL.Add('Where (GTM_NRPEDI=:pNRPEDI)');
                      //
                      ParamByName('pNRPEDI').AsString := W_NRPEDI;
                      //
                      Prepare;
                      Open;
                      First;
                  End;
                  //
                  If (qryItensPedidos.RecordCount > 0) Then    // se tem registro
                  begin
                    While not (qryItensPedidos.Eof) do
                    Begin
                         W_CDPROD := qryItensPedidos.FieldByName('GTM_CDPROD').AsString;
                         N_QTPROD := qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                         //
                         With qryLocItens do
                         begin
                             Close;
                             //
                             ParamByName('pNRSEMA').AsString := M_NRSEMA;
                             ParamByName('pCDPROD').AsString := W_CDPROD;
                             //
                             Prepare;
                             Open;
                         End;
                         //
                         If (qryLocItens.RecordCount = 0) Then
                         begin
                              // incluir dados
                              With qryIncDados do
                              begin
                                   SQL.Clear;
                                   Close;
                                   SQL.Add('INSERT INTO SACISM (ISM_NRSEMA, ISM_CDPROD, ISM_QTPROD)');
                                   SQL.Add('VALUES (:pNRSEMA, :pCDPROD, :pQTPROD)');
                                   //
                                   ParamByName('pNRSEMA').AsString := M_NRSEMA;
                                   ParamByName('pCDPROD').AsString := W_CDPROD;
                                   ParamByName('pQTPROD').AsFloat  := N_QTPROD;
                                   //
                                   ExecSQL;
                              End;
                              //
                              W_QTTOTA := W_QTTOTA+N_QTPROD;
                         End
                         Else
                         Begin
                              // Alterar dados
                              With qryIncDados do
                              begin
                                   SQL.Clear;
                                   Close;
                                   SQL.Add('UPDATE SACISM SET ISM_QTPROD = ISM_QTPROD + :pQTPROD');
                                   SQL.Add('Where (ISM_NRSEMA=:pNRSEMA) AND (ISM_CDPROD=:pCDPROD)');
                                   //
                                   ParamByName('pNRSEMA').AsString := M_NRSEMA;
                                   ParamByName('pCDPROD').AsString := W_CDPROD;
                                   ParamByName('pQTPROD').AsFloat  := N_QTPROD;
                                   //
                                   ExecSQL;
                              End;
                              //
                              W_QTTOTA := W_QTTOTA+N_QTPROD;
                         End;
                         //
                       qryItensPedidos.Next;
                    End;
                  End;    // se existe registro
                  //
                  M_QTSEGS := M_QTSEGS+qryPedidos.FieldByName('PED_QTPEDI').AsInteger;
              End;
              // Terceira semana
              If (qryPedidos.FieldByName('PED_DTPEDI').AsDateTime>=W_DTTERC)
                And (qryPedidos.FieldByName('PED_DTPEDI').AsDateTime<W_DTQUAT) Then
              begin
                  M_NRSEMA := '03';
                  W_QTTOTA := 0;
                  With qryItensPedidos do
                  begin
                      SQL.Clear;
                      Close;
                      SQL.Add('Select GTM_NRPEDI, GTM_CDPROD, GTM_QTPROD from SACGTM');
                      SQL.Add('Where (GTM_NRPEDI=:pNRPEDI)');
                      //
                      ParamByName('pNRPEDI').AsString := W_NRPEDI;
                      //
                      Prepare;
                      Open;
                      First;
                  End;
                  //
                  If (qryItensPedidos.RecordCount > 0) Then    // se tem registro
                  begin
                    While not (qryItensPedidos.Eof) do
                    Begin
                         W_CDPROD := qryItensPedidos.FieldByName('GTM_CDPROD').AsString;
                         N_QTPROD := qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                         //
                         With qryLocItens do
                         begin
                             Close;
                             //
                             ParamByName('pNRSEMA').AsString := M_NRSEMA;
                             ParamByName('pCDPROD').AsString := W_CDPROD;
                             //
                             Prepare;
                             Open;
                         End;
                         //
                         If (qryLocItens.RecordCount = 0) Then
                         begin
                              // incluir dados
                              With qryIncDados do
                              begin
                                   SQL.Clear;
                                   Close;
                                   SQL.Add('INSERT INTO SACISM (ISM_NRSEMA, ISM_CDPROD, ISM_QTPROD)');
                                   SQL.Add('VALUES (:pNRSEMA, :pCDPROD, :pQTPROD)');
                                   //
                                   ParamByName('pNRSEMA').AsString := M_NRSEMA;
                                   ParamByName('pCDPROD').AsString := W_CDPROD;
                                   ParamByName('pQTPROD').AsFloat  := N_QTPROD;
                                   //
                                   ExecSQL;
                              End;
                              //
                              W_QTTOTA := W_QTTOTA+N_QTPROD;
                         End
                         Else
                         Begin
                              // Alterar dados
                              With qryIncDados do
                              begin
                                   SQL.Clear;
                                   Close;
                                   SQL.Add('UPDATE SACISM SET ISM_QTPROD = ISM_QTPROD + :pQTPROD');
                                   SQL.Add('Where (ISM_NRSEMA=:pNRSEMA) AND (ISM_CDPROD=:pCDPROD)');
                                   //
                                   ParamByName('pNRSEMA').AsString := M_NRSEMA;
                                   ParamByName('pCDPROD').AsString := W_CDPROD;
                                   ParamByName('pQTPROD').AsFloat  := N_QTPROD;
                                   //
                                   ExecSQL;
                              End;
                              //
                              W_QTTOTA := W_QTTOTA+N_QTPROD;
                         End;
                         //
                       qryItensPedidos.Next;
                    End;
                  End;    // se existe registro
                  //
                   M_QTTERC := M_QTTERC+qryPedidos.FieldByName('PED_QTPEDI').AsInteger;
              End;
              // Quarta semana
              If (qryPedidos.FieldByName('PED_DTPEDI').AsDateTime>=W_DTQUAT)
                And (qryPedidos.FieldByName('PED_DTPEDI').AsDateTime<=StrtoDate(M_DTFINA)) Then    //W_DTQUIN
              begin
                  M_NRSEMA := '04';
                  W_QTTOTA := 0;
                  With qryItensPedidos do
                  begin
                      SQL.Clear;
                      Close;
                      SQL.Add('Select GTM_NRPEDI, GTM_CDPROD, GTM_QTPROD from SACGTM');
                      SQL.Add('Where (GTM_NRPEDI=:pNRPEDI)');
                      //
                      ParamByName('pNRPEDI').AsString := W_NRPEDI;
                      //
                      Prepare;
                      Open;
                      First;
                  End;
                  //
                  If (qryItensPedidos.RecordCount > 0) Then    // se tem registro
                  begin
                    While not (qryItensPedidos.Eof) do
                    Begin
                         W_CDPROD := qryItensPedidos.FieldByName('GTM_CDPROD').AsString;
                         N_QTPROD := qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                         //
                         With qryLocItens do
                         begin
                             Close;
                             //
                             ParamByName('pNRSEMA').AsString := M_NRSEMA;
                             ParamByName('pCDPROD').AsString := W_CDPROD;
                             //
                             Prepare;
                             Open;
                         End;
                         //
                         If (qryLocItens.RecordCount = 0) Then
                         begin
                              // incluir dados
                              With qryIncDados do
                              begin
                                   SQL.Clear;
                                   Close;
                                   SQL.Add('INSERT INTO SACISM (ISM_NRSEMA, ISM_CDPROD, ISM_QTPROD)');
                                   SQL.Add('VALUES (:pNRSEMA, :pCDPROD, :pQTPROD)');
                                   //
                                   ParamByName('pNRSEMA').AsString := M_NRSEMA;
                                   ParamByName('pCDPROD').AsString := W_CDPROD;
                                   ParamByName('pQTPROD').AsFloat  := N_QTPROD;
                                   //
                                   ExecSQL;
                              End;
                              //
                              W_QTTOTA := W_QTTOTA+N_QTPROD;
                         End
                         Else
                         Begin
                              // Alterar dados
                              With qryIncDados do
                              begin
                                   SQL.Clear;
                                   Close;
                                   SQL.Add('UPDATE SACISM SET ISM_QTPROD = ISM_QTPROD + :pQTPROD');
                                   SQL.Add('Where (ISM_NRSEMA=:pNRSEMA) AND (ISM_CDPROD=:pCDPROD)');
                                   //
                                   ParamByName('pNRSEMA').AsString := M_NRSEMA;
                                   ParamByName('pCDPROD').AsString := W_CDPROD;
                                   ParamByName('pQTPROD').AsFloat  := N_QTPROD;
                                   //
                                   ExecSQL;
                              End;
                              //
                              W_QTTOTA := W_QTTOTA+N_QTPROD;
                         End;
                         //
                       qryItensPedidos.Next;
                    End;
                  End;    // se existe registro
                  //
                   M_QTQUAT := M_QTQUAT+qryPedidos.FieldByName('PED_QTPEDI').AsInteger;
              End;
              // Proximo registro
              qryPedidos.Next;
         End;
         // Alterar semana
         With qrySemanas do
         begin
              SQL.Clear;
              Close;
              SQL.Add('Select ISM_NRSEMA, SUM(ISM_QTPROD) ISM_TOTAL from SACISM');
              SQL.Add('Group by ISM_NRSEMA');
              Prepare;
              Open;
              First;
         End;
         //
         While not (qrySemanas.Eof) do
         begin
               With qryIncDados do
               begin
                    SQL.Clear;
                    Close;
                    SQL.Add('UPDATE SACSEM SET SEM_QTSEMA = :pQTPROD');
                    SQL.Add('Where (SEM_NRSEMA=:pNRSEMA)');
                    //
                    ParamByName('pNRSEMA').AsString := qrySemanas.FieldByname('ISM_NRSEMA').AsString;
                    ParamByName('pQTPROD').AsFloat  := qrySemanas.FieldByname('ISM_TOTAL').AsFloat;
                    //
                    ExecSQL;
               End;
              // Proximo
              qrySemanas.Next;
          End;
         //
         TRY
             Application.CreateForm(TfrmRelPlanej, frmRelPlanej);
             //
             M_TOTALP := M_QTPRIM+M_QTSEGS+M_QTTERC+M_QTQUAT;
             M_QTPROD := M_TOTALP/4;
             W_QTPROD := Frac(M_QTPROD);
             //
             If (W_QTPROD >= 0.5) Then
                M_QTPROD := Trunc(M_QTPROD)+1;
             //ShowMessage('Quant ' + FloattoStr(M_QTPROD));
             //uFuncoes.Arredondar(Trunc(M_TOTALP/4),0);
             //
             //
             With frmRelPlanej do
             Begin
                 txtQTPRIM.Caption := FormatFloat('###',M_QTPRIM);
                 txtQTSEGU.Caption := FormatFloat('###',M_QTSEGS);
                 txtQTTERC.Caption := FormatFloat('###',M_QTTERC);
                 txtQTQUAT.Caption := FormatFloat('###',M_QTQUAT);
                 //
                 txtQTPROS.Caption := FormatFloat('###',M_QTPROD);
                 txtQTPROQ.Caption := FormatFloat('###',M_QTPROD);
                 txtQTPROT.Caption := FormatFloat('###',M_QTPROD);
                 txtQTPROP.Caption := FormatFloat('###',M_QTPROD);
                 txTOTPROD.Caption := FormatFloat('###',M_QTPROD*4);
                 //
                 M_ESTPRI := M_QTPRIM-M_QTPROD;
                 //M_ESTSEG := M_QTSEGS-(M_QTPROD-M_ESTPRI);
                 If (M_ESTPRI > 0) Then
                    M_ESTSEG := M_QTSEGS-M_QTPROD-M_ESTPRI
                 Else
                    M_ESTSEG := M_QTSEGS-M_QTPROD-(-M_ESTPRI);
                 //M_ESTTER := (M_QTTERC-M_QTPROD)-M_ESTSEG;    //M_QTTERC-(M_QTPROD-M_ESTSEG);
                 If (M_ESTSEG > 0) Then
                     M_ESTTER := M_QTTERC-M_QTPROD-M_ESTSEG
                 Else
                     M_ESTTER := M_QTTERC-M_QTPROD-(-M_ESTSEG);
                 If (M_ESTTER > 0) Then
                     M_ESTQUA := M_QTQUAT-M_QTPROD-M_ESTTER
                 Else
                     M_ESTQUA := M_QTQUAT-M_QTPROD-(-M_ESTTER);
                 //M_ESTQUA := M_QTQUAT-(M_QTPROD-M_ESTTER);
                 //
                 If (M_QTPRIM > 0) Then
                   txtESTPRI.Caption := FormatFloat('###',M_ESTPRI);
                 If (M_QTSEGS > 0) Then
                   txtESTSEG.Caption := FormatFloat('###',M_ESTSEG);
                 If (M_QTTERC > 0) Then
                   txtESTTER.Caption := FormatFloat('###',M_ESTTER);
                 If (M_QTQUAT > 0) Then
                   txtESTQUA.Caption := FormatFloat('###',M_ESTQUA);
                // ShowMessage('TOTAL: '+InttoStr(M_TOTALP));
                 txtTOTAL.Caption := FormatFloat('###',M_TOTALP);
                 txtPeriodo.Caption := M_DTINIC+ ' A '+M_DTFINA;
                 //
                 tbSemanas.Open;
                 tbProdSemana.Open;
                 //
                 qrPlanejamento.Preview;
             End;
         Finally
             frmRelPlanej.tbProdSemana.Close;
             frmRelPlanej.tbSemanas.Close;
             frmRelPlanej.Free;
             //
             frmPrincipal.Info.Panels[0].Text := ' ';
             btGerar.Enabled := True;
         End;
         //
         btGerar.Enabled := True;
    Except
         ShowMessage('Erro na geração de relatorio.');
         Close;
    End;
end;

procedure TfrmConfAgregado.FormCreate(Sender: TObject);
begin
 Try
    //
    With qryQUANT do
    Begin
         SQL.Clear;
         CLose;
         SQL.Add('Update SACPED SET PED_QTPEDI = (Select SUM(ITP_QTPROD) from SACITP Where SACPED.PED_NRPEDI = SACITP.ITP_NRPEDI)');
         SQL.Add('Where (SACPED.PED_QTPEDI=:pQTPEDI)');
         //
         ParamByName('pQTPEDI').AsFloat := 0;
         //
         ExecSQL;
    End;
    //
    edtDTINIC.Date := Date;
 Except
     ShowMessage('Erro ao tentar atualizar quantidade!!!');
 End;
end;

procedure TfrmConfAgregado.cmbMesExit(Sender: TObject);
begin
     If not uFuncoes.Empty(cmbMes.Text) Then
     Begin
          Case cmbMes.ItemIndex of
             0: begin
                  M_DTINIC := '01/01/'+Copy(DatetoStr(Date()),7,4);
                  M_DTFINA := '31/01/'+Copy(DatetoStr(Date()),7,4);
                End;
             1: begin
                  M_DTINIC := '01/02/'+Copy(DatetoStr(Date()),7,4);
                  If (uFuncoes.AnoBiSexto(StrtoInt(Copy(DatetoStr(Date()),7,4)))) Then
                  //If (uFuncoes.AnoBiSexto(2005)) Then
                      M_DTFINA := '29/02/'+Copy(DatetoStr(Date()),7,4)
                  Else
                      M_DTFINA := '28/02/'+Copy(DatetoStr(Date()),7,4);
                End;
             2: begin
                  M_DTINIC := '01/03/'+Copy(DatetoStr(Date()),7,4);
                  M_DTFINA := '31/03/'+Copy(DatetoStr(Date()),7,4);
                End;
             3: begin
                  M_DTINIC := '01/04/'+Copy(DatetoStr(Date()),7,4);
                  M_DTFINA := '30/04/'+Copy(DatetoStr(Date()),7,4);
                End;
             4: begin
                  M_DTINIC := '01/05/'+Copy(DatetoStr(Date()),7,4);
                  M_DTFINA := '31/05/'+Copy(DatetoStr(Date()),7,4);
                End;
             5: begin
                  M_DTINIC := '01/06/'+Copy(DatetoStr(Date()),7,4);
                  M_DTFINA := '30/06/'+Copy(DatetoStr(Date()),7,4);
                End;
             6: begin
                  M_DTINIC := '01/07/'+Copy(DatetoStr(Date()),7,4);
                  M_DTFINA := '31/07/'+Copy(DatetoStr(Date()),7,4);
                End;
             7: begin
                  M_DTINIC := '01/08/'+Copy(DatetoStr(Date()),7,4);
                  M_DTFINA := '31/08/'+Copy(DatetoStr(Date()),7,4);
                End;
             8: begin
                  M_DTINIC := '01/09/'+Copy(DatetoStr(Date()),7,4);
                  M_DTFINA := '30/09/'+Copy(DatetoStr(Date()),7,4);
                End;
             9: begin
                  M_DTINIC := '01/10/'+Copy(DatetoStr(Date()),7,4);
                  M_DTFINA := '31/10/'+Copy(DatetoStr(Date()),7,4);
                End;
             10:begin
                  M_DTINIC := '01/11/'+Copy(DatetoStr(Date()),7,4);
                  M_DTFINA := '30/11/'+Copy(DatetoStr(Date()),7,4);
                End;
            11: begin
                  M_DTINIC := '01/12/'+Copy(DatetoStr(Date()),7,4);
                  M_DTFINA := '31/12/'+Copy(DatetoStr(Date()),7,4);
                End;
          End
     End;
     //
end;

procedure TfrmConfAgregado.edtDTINICExit(Sender: TObject);
begin
  try
      StrToDate(edtDTINIC.Text);
       If (edtDTINIC.Text <>'  /  /    ') Then
         edtDTFINA.Date := IncMonth(edtDTINIC.Date, 1)-1;
  Except
      on EConvertError do
      begin
          ShowMessage ('Data Inválida!');
          edtDTINIC.Date := Date();
          edtDTINIC.SetFocus;
          Exit; 
      End;
  end;
end;

procedure TfrmConfAgregado.edtDTINICKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #13) And (edtDTINIC.Text <>'  /  /    ') Then
     Begin
          Key := #0;
          btGerar.SetFocus;
     End;
end;

procedure TfrmConfAgregado.PRIMEIRA_SEMANA;
Var
     W_NRPEDI, W_CDPROD, M_NRSEMA : String;
     W_QTPROD : Double;
begin
     W_DTINIC := edtDTINIC.Date;
     W_DTFINA := StrtoDate('07/'+Copy(edtDTINIC.Text,4,7));
     M_NRSEMA := '01';
     W_QTTOTA := 0;
     //StrtoDate(edtDTINIC.Text);
     //
     With qryPedidoSemana do
     begin
          Close;
          //
          ParamByName('pDTINIC').AsDate := W_DTINIC;
          ParamByName('pDTFINA').AsDate := W_DTFINA;
          //
          Prepare;
          Open;
     End;
     // Inclui semana
     With qryIncDados do
     begin
          SQL.Clear;
          Close;
          SQL.Add('INSERT INTO SACSEM (SEM_NRSEMA, SEM_NMDESC)');
          SQL.Add('VALUES (:pNRSEMA, :pNMDESC)');
          //
          ParamByName('pNRSEMA').AsString := M_NRSEMA;
          ParamByName('pNMDESC').AsString := 'PRIMEIRA SEMANA';
          //
          ExecSQL;
     End;
     //
     qryPedidoSemana.First;
     While not (qryPedidoSemana.Eof) do
     begin
          W_NRPEDI := qryPedidoSemana.FieldByName('PED_NRPEDI').AsString;
          //
          With qryItensPedidos do
          begin
              SQL.Clear;
              Close;
              SQL.Add('Select GTM_NRPEDI, GTM_CDPROD, GTM_QTPROD from SACGTM');
              SQL.Add('Where (GTM_NRPEDI=:pNRPEDI)');
              //
              ParamByName('pNRPEDI').AsString := W_NRPEDI;
              //
              Prepare;
              Open;
          End;
          //
          If (qryItensPedidos.RecordCount > 0) Then    // se tem registro
          begin
              W_CDPROD := qryItensPedidos.FieldByName('GTM_CDPROD').AsString;
              W_QTPROD := qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
              //
              With qryLocItens do
              begin
                  Close;
                  //
                  ParamByName('pNRSEMA').AsString := M_NRSEMA;
                  ParamByName('pCDPROD').AsString := W_CDPROD;
                  //
                  Prepare;
                  Open;
              End;
              //
              If (qryLocItens.RecordCount = 0) Then
              begin
                   // incluir dados
                   With qryIncDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('INSERT INTO SACISM (ISM_NRSEMA, ISM_CDPROD, ISM_QTPROD)');
                        SQL.Add('VALUES (:pNRSEMA, :pCDPROD, :pQTPROD)');
                        //
                        ParamByName('pNRSEMA').AsString := M_NRSEMA;
                        ParamByName('pCDPROD').AsString := W_CDPROD;
                        ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                        //
                        ExecSQL;
                   End;
                   //
                   W_QTTOTA := W_QTTOTA+W_QTPROD;
              End
              Else
              Begin
                   // Alterar dados
                   With qryIncDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('UPDATE SACISM SET ISM_QTPROD = ISM_QTPROD + :pQTPROD');
                        SQL.Add('Where (ISM_NRSEMA=:pNRSEMA) AND (ISM_CDPROD=:pCDPROD)');
                        //
                        ParamByName('pNRSEMA').AsString := M_NRSEMA;
                        ParamByName('pCDPROD').AsString := W_CDPROD;
                        ParamByName('pQTPROD').AsFloat  := W_QTPROD;
                        //
                        ExecSQL;
                   End;
                   //
                   W_QTTOTA := W_QTTOTA+W_QTPROD;
              End;
          End;    // se existe registro
          //
          qryPedidoSemana.Next;
     End;
     //
     // Alterar semana
     With qryIncDados do
     begin
          SQL.Clear;
          Close;
          SQL.Add('UPDATE SACSEM SET SEM_QTSEMA=:pQTPROD');
          SQL.Add('Where (SEM_NRSEMA=:pNRSEMA)');
          //
          ParamByName('pNRSEMA').AsString := M_NRSEMA;
          ParamByName('pQTPROD').AsFloat  := W_QTTOTA;
          //
          ExecSQL;
     End;
end;

end.
