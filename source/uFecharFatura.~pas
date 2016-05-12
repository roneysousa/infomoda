unit uFecharFatura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, RXDBCtrl, StdCtrls, Buttons, Mask,
  ToolEdit, CurrEdit, DB, DBTables;

type
  TfrmFecharFatura = class(TForm)
    Panel2: TPanel;
    pnlSuperior: TPanel;
    pnlGrid: TPanel;
    pnlInferior: TPanel;
    GridDados: TRxDBGrid;
    btGrava: TBitBtn;
    btFechar: TBitBtn;
    Label1: TLabel;
    edtTOFATU: TCurrencyEdit;
    cmbPlano: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    edtENTRADA: TCurrencyEdit;
    Label4: TLabel;
    edtTOPARC: TCurrencyEdit;
    ckbFLCHEQ: TCheckBox;
    dsParcelas: TDataSource;
    qryContaReceber: TQuery;
    qryAtualizarItens: TQuery;
    qryLimpar: TQuery;
    CurrencyEdit1: TCurrencyEdit;
    procedure btFecharClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure cmbPlanoKeyPress(Sender: TObject; var Key: Char);
    procedure cmbPlanoExit(Sender: TObject);
    procedure GridDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckbFLCHEQClick(Sender: TObject);
    procedure GridDadosCellClick(Column: TColumn);
    procedure GridDadosKeyPress(Sender: TObject; var Key: Char);
    procedure GridDadosColEnter(Sender: TObject);
    procedure btGravaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtENTRADAChange(Sender: TObject);
    procedure edtENTRADAExit(Sender: TObject);
    procedure GridDadosColExit(Sender: TObject);
  private
    Procedure LIMPAR_DB;
    Procedure BUSCAR_PLANOS;
    Procedure CALCULAR;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFecharFatura: TfrmFecharFatura;
  M_TOFATU : Real;
  W_NRPEDI, M_CDPLAN, M_NMPLAN, M_CLCLIE : String;
  M_NRPARC, M_PEJURO, M_PEENTR : Double;
  M_TOPARC, M_VLPARC, M_VLENTR : Real;
  M_FLCHEQ : Boolean;

implementation

Uses udmInfoModa, uFuncoes, uPrincipal, uGerarFatura;

{$R *.dfm}

procedure TfrmFecharFatura.btFecharClick(Sender: TObject);
begin
    // LIMPAR_DB;
     //
     Close;
end;

procedure TfrmFecharFatura.BUSCAR_PLANOS;
begin
      LIMPAR_DB;
      //
      With dmInfoModa.qryPlanos do
      Begin
           SQL.Clear;
           Close;
           SQL.Add('Select * from "SACPLA.DB" order by PLA_NMPLAN');
           Prepare;
           Open;
           First;
      End;
      //
      While not (dmInfoModa.qryPlanos.Eof) do
      begin
           cmbPlano.Items.Add(dmInfoModa.qryPlanos.FieldByName('PLA_NMPLAN').AsString);
           dmInfoModa.qryPlanos.Next;
      End;
      //
      cmbPlano.ItemIndex := 0;
end;

procedure TfrmFecharFatura.CALCULAR;
Var
    W_TOPARC : Integer;
    W_ULTIPC, W_VLDIFE : Real;
begin
     If not uFuncoes.Empty(cmbPlano.Text) Then
     Begin
          dmInfoModa.tbParcelas.Close;
          M_NMPLAN := cmbPlano.Text;
          W_TOPARC := 1;
          W_ULTIPC := 0;
          //
          With dmInfoModa.qryPlanos do
          Begin
               SQL.Clear;
               Close;
               SQL.Add('Select * from "SACPLA.DB" Where (PLA_NMPLAN=:pNMPLAN)');
               ParamByName('pNMPLAN').AsString := M_NMPLAN;
               Prepare;
               Open;
          End;
          //
          If (dmInfoModa.qryPlanos.RecordCount >0) Then
          Begin
               M_CDPLAN := dmInfoModa.qryPlanos.FieldByName('PLA_CDPLAN').AsString;
               M_NRPARC := dmInfoModa.qryPlanos.FieldByName('PLA_NRPARC').AsFloat;
               M_PEJURO := dmInfoModa.qryPlanos.FieldByName('PLA_PEJURO').AsFloat;
               M_PEENTR := dmInfoModa.qryPlanos.FieldByName('PLA_PEENTR').AsFloat;
               M_VLENTR := 0;
               M_TOPARC := 0;
               M_VLPARC := 0;
               M_TOFATU := edtTOFATU.Value;
               //
             If (M_PEENTR < 100) Then
             Begin
                  M_TOFATU := uFuncoes.Arredondar(M_TOFATU+(uFuncoes.Gerapercentual(M_TOFATU,M_PEJURO)),2);
                  M_TOPARC := uFuncoes.Arredondar(M_TOPARC+(uFuncoes.Gerapercentual(M_TOPARC,M_PEJURO)),2);
                  //
                  M_VLENTR := uFuncoes.Gerapercentual(M_TOFATU,M_PEENTR);
                  M_TOPARC := M_TOFATU-M_VLENTR;
                  //
               {If (M_PEENTR < 100) Then
                    M_TOPARC := uFuncoes.Arredondar(M_TOPARC+(uFuncoes.Gerapercentual(M_TOPARC,M_PEJURO)),2);}
                 //
                 M_VLPARC := uFuncoes.Arredondar(M_TOPARC/M_NRPARC,2);
                 //
                 W_VLDIFE := M_TOPARC-(M_VLPARC * M_NRPARC);
                 //
                 If (W_VLDIFE < M_TOPARC) Then
                     W_ULTIPC := M_VLPARC+W_VLDIFE;
              End
              Else
              Begin
                   M_VLENTR := edtTOFATU.Value;
                   M_TOPARC := edtTOFATU.Value;
              End;
               //
               edtENTRADA.Value := M_VLENTR;
               edtTOPARC.Value  := M_TOPARC;
               CurrencyEdit1.Value := uFuncoes.Arredondar(edtTOFATU.Value +(uFuncoes.Gerapercentual(edtTOFATU.Value ,M_PEJURO)),2);
               //
               With dmInfoModa.qryParcelaFatura do
               Begin
                    SQL.Clear;
                    Close;
                    SQL.Add('Delete from SACCRT Where (CTR_NRPEDI=:pNRPEDI) ');
                    //
                    ParamByName('pNRPEDI').AsString := W_NRPEDI;
                    ExecSQL;
               End;
               //
              If (M_PEENTR < 100) Then
              Begin
               //
               While (W_TOPARC <= M_NRPARC) Do
               Begin
                    // Incluir Parcela
                    With dmInfoModa.qryParcelaFatura do
                    Begin
                         SQL.Clear;
                         Close;
                         SQL.Add('INSERT INTO SACCRT (CTR_NRPARC, CTR_VLPARC, CTR_DTFATU, CTR_DTVENC, CTR_CLCLIE,');
                         SQL.Add('CTR_NRPEDI, CTR_CDPLAN, CTR_TOFATU, CTR_VLENTR, CTR_CDUSUA)');
                         SQL.Add('VALUES (:pNRPARC, :pVLPARC, :pDTFATU, :pDTVENC, :pCLCLIE,');
                         SQL.Add(':pNRPEDI, :pCDPLAN, :pTOFATU, :pVLENTR, :pCDUSUA)');
                         //
                         ParamByName('pNRPARC').AsString := uFuncoes.StrZero(InttoStr(W_TOPARC),3);
                         ParamByName('pNRPEDI').AsString := W_NRPEDI;
                         If (W_TOPARC = M_NRPARC) Then
                            ParamByName('pVLPARC').AsFloat  := W_ULTIPC
                         Else
                            ParamByName('pVLPARC').AsFloat  := M_VLPARC;
                         ParamByName('pDTFATU').AsDate   := Date();
                         ParamByName('pDTVENC').AsDate   := IncMonth(Date(), W_TOPARC);
                         ParamByName('pCLCLIE').AsString := M_CLCLIE;
                         ParamByName('pCDPLAN').AsString := M_CDPLAN;
                         ParamByName('pTOFATU').AsCurrency := edtTOFATU.Value;
                         ParamByName('pVLENTR').AsCurrency := M_VLENTR;
                         ParamByName('pCDUSUA').AsString := uPrincipal.M_CDUSUA;
                         //
                         ExecSQL;
                    End;
                    //
                    W_TOPARC := W_TOPARC+1;
               End;
               //
               dmInfoModa.tbParcelas.Filtered := False;
               dmInfoModa.tbParcelas.Filter   := 'CTR_NRPEDI='+QuotedStr(W_NRPEDI);
               dmInfoModa.tbParcelas.Filtered := True;
               dmInfoModa.tbParcelas.Open;
               //
              End
              Else
              Begin
                    // Incluir Parcela AVISTA
                    With dmInfoModa.qryParcelaFatura do
                    Begin
                         SQL.Clear;
                         Close;
                         SQL.Add('INSERT INTO SACCRT (CTR_NRPARC, CTR_VLPARC, CTR_DTFATU, CTR_DTVENC, CTR_CLCLIE,');
                         SQL.Add('CTR_NRPEDI, CTR_CDPLAN, CTR_TOFATU, CTR_VLENTR, CTR_CDUSUA)');
                         SQL.Add('VALUES (:pNRPARC, :pVLPARC, :pDTFATU, :pDTVENC, :pCLCLIE,');
                         SQL.Add(':pNRPEDI, :pCDPLAN, :pTOFATU, :pVLENTR, :pCDUSUA)');
                         //
                         ParamByName('pNRPARC').AsString := '000';
                         ParamByName('pNRPEDI').AsString := W_NRPEDI;
                         ParamByName('pVLPARC').AsFloat  := M_VLENTR;
                         ParamByName('pDTFATU').AsDate   := Date();
                         ParamByName('pDTVENC').AsDate   := Date();
                         ParamByName('pCLCLIE').AsString := M_CLCLIE;
                         ParamByName('pCDPLAN').AsString := M_CDPLAN;
                         ParamByName('pTOFATU').AsCurrency := edtTOFATU.Value;
                         ParamByName('pVLENTR').AsCurrency := M_VLENTR;
                         ParamByName('pCDUSUA').AsString := uPrincipal.M_CDUSUA;
                         //
                         ExecSQL;
                    End;
                    //
                    edtTOPARC.Value := uFuncoes.Arredondar(edtENTRADA.Value,2);
                    M_TOPARC := edtTOPARC.Value;
                    //
                    dmInfoModa.tbParcelas.Close;
              End;
              //
          End;
     End;
end;

procedure TfrmFecharFatura.FormActivate(Sender: TObject);
begin
     //
     edtTOFATU.Value := M_TOFATU;
     //
     BUSCAR_PLANOS;
     //
     M_FLCHEQ := False;
     ckbFLCHEQ.Checked := M_FLCHEQ;
     //
     With dmInfoModa.qryParcelaFatura do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Delete from SACCRT');
          ExecSQL;
     End;
     //
     dmInfoModa.tbParcelas.Close; 
     //
     GridDados.Columns[3].Visible := false;
     GridDados.Columns[4].Visible := false;
     GridDados.Columns[5].Visible := false;
end;

procedure TfrmFecharFatura.cmbPlanoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key =#13) and not uFuncoes.Empty(cmbPlano.Text) then
     Begin
          Key := #0;
          //
          GridDados.SetFocus;
          GridDados.SelectedIndex := 1;
     End;
end;

procedure TfrmFecharFatura.cmbPlanoExit(Sender: TObject);
begin
     If not uFuncoes.Empty(cmbPlano.Text) then
        CALCULAR;
end;

procedure TfrmFecharFatura.GridDadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = 46) Then
        KEY := 0;
end;

procedure TfrmFecharFatura.ckbFLCHEQClick(Sender: TObject);
begin
     If (ckbFLCHEQ.Checked) Then
     Begin
         GridDados.Columns[3].Visible := True;
         GridDados.Columns[4].Visible := True;
         GridDados.Columns[5].Visible := True;
     End
     Else
     Begin
         GridDados.Columns[3].Visible := false;
         GridDados.Columns[4].Visible := false;
         GridDados.Columns[5].Visible := false;
     End;
end;

procedure TfrmFecharFatura.GridDadosCellClick(Column: TColumn);
begin
   if Column.Field = dmInfoModa.tbParcelasCTR_NRPARC then
      GridDados.SelectedIndex := 1;
end;

procedure TfrmFecharFatura.GridDadosKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #13) and
        (GridDados.SelectedField = dmInfoModa.tbParcelas.FieldByName('CTR_NRCHEQ')) Then
     Begin
      Key := #0;
      //
      if GridDados.SelectedField = dmInfoModa.tbParcelas.FieldByName('CTR_NRCHEQ') then
      Begin
         If not uFuncoes.Empty(dmInfoModa.tbParcelasCTR_NRCHEQ.AsString) Then
         Begin
             dmInfoModa.tbParcelas.Edit;
             dmInfoModa.tbParcelasCTR_NRCHEQ.AsString :=
                   uFuncoes.StrZero(dmInfoModa.tbParcelasCTR_NRCHEQ.AsString,10);
             dmInfoModa.tbParcelas.Post;
         End;
        //
        If not (dmInfoModa.tbParcelas.Eof) Then
        Begin
            dmInfoModa.tbParcelas.Next;
            GridDados.SelectedIndex := 3;
        End
        Else
            btGrava.SetFocus;
      End;
     End;
     //
     If uFuncoes.Empty(dmInfoModa.tbParcelas.FieldByName('CTR_NRPARC').AsString) Then
     begin
         Key := #0;
         dmInfoModa.tbParcelas.Delete;
     End;
end;

procedure TfrmFecharFatura.GridDadosColEnter(Sender: TObject);
begin
  if GridDados.SelectedField = dmInfoModa.tbParcelas.FieldByName('CTR_NRPARC') then
      GridDados.SelectedIndex := 1;
end;

procedure TfrmFecharFatura.btGravaClick(Sender: TObject);
Var
    W_TOTAPC, W_VLFATU : Real;
    W_FLVOLT : Boolean;
    M_NRFATU, M_NRDUPL : String;
begin
   If (M_PEENTR < 100) Then
   Begin
     W_FLVOLT := False;
     //  Teste Quantidade Digitada
     dmInfoModa.tbParcelas.DisableControls;
     dmInfoModa.tbParcelas.First;
     W_VLFATU := 0;
     W_TOTAPC := 0;
     While not (dmInfoModa.tbParcelas.Eof) do
     Begin
          W_TOTAPC := W_TOTAPC+dmInfoModa.tbParcelas.FieldByName('CTR_VLPARC').AsFloat;
          dmInfoModa.tbParcelas.Next;
     End;
     //
     dmInfoModa.tbParcelas.EnableControls;
     //
     W_TOTAPC := uFuncoes.Arredondar(W_TOTAPC+edtENTRADA.Value,2);
     {ShowMessage('VALOR : ' + FloattoStr(W_TOTAPC)+#13
                 +'VL : '+ FloattoStr(M_TOPARC));}
     //
     W_VLFATU := uFuncoes.Arredondar(edtTOFATU.Value+uFuncoes.Gerapercentual(edtTOFATU.Value,M_PEJURO),2);
     CurrencyEdit1.Value := W_VLFATU;
     //ShowMessage('VAlor : '+FloattoStr(W_TOTAPC));
     //
     If (W_TOTAPC = W_VLFATU) Then
     Begin

     End
     Else
     Begin
       //If (W_TOTAPC < M_TOPARC+edtENTRADA.Value) Then
       If (W_TOTAPC < W_VLFATU) Then
       Begin
            Application.MessageBox('A soma das parcelas está menor'+#13
                                  +'que Total da Parcela!!!',
                 'ATENÇÃO',MB_DEFBUTTON2+MB_OK+MB_ICONINFORMATION);
            //
            dmInfoModa.tbParcelas.Last;
            GridDados.SetFocus;
            GridDados.SelectedIndex := 2;
            Exit;
       End;
     End;
     //
   End
   Else
   Begin
       If (edtENTRADA.Value < edtTOFATU.Value) Then
       Begin
            Application.MessageBox('O valor da parcela está menor'+#13
                                  +'que Total da fatura!!!',
                 'ATENÇÃO',MB_DEFBUTTON2+MB_OK+MB_ICONINFORMATION);
            //
            edtENTRADA.SetFocus;
            edtENTRADA.Value := edtTOFATU.Value;
            Exit;
       End;
   End;
     // Teste Fluxo de cheque
     If (ckbFLCHEQ.Checked) Then
     Begin
          //dmInfoModa.tbParcelas.DisableControls;
          dmInfoModa.tbParcelas.First;
          While not (dmInfoModa.tbParcelas.Eof) do
          Begin
               If uFuncoes.Empty(dmInfoModa.tbParcelas.FieldByName('CRT_NMBANC').AsString) Then
               Begin
                    W_FLVOLT := True;
                    Break;
                    GridDados.SelectedIndex := 3;
               End;
               //
               If uFuncoes.Empty(dmInfoModa.tbParcelas.FieldByName('CTR_NRAGEN').AsString) Then
               Begin
                    W_FLVOLT := True;
                    Break;
                    GridDados.SelectedIndex := 4;
               End;
               If uFuncoes.Empty(dmInfoModa.tbParcelas.FieldByName('CTR_NRCHEQ').AsString) Then
               Begin
                    W_FLVOLT := True;
                    Break;
                    GridDados.SelectedIndex := 5;
               End;
               dmInfoModa.tbParcelas.Next;
          End;
          //
          If (W_FLVOLT = True) Then
          Begin
               ShowMessage('Está faltando dados do cheque!!!');
               Exit;
          End;
     End;
     //
     dmInfoModa.dbInfoModa.StartTransaction;
     //  Gravar Dados
     Try
           If (dmInfoModa.tbParametros.Active = False ) Then
              dmInfoModa.tbParametros.Open;
           //
           dmInfoModa.tbParametros.Edit;
           dmInfoModa.tbParametros.FieldByName('PAR_NRFATU').AsFloat :=
              dmInfoModa.tbParametros.FieldByName('PAR_NRFATU').AsFloat+1;
           dmInfoModa.tbParametros.Post;
           //
           M_NRFATU := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_NRFATU').AsString,10);
           //
           frmGerarFatura.tbItensPedidos.DisableControls;
           frmGerarFatura.tbItensPedidos.First;
           While not (frmGerarFatura.tbItensPedidos.Eof) do
           Begin
                If (frmGerarFatura.tbItensPedidos.FieldByName('TFA_FLSITU').AsBoolean)
                 And (uFuncoes.Empty(frmGerarFatura.tbItensPedidos.FieldByName('TFA_NRFATU').AsString))  Then
                Begin
                      With qryAtualizarItens do
                      Begin
                           Close;
                           //
                           ParamByName('pNRPEDI').AsString := W_NRPEDI;
                           ParamByName('pNRITEM').AsString := frmGerarFatura.tbItensPedidos.FieldByName('TFA_NRITEM').AsString; 
                           ParamByName('pFLSITU').AsString := 'F';
                           ParamByName('pNRFATU').AsString := M_NRFATU;
                           //
                           ExecSQL;
                      End;
                End;
                //
                frmGerarFatura.tbItensPedidos.Next;
           End;
           //
           If (M_PEENTR < 100) Then
           Begin
                // Entrada
                dmInfoModa.tbParametros.Edit;
                dmInfoModa.tbParametros.FieldByName('PAR_NRDUPL').AsFloat :=
                      dmInfoModa.tbParametros.FieldByName('PAR_NRDUPL').AsFloat+1;
                dmInfoModa.tbParametros.Post;
                //
                M_NRDUPL := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_NRDUPL').AsString,10);
                //
                    With qryContaReceber do
                    Begin
                         SQL.Clear;
                         Close;
                         SQL.Add('INSERT INTO SACCTR (CTR_NRDUPL, CTR_NRFATU, CTR_NRPARC, CTR_VLPARC, CTR_DTFATU, CTR_DTVENC,');
                         SQL.Add('CTR_CDBANC, CTR_NRAGEN, CTR_NRCHEQ, CTR_CLCLIE, CTR_NRPEDI, CTR_CDPLAN, CTR_TOFATU, CTR_VLENTR, CTR_FLSITU, CTR_CDUSUA)');
                         SQL.Add('VALUES (:pNRDUPL, :pNRFATU, :pNRPARC, :pVLPARC, :pDTFATU, :pDTVENC,');
                         SQL.Add(':pCDBANC, :pNRAGEN, :pNRCHEQ, :pCLCLIE, :pNRPEDI, :pCDPLAN, :pTOFATU, :pVLENTR, :pFLSITU, :pCDUSUA)');
                         //
                         ParamByName('pNRDUPL').AsString := M_NRDUPL;
                         ParamByName('pNRFATU').AsString := M_NRFATU;
                         ParamByName('pNRPARC').AsString := '000';
                         ParamByName('pVLPARC').AsFloat  := M_VLENTR;
                         ParamByName('pDTFATU').AsDate   := Date();
                         ParamByName('pDTVENC').AsDate   := Date();
                         ParamByName('pCDBANC').AsString := '';
                         ParamByName('pNRAGEN').AsString := '';
                         ParamByName('pNRCHEQ').AsString := '';
                         ParamByName('pCLCLIE').AsString := M_CLCLIE;
                         ParamByName('pNRPEDI').AsString := W_NRPEDI;
                         ParamByName('pCDPLAN').AsString := M_CDPLAN;
                         ParamByName('pTOFATU').AsCurrency := edtTOFATU.Value;
                         ParamByName('pVLENTR').AsCurrency := edtENTRADA.Value;
                         ParamByName('pFLSITU').AsString := 'A';
                         ParamByName('pCDUSUA').AsString := uPrincipal.M_CDUSUA;
                         //
                         ExecSQL;
                    End;
                //
                dmInfoModa.tbParcelas.DisableControls;
                dmInfoModa.tbParcelas.First;
                //  Parcelas
                While not (dmInfoModa.tbParcelas.Eof) do
                Begin
                    dmInfoModa.tbParametros.Edit;
                    dmInfoModa.tbParametros.FieldByName('PAR_NRDUPL').AsFloat :=
                        dmInfoModa.tbParametros.FieldByName('PAR_NRDUPL').AsFloat+1;
                    dmInfoModa.tbParametros.Post;
                    //
                    M_NRDUPL := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_NRDUPL').AsString,10);
                    //
                    With qryContaReceber do
                    Begin
                         SQL.Clear;
                         Close;
                         SQL.Add('INSERT INTO SACCTR (CTR_NRDUPL, CTR_NRFATU, CTR_NRPARC, CTR_VLPARC, CTR_DTFATU, CTR_DTVENC,');
                         SQL.Add('CTR_CDBANC, CTR_NRAGEN, CTR_NRCHEQ, CTR_CLCLIE, CTR_NRPEDI, CTR_CDPLAN, CTR_TOFATU, CTR_VLENTR, CTR_FLSITU, CTR_CDUSUA)');
                         SQL.Add('VALUES (:pNRDUPL, :pNRFATU, :pNRPARC, :pVLPARC, :pDTFATU, :pDTVENC,');
                         SQL.Add(':pCDBANC, :pNRAGEN, :pNRCHEQ, :pCLCLIE, :pNRPEDI, :pCDPLAN, :pTOFATU, :pVLENTR, :pFLSITU, :pCDUSUA)');
                         //
                         ParamByName('pNRDUPL').AsString := M_NRDUPL;
                         ParamByName('pNRFATU').AsString := M_NRFATU;
                         ParamByName('pNRPARC').AsString := dmInfoModa.tbParcelas.FieldByName('CTR_NRPARC').AsString;
                         ParamByName('pVLPARC').AsFloat  := dmInfoModa.tbParcelas.FieldByName('CTR_VLPARC').AsFloat;
                         ParamByName('pDTFATU').AsDate   := Date();
                         ParamByName('pDTVENC').AsDate   := dmInfoModa.tbParcelas.FieldByName('CTR_DTVENC').AsDateTime;
                         ParamByName('pCDBANC').AsString := uFuncoes.StrZero(dmInfoModa.tbParcelas.FieldByName('CTR_CDBANC').AsString,3);
                         ParamByName('pNRAGEN').AsString := uFuncoes.StrZero(dmInfoModa.tbParcelas.FieldByName('CTR_NRAGEN').AsString,5);
                         ParamByName('pNRCHEQ').AsString := uFuncoes.StrZero(dmInfoModa.tbParcelas.FieldByName('CTR_NRCHEQ').AsString,10);
                         ParamByName('pCLCLIE').AsString := dmInfoModa.tbParcelas.FieldByName('CTR_CLCLIE').AsString;
                         ParamByName('pNRPEDI').AsString := dmInfoModa.tbParcelas.FieldByName('CTR_NRPEDI').AsString;
                         ParamByName('pCDPLAN').AsString := dmInfoModa.tbParcelas.FieldByName('CTR_CDPLAN').AsString;
                         ParamByName('pTOFATU').AsCurrency := edtTOFATU.Value;
                         //dmInfoModa.tbParcelas.FieldByName('CTR_CDPLAN').AsString;
                         ParamByName('pVLENTR').AsCurrency := edtENTRADA.Value;
                         ParamByName('pFLSITU').AsString := dmInfoModa.tbParcelas.FieldByName('CTR_FLSITU').AsString;
                         ParamByName('pCDUSUA').AsString := uPrincipal.M_CDUSUA;
                         //
                         ExecSQL;
                    End;
                   //
                   dmInfoModa.tbParcelas.Next;
                End;
                //
                dmInfoModa.tbParcelas.EnableControls;
           End
           Else
           Begin
                dmInfoModa.tbParcelas.Open;
                dmInfoModa.tbParcelas.DisableControls;
                dmInfoModa.tbParcelas.First;
                // Entrada
                dmInfoModa.tbParametros.Edit;
                dmInfoModa.tbParametros.FieldByName('PAR_NRDUPL').AsFloat :=
                      dmInfoModa.tbParametros.FieldByName('PAR_NRDUPL').AsFloat+1;
                dmInfoModa.tbParametros.Post;
                //
                M_NRDUPL := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_NRDUPL').AsString,10);
                //
                    With qryContaReceber do
                    Begin
                         SQL.Clear;
                         Close;
                         SQL.Add('INSERT INTO SACCTR (CTR_NRDUPL, CTR_NRFATU, CTR_NRPARC, CTR_VLPARC, CTR_DTFATU, CTR_DTVENC,');
                         SQL.Add('CTR_CDBANC, CTR_NRAGEN, CTR_NRCHEQ, CTR_CLCLIE, CTR_NRPEDI, CTR_CDPLAN, CTR_TOFATU, CTR_VLENTR, CTR_FLSITU, CTR_CDUSUA)');
                         SQL.Add('VALUES (:pNRDUPL, :pNRFATU, :pNRPARC, :pVLPARC, :pDTFATU, :pDTVENC,');
                         SQL.Add(':pCDBANC, :pNRAGEN, :pNRCHEQ, :pCLCLIE, :pNRPEDI, :pCDPLAN, :pTOFATU, :pVLENTR, :pFLSITU, :pCDUSUA)');
                         //
                         ParamByName('pNRDUPL').AsString := M_NRDUPL;
                         ParamByName('pNRFATU').AsString := M_NRFATU;
                         ParamByName('pNRPARC').AsString := '000';
                         ParamByName('pVLPARC').AsFloat  := M_VLENTR;
                         ParamByName('pDTFATU').AsDate   := Date();
                         ParamByName('pDTVENC').AsDate   := dmInfoModa.tbParcelas.FieldByName('CTR_DTVENC').AsDateTime;
                         ParamByName('pCDBANC').AsString := dmInfoModa.tbParcelas.FieldByName('CTR_CDBANC').AsString;
                         ParamByName('pNRAGEN').AsString := dmInfoModa.tbParcelas.FieldByName('CTR_NRAGEN').AsString;
                         ParamByName('pNRCHEQ').AsString := dmInfoModa.tbParcelas.FieldByName('CTR_NRCHEQ').AsString;
                         ParamByName('pCLCLIE').AsString := M_CLCLIE;
                         ParamByName('pNRPEDI').AsString := W_NRPEDI;
                         ParamByName('pCDPLAN').AsString := M_CDPLAN;
                         ParamByName('pTOFATU').AsCurrency := edtTOFATU.Value;
                         ParamByName('pVLENTR').AsCurrency := edtTOFATU.Value;//edtENTRADA.Value;
                         ParamByName('pFLSITU').AsString := 'A';
                         ParamByName('pCDUSUA').AsString := uPrincipal.M_CDUSUA;
                         //
                         ExecSQL;
                    End;
                    //
                    dmInfoModa.tbParcelas.EnableControls;
                    dmInfoModa.tbParcelas.close;
           End;
           //
           dmInfoModa.dbInfoModa.Commit;
           //
           Application.MessageBox('Operação concluida com sucesso.',
                 'ATENÇÃO',MB_OK+MB_ICONINFORMATION);
           uGerarFatura.M_FLFECH := True;
           Close;
           //
     Except
            Application.MessageBox('Erro ao tentar gravar dados.',
                 'ATENÇÃO',MB_OK+MB_ICONINFORMATION);
            dmInfoModa.dbInfoModa.Rollback;
     End;
end;

procedure TfrmFecharFatura.LIMPAR_DB;
begin
     With qryLimpar do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Delete from SACCRT');
          ExecSQL;
     End;
end;

procedure TfrmFecharFatura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      LIMPAR_DB;
      //
      Action := caFree;
end;

procedure TfrmFecharFatura.edtENTRADAChange(Sender: TObject);
begin
     If not uFuncoes.Empty(edtENTRADA.Text)
       And (M_PEENTR = 100) Then
     Begin
          edtTOPARC.Value := edtENTRADA.Value;
          If (dmInfoModa.tbParcelas.Active = True) And
           (dmInfoModa.tbParcelas.RecordCount > 0) Then
          Begin
               dmInfoModa.tbParcelas.Edit;
               dmInfoModa.tbParcelas.FieldByName('CTR_VLPARC').AsCurrency := edtENTRADA.Value;
          End;
     End;
end;

procedure TfrmFecharFatura.edtENTRADAExit(Sender: TObject);
begin
     {If not uFuncoes.Empty(edtENTRADA.Text) then
        CALCULAR;}
end;

procedure TfrmFecharFatura.GridDadosColExit(Sender: TObject);
begin
     // Nº. Agencia
     if GridDados.SelectedField = dmInfoModa.tbParcelas.FieldByName('CTR_NRAGEN') then
         If not uFuncoes.Empty(dmInfoModa.tbParcelasCTR_NRAGEN.AsString) Then
         Begin
             dmInfoModa.tbParcelas.Edit;
             dmInfoModa.tbParcelasCTR_NRAGEN.AsString :=
                   uFuncoes.StrZero(dmInfoModa.tbParcelasCTR_NRAGEN.AsString,5);
             dmInfoModa.tbParcelas.Post;
         End;
     // Nº. Cheque
     if GridDados.SelectedField = dmInfoModa.tbParcelas.FieldByName('CTR_NRCHEQ') then
         If not uFuncoes.Empty(dmInfoModa.tbParcelasCTR_NRCHEQ.AsString) Then
         Begin
             dmInfoModa.tbParcelas.Edit;
             dmInfoModa.tbParcelasCTR_NRCHEQ.AsString :=
                   uFuncoes.StrZero(dmInfoModa.tbParcelasCTR_NRCHEQ.AsString,10);
             dmInfoModa.tbParcelas.Post;      
         End;
end;

end.
