unit uCadGradeTamanho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DB, Grids, DBGrids, StdCtrls, Buttons, DBCtrls, Mask,
  RxLookup, DBTables;

type
  TfrmGradeTamanho = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    dsGrade: TDataSource;
    btConfirmar: TBitBtn;
    btCancelar: TBitBtn;
    Panel4: TPanel;
    Panel1: TPanel;
    GridGrade: TDBGrid;
    Label5: TLabel;
    dbeCDPROD: TDBEdit;
    Label7: TLabel;
    spLocalizar: TSpeedButton;
    Panel5: TPanel;
    Label1: TLabel;
    pnlSUBTOT: TPanel;
    dsCores: TDataSource;
    Label2: TLabel;
    qryLimpar: TQuery;
    cmbTamanhos: TComboBox;
    qryDeleteItemPedido: TQuery;
    lbl_nmprod: TLabel;
    lbl_vlunit: TLabel;
    qrySUBTOT: TQuery;
    Panel6: TPanel;
    qryQUANT: TQuery;
    GridQUANT: TDBGrid;
    dsQUANT: TDataSource;
    qryAtualizaQUANT: TQuery;
    qryQUANTQTD_NRPEDI: TStringField;
    qryQUANTQTD_CDBARR: TStringField;
    qryQUANTQTD_CDTAMA: TStringField;
    qryQUANTQTD_QTTAMA: TFloatField;
    procedure GridGradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dbeCDPRODKeyPress(Sender: TObject; var Key: Char);
    procedure spLocalizarClick(Sender: TObject);
    procedure dbeCDPRODExit(Sender: TObject);
    procedure GridGradeColEnter(Sender: TObject);
    procedure GridGradeExit(Sender: TObject);
    procedure GridGradeKeyPress(Sender: TObject; var Key: Char);
    procedure dbeCDPRODEnter(Sender: TObject);
    procedure cmbTamanhosExit(Sender: TObject);
    procedure cmbTamanhosKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure dbeCDPRODChange(Sender: TObject);
    procedure GridGradeEnter(Sender: TObject);
  private
     procedure CALCULAR_SUB_TOTAL;
     procedure LIMPAR_GRID;
     procedure TAMANHO;
     procedure TESTA_QUANT;
     procedure QUANT_PRODUTO;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGradeTamanho: TfrmGradeTamanho;
  W_VLSUBT, M_QTPROD, W_QTPROD : Real;
  M_QTTAMA : String;

implementation

uses udmInfoModa, uFuncoes, uCadPedidos, uLocProduto;

{$R *.dfm}

procedure TfrmGradeTamanho.GridGradeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (Shift = [ssCtrl]) and (Key = 46) Then
          KEY := 0;
     //
     case key of
        13 : Key := 9;
     end;
     //
end;

procedure TfrmGradeTamanho.btConfirmarClick(Sender: TObject);
Var
     N_CODCOR, N_NOMCOR, M_VLTAMA, M_FLPROD : String;
begin
     //
     If uFuncoes.Empty(dbeCDPROD.text) Then
     begin
          Application.MessageBox('Digite do c�digo do produto.',
            'ATEN��O', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dbeCDPROD.SetFocus;
          Exit;
     End;
     //
     If uFuncoes.Empty(cmbTamanhos.text) Then
     begin
          Application.MessageBox('Selecione o tamanho do produto.',
            'ATEN��O', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          cmbTamanhos.SetFocus;
          Exit;
     End;
     //
  Try
     M_QTPROD := 0;
     M_FLPROD := 'N';
     //
     dmInfoModa.tbGrade.DisableControls;
     dmInfoModa.tbGrade.First;
     //
     While not (dmInfoModa.tbGrade.Eof) do
     begin
          dmInfoModa.tbGrade.Edit;
          If (dmInfoModa.tbGrade.FieldByName('GRA_QTTAMA').AsFloat>0) Then
          begin
               M_QTPROD := M_QTPROD + dmInfoModa.tbGrade.FieldByName('GRA_QTTAMA').AsFloat;
               //
               {N_NOMCOR := dmInfoModa.tbGrade.FieldByName('GRA_NOMCOR').AsString;
               //
               With dmInfoModa.qryCores do
               begin
                    SQL.Clear;
                    Close;
                    SQL.Add('Select * from SACCOR Where (COR_NOMCOR=:pNOMCOR)');
                    ParamByName('pNOMCOR').AsString := N_NOMCOR;
                    Open;
               End;
               //
               If (dmInfoModa.qryCores.RecordCount > 0) Then
                  N_CODCOR := dmInfoModa.qryCores.FieldByName('COR_CODCOR').AsString
               Else
                   ShowMessage('C�digo da cor n�o encontrado!!!!');}
               //
               With dmInfoModa.qryIncGrade do
               begin
                    SQL.Clear;
                    Close;
                    SQL.Add('INSERT INTO SACGTM (GTM_NRPEDI,GTM_CDPROD,GTM_CDTAMA,GTM_TAMANH,GTM_QTPROD,GTM_CODCOR)');
                    SQL.Add('VALUES (:M_NRPEDI,:M_CDPROD,:M_CDTAMA,:M_TAMANH,:M_QTPROD,:M_CODCOR)');
                    //
                    ParamByName('M_NRPEDI').AsString := dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
                    ParamByName('M_CDPROD').AsString := dmInfoModa.tbItensPedido.FieldByName('ITP_CDPROD').AsString;
                    ParamByName('M_CDTAMA').AsString := cmbTamanhos.Text;
                    //dmInfoModa.tbGrade.FieldByName('GRA_CDTAMA').AsString;
                    If (cmbTamanhos.Text = '34') Then
                       M_VLTAMA := '34';
                    If (cmbTamanhos.Text = '36') or (cmbTamanhos.Text = 'PP') Then
                       M_VLTAMA := '36';
                    //
                    If (cmbTamanhos.Text = '38') or (cmbTamanhos.Text = 'P') Then
                       M_VLTAMA := '38';
                    //
                    If (cmbTamanhos.Text = '40') or (cmbTamanhos.Text = 'M') Then
                       M_VLTAMA := '40';
                    //
                    If (cmbTamanhos.Text = '42') or (cmbTamanhos.Text = 'G') Then
                       M_VLTAMA := '42';
                    //
                    If (cmbTamanhos.Text = '44') or (cmbTamanhos.Text = 'GG') Then
                       M_VLTAMA := '44';
                    If (cmbTamanhos.Text = '46') Then
                       M_VLTAMA := '46';
                    If (cmbTamanhos.Text = '48') Then
                       M_VLTAMA := '48';
                    If (cmbTamanhos.Text = '50') Then
                       M_VLTAMA := '50';
                    //
                    ParamByName('M_TAMANH').AsString := M_VLTAMA;
                    //dmInfoModa.tbGrade.FieldByName('GRA_TAMANH').AsString;
                    ParamByName('M_QTPROD').AsFloat  := dmInfoModa.tbGrade.FieldByName('GRA_QTTAMA').AsFloat;
                    ParamByName('M_CODCOR').AsString := dmInfoModa.tbGrade.FieldByName('GRA_CDCOR2').AsString;
                    //
                    Execsql;
               End;
               //
          End;
          dmInfoModa.tbGrade.Next;
     End;
     //
     dmInfoModa.tbGrade.First;
     dmInfoModa.tbGrade.EnableControls;
     //
     //pnlSUBTOT.Caption := FormatFloat('###,###,##0.#0',dmInfoModa.tbItensPedido.FieldByName('ITP_VLUNI2').AsFloat*M_QTPROD);
     pnlSUBTOT.Caption := FormatFloat('###,###,##0.#0',StrtoFloat(lbl_vlunit.Caption )*M_QTPROD);
     If (M_QTTAMA = '0') Then
           dmInfoModa.tbItensPedido.FieldByName('ITP_QTPROD').AsFloat := M_QTPROD;
     //
     If (M_QTTAMA = '1') Then
     begin
           dmInfoModa.tbItensPedido.Edit;
           dmInfoModa.tbItensPedido.FieldByName('ITP_QTPROD').AsFloat :=
              dmInfoModa.tbItensPedido.FieldByName('ITP_QTPROD').AsFloat+M_QTPROD;
     End;
     //
     dmInfoModa.tbItensPedido.FieldByName('ITP_VLUNIT').AsFloat := StrtoFloat(lbl_vlunit.Caption );

          //dmInfoModa.tbItensPedido.FieldByName('ITP_VLUNI2').AsFloat;
     dmInfoModa.tbItensPedido.Post;
     uCadPedidos.M_FLGRAV := True;
     //
     dmInfoModa.tbPedidos.FieldByName('PED_QTPEDI').AsFloat :=
          dmInfoModa.tbItensPedido.FieldByName('ITP_QTPROD').AsFloat;
     dmInfoModa.tbPedidos.FieldByName('PED_TOPEDI').AsCurrency :=
         dmInfoModa.tbPedidos.FieldByName('PED_TOPEDI').AsCurrency+W_VLSUBT;
     //
     qryQUANT.DisableControls;
     //
     If (qryQUANT.Active = False) Then
       qryQUANT.Open;
     //
     {If not (qryQUANT.Locate('QTD_NRPEDI;QTD_CDBARR;QTD_CDTAMA',
         VarArrayOf([dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString,
                    uFuncoes.StrZero(dbeCDPROD.Text,13),
                    cmbTamanhos.Text]),[]) ) Then
     Begin}
        //
     If ( M_QTPROD > 0) Then
     Begin
        With qryAtualizaQUANT do
        Begin
           SQL.Clear;
           Close;
           SQL.Add('Insert INTO SACQTD (QTD_NRPEDI, QTD_CDBARR, QTD_CDTAMA, QTD_QTTAMA) VALUES');
           SQL.Add('(:pNRPEDI, :pCDBARR, :pCDTAMA, :pQTTAMA)');
           //
           ParamByName('pNRPEDI').AsString :=
                dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString;
           ParamByName('pCDBARR').AsString := uFuncoes.StrZero(dbeCDPROD.Text,13);
           ParamByName('pCDTAMA').AsString := cmbTamanhos.Text;
           ParamByName('pQTTAMA').AsFloat  := M_QTPROD;
           //
           ExecSQL;
       End;
     End;
     //
     LIMPAR_GRID;
     //
     M_QTTAMA := '1';
     dbeCDPROD.Enabled := False;
     spLocalizar.Enabled := False;
     //
      //End;
      {Else
      Begin
           SQL.Clear;
           Close;
           SQL.Add('Update SACQTD SET QTD_QTTAMA = :pQTTAMA');
           SQL.Add('Where (QTD_NRPEDI = :pNRPEDI) AND (QTD_CDBARR = :pCDBARR)');
           //
           ParamByName('pNRPEDI').AsString :=
                dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString;
           ParamByName('pCDBARR').AsString := uFuncoes.StrZero(dbeCDPROD.Text,13);
           ParamByName('pQTTAMA').AsFloat  := M_QTPROD;
           //
           ExecSQL;
      End;}
      //
      qryQUANT.EnableControls;
     //
     TAMANHO;
     QUANT_PRODUTO;
     GridGrade.ReadOnly := True;
     btConfirmar.Enabled := False;
     If (cmbTamanhos.Enabled = True) Then
        cmbTamanhos.SetFocus;
     //Close;
     //
   Except
         ShowMessage('Error ao tentar gravar informa��es!!!');
   End;
end;

procedure TfrmGradeTamanho.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
   M_VLZERO : Double;
begin
       M_VLZERO := 0;
       dmInfoModa.tbGrade.Open;
       //
       dmInfoModa.tbGrade.DisableControls;
       dmInfoModa.tbGrade.First;
       //
       While not (dmInfoModa.tbGrade.Eof) do
       begin
            dmInfoModa.tbGrade.Edit;
            dmInfoModa.tbGrade.FieldByName('GRA_QTTAMA').AsInteger := 0;
            dmInfoModa.tbGrade.FieldByName('GRA_CODCOR').Clear;
            dmInfoModa.tbGrade.Next;
       End;
       //
       If (dmInfoModa.tbItensPedido.Locate('ITP_QTPROD',M_VLZERO,[])) Then
       Begin
            dmInfoModa.tbItensPedido.Delete;
            //ShowMessage('Encontrou');
       End;
       //
       dmInfoModa.tbGrade.First;
       dmInfoModa.tbGrade.EnableControls;
     //
     dmInfoModa.qryCores.Close;
     dmInfoModa.tbGrade.Close;
     //
     With qryAtualizaQUANT do
     Begin
         SQL.Clear;
         Close;
         SQL.Add('Delete from SACQTD');
         SQL.Add('Where (QTD_NRPEDI =:pNRPEDI)');
         //
         ParamByName('pNRPEDI').AsString :=
              dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString;
         //
         ExecSQL;
     End;
     //
     Action := caFree;
end;

procedure TfrmGradeTamanho.FormActivate(Sender: TObject);
begin
     dbeCDPROD.Enabled := True;
     spLocalizar.Enabled := True;
     //
     With dmInfoModa.qryCores do
     begin
           SQL.Clear;
           Close;
           SQL.Add('Select * from SACCOR order by COR_NOMCOR');
           Prepare;
           Open;
     End;
     GridGrade.ReadOnly := True;
     dbeCDPROD.SetFocus;
end;

procedure TfrmGradeTamanho.btCancelarClick(Sender: TObject);
begin
     If (M_QTPROD = 0) Then
     Begin
          With qryDeleteItemPedido do
          Begin
               Close;
               //
               ParamByName('pNRPEDI').AsString :=
                  dmInfoModa.tbItensPedido.FieldByName('ITP_NRPEDI').AsString;
               //
               ExecSQL;
          End;
     End;
     //
     If (dsGrade.State in [dsInsert, dsEdit]) Then
         dmInfoModa.tbGrade.Cancel;
     //
     dmInfoModa.tbItensPedido.Cancel;
     //
     Close;
end;

procedure TfrmGradeTamanho.dbeCDPRODKeyPress(Sender: TObject;
  var Key: Char);
Var
    M_CDPROD : String;
begin
     If not( key in['0'..'9',#8, #13] ) then
         Key := #0;
     //
     If (Key = #13) and uFuncoes.Empty(dbeCDPROD.Text) Then
     begin
          Key := #0;
          Try
                Application.CreateForm(TfrmLocProduto, frmLocProduto);
                frmLocProduto.ShowModal;
          Finally
                frmLocProduto.Free;
          End;
     End;
     //
     If (Key = #13) and not uFuncoes.Empty(dbeCDPROD.Text) Then
     begin
          Key := #0;
          cmbTamanhos.Enabled := True;
          cmbTamanhos.SetFocus; 
     End;
  {Else
  begin
       ShowMessage('Pressione o bot�o Adicionar!!!');
       btAdicionar.SetFocus;
  End;}
end;

procedure TfrmGradeTamanho.spLocalizarClick(Sender: TObject);
begin
     Try
          Application.CreateForm(TfrmLocProduto, frmLocProduto);
          frmLocProduto.ShowModal;
     Finally
          frmLocProduto.Free;
     End;
end;

procedure TfrmGradeTamanho.CALCULAR_SUB_TOTAL;
Var
    W_QTPROD : Double;
    W_NOMCOR : String;
begin
     pnlSUBTOT.Caption := '0,00';
     W_QTPROD := 0;
     //
     W_NOMCOR := dmInfoModa.tbGrade.FieldByName('GRA_NMCOR2').AsString;
     //
     dmInfoModa.tbGrade.DisableControls;
     dmInfoModa.tbGrade.First;
     //
     W_VLSUBT := 0;
     //
     With qrySUBTOT do
     Begin
           SQL.Clear;
           Close;
           SQL.Add('Select SUM(GRA_QTTAMA) AS GRA_SBTOTA from SACGRA');
           Prepare;
           Open;
     End;
     //
     If  (qrySUBTOT.fieldByName('GRA_SBTOTA').AsFloat > 0) Then
     begin
         W_QTPROD := qrySUBTOT.fieldByName('GRA_SBTOTA').AsFloat;
         W_VLSUBT := StrtoFloat(lbl_vlunit.Caption)*W_QTPROD;
         pnlSUBTOT.Caption := FormatFloat('###,###,##0.#0',W_VLSUBT);
     End
     Else
     Begin
         W_QTPROD := 0;
         W_VLSUBT := 0;
         pnlSUBTOT.Caption := '0,00';
     End;
     //
     {While not (dmInfoModa.tbGrade.Eof) do
     begin
          dmInfoModa.tbGrade.Edit;
          //If (dmInfoModa.tbGrade.FieldByName('GRA_QTTAMA').AsFloat>0) Then
          //Begin
               W_QTPROD := W_QTPROD + dmInfoModa.tbGrade.FieldByName('GRA_QTTAMA').AsFloat;
          //End;
          //
          dmInfoModa.tbGrade.Next;
     End;}
     //
     //W_VLSUBT := StrtoFloat(lbl_vlunit.Caption)*W_QTPROD;
     //dmInfoModa.tbItensPedido.fieldByName('ITP_VLUNI2').AsFloat
     //
     dmInfoModa.tbGrade.First;
     dmInfoModa.tbGrade.EnableControls;
     //
     {If (W_QTPROD = 0) Then
         pnlSUBTOT.Caption := '0,00'
     Else
         pnlSUBTOT.Caption := FormatFloat('###,###,##0.#0',W_VLSUBT);}
     //
     dmInfoModa.tbGrade.Locate('GRA_NMCOR2',W_NOMCOR,[]);
     dmInfoModa.tbGrade.Next;
     GridGrade.SelectedIndex := 2;
end;

procedure TfrmGradeTamanho.dbeCDPRODExit(Sender: TObject);
Var
   W_CDPROD : STRING;
begin
     If not uFuncoes.Empty(dbeCDPROD.Text) Then
     Begin
          W_CDPROD := uFuncoes.StrZero(dbeCDPROD.Text,13) ;
          //
          With dmInfoModa.qryProduto do
          Begin
               SQL.Clear;
               Close;
               Sql.add('Select * from SACPRO Where (PRO_CDBARR = :pCDBARR)');
               Sql.add('order by PRO_NMPROD');
               ParamByName('pCDBARR').AsString := W_CDPROD;
               Prepare;
               open;
          End;
          //
          If (dmInfoModa.qryProduto.Locate('PRO_CDBARR',W_CDPROD,[])) Then
          begin
              dmInfoModa.tbItensPedido.FieldByName('ITP_CDPROD').asString := W_CDPROD;
              lbl_nmprod.Caption := dmInfoModa.qryProduto.FieldByName('PRO_NMPROD').AsString;
              lbl_vlunit.Caption := FormatFloat('###,##0.#0',dmInfoModa.qryProduto.FieldByName('PRO_VLVEND').AsFloat);
              dmInfoModa.tbGrade.First;
              GridGrade.ReadOnly := False;
              //
              TAMANHO;
              //
              cmbTamanhos.Enabled := True;
              cmbTamanhos.SetFocus;
          End
          Else
          Begin
               ShowMessage('C�digo de barras n�o cadastro!!!');
               lbl_nmprod.Caption := '.';
               lbl_vlunit.Caption := '0,00';
               //cmbTamanhos.Enabled := False;
               dbeCDPROD.Enabled  := True;
               dbeCDPROD.SetFocus;
               dbeCDPROD.Clear;
               Exit;
          End;
     End;
end;

procedure TfrmGradeTamanho.GridGradeColEnter(Sender: TObject);
begin
    GridGrade.SelectedIndex := 2;
end;

procedure TfrmGradeTamanho.GridGradeExit(Sender: TObject);
begin
      CALCULAR_SUB_TOTAL;
      //
      TESTA_QUANT;
end;

procedure TfrmGradeTamanho.GridGradeKeyPress(Sender: TObject;
  var Key: Char);
begin
     //
     {If (Key = #13) And (GridGrade.SelectedIndex = 2)
     and (dmInfoModa.tbGrade.FieldByName('GRA_QTTAMA').AsFloat = 0)  Then
     begin
         Key := #0;
         dmInfoModa.tbGrade.Next;
         GridGrade.SelectedIndex := 3;
     End;}
     //
     If (Key = #13) Then
     //And (dmInfoModa.tbGrade.FieldByName('GRA_QTTAMA').AsFloat>0)  Then
     begin
         Key := #0;
         CALCULAR_SUB_TOTAL;
     End;
     //
end;

procedure TfrmGradeTamanho.dbeCDPRODEnter(Sender: TObject);
begin
     dmInfoModa.qryTamanho.Close;
     dmInfoModa.tbGrade.Open;
     //
     GridGrade.ReadOnly := True;
     //cmbTamanhos.Enabled := False;
end;

procedure TfrmGradeTamanho.cmbTamanhosExit(Sender: TObject);
Var
   W_CDTAMA : String;
begin
     If not uFuncoes.Empty(cmbTamanhos.Text) Then
     begin
          If (qryQUANT.Active = True) Then
          begin
              If (qryQUANT.Locate('QTD_NRPEDI;QTD_CDBARR;QTD_CDTAMA',
                  VarArrayOf([dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString,
                    uFuncoes.StrZero(dbeCDPROD.Text,13),
                    cmbTamanhos.Text]),[])) Then
              Begin
                    ShowMessage('Este tamanho j� foi cadastro!!!');
                    btCancelar.SetFocus;
                    Exit;
              End;
          End;
          //
          GridGrade.ReadOnly  := True;
          W_CDTAMA := cmbTamanhos.Text;
          //
          dmInfoModa.tbGrade.Open;
          dmInfoModa.tbGrade.DisableControls;
          dmInfoModa.tbGrade.First;
          //
          While not(dmInfoModa.tbGrade.Eof) do
          Begin
               //
               dmInfoModa.tbGrade.Edit;
               //
               dmInfoModa.tbGrade.FieldByName('GRA_CDTAMA').AsString := W_CDTAMA;
               dmInfoModa.tbGrade.FieldByName('GRA_TAMANH').AsString := W_CDTAMA;
               //
               If (W_CDTAMA = 'PP') Then
               begin
                   dmInfoModa.tbGrade.FieldByName('GRA_CDTAMA').AsString := 'PP';
                   dmInfoModa.tbGrade.FieldByName('GRA_TAMANH').AsString := '36';
               End;
               //
               If (W_CDTAMA = 'P') Then
               begin
                   dmInfoModa.tbGrade.FieldByName('GRA_CDTAMA').AsString := 'P';
                   dmInfoModa.tbGrade.FieldByName('GRA_TAMANH').AsString := '38';
               End;
               //
               If (W_CDTAMA = 'M') Then
               begin
                   dmInfoModa.tbGrade.FieldByName('GRA_CDTAMA').AsString := 'M';
                   dmInfoModa.tbGrade.FieldByName('GRA_TAMANH').AsString := '40';
               End;
               //
               If (W_CDTAMA = 'G') Then
               begin
                   dmInfoModa.tbGrade.FieldByName('GRA_CDTAMA').AsString := 'G';
                   dmInfoModa.tbGrade.FieldByName('GRA_TAMANH').AsString := '42';
               End;
               //
               If (W_CDTAMA = 'GG') Then
               begin
                   dmInfoModa.tbGrade.FieldByName('GRA_CDTAMA').AsString := 'GG';
                   dmInfoModa.tbGrade.FieldByName('GRA_TAMANH').AsString := '44';
               End;
               //
               dmInfoModa.tbGrade.FieldByName('GRA_QTTAMA').AsFloat  := 0;
               dmInfoModa.tbGrade.FieldByName('GRA_CODCOR').AsString := '';
               //
               dmInfoModa.tbGrade.Next;
          End;
          //
          dmInfoModa.tbGrade.First;
          dmInfoModa.tbGrade.EnableControls;
          //
          btConfirmar.Enabled := True;
          GridGrade.ReadOnly := False;
          GridGrade.SetFocus;
          GridGrade.SelectedIndex := 2 ;
     End
     Else
     begin
          //ShowMessage('Selecione o tamanho!!!');
          btConfirmar.Enabled := False;
          btCancelar.SetFocus;
     End;
end;

procedure TfrmGradeTamanho.cmbTamanhosKeyPress(Sender: TObject;
  var Key: Char);
begin
     //
     If (Key = #27) and uFuncoes.Empty(cmbTamanhos.Text) Then
     begin
          Key := #0;
          btCancelar.SetFocus;
     End;
     //
     If (Key = #13) and not uFuncoes.Empty(cmbTamanhos.Text) Then
     begin
          Key := #0;
          GridGrade.SetFocus;
          GridGrade.SelectedIndex := 2;
     End;
end;

procedure TfrmGradeTamanho.LIMPAR_GRID;
begin
       With qryLimpar do
       begin
            SQL.Clear;
            CLose;
            SQL.Add('Delete from SACGRA Where (GRA_NRPEDI = :pNRPEDI)');
            ParamByName('pNRPEDI').AsString := dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString;
            Execsql;
       End;
       //
       If (dmInfoModa.tbGrade.Active = False) Then
          dmInfoModa.tbGrade.Open;
       //
       dmInfoModa.tbGrade.DisableControls;
       dmInfoModa.tbGrade.First;
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
       cmbTamanhos.Clear;
       //
       While not (dmInfoModa.qryCores.Eof) do
       begin
            dmInfoModa.tbGrade.Append;
            dmInfoModa.tbGrade.FieldByName('GRA_NRPEDI').AsString  :=
                     dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString;
            dmInfoModa.tbGrade.FieldByName('GRA_QTTAMA').AsInteger := 0;
            dmInfoModa.tbGrade.FieldByName('GRA_CODCOR').AsString  :=
              dmInfoModa.qryCores.FieldByName('COR_CODCOR').AsString;
            dmInfoModa.tbGrade.FieldByName('GRA_NMCOR2').AsString  :=
              dmInfoModa.qryCores.FieldByName('COR_NOMCOR').AsString;
            //
            dmInfoModa.qryCores.Next;
       End;
       //
       dmInfoModa.tbGrade.Close;
       dmInfoModa.tbGrade.Filtered := False;
       dmInfoModa.tbGrade.Filter   := 'GRA_NRPEDI='+QuotedStr(dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString);
       dmInfoModa.tbGrade.Filtered := True;
       dmInfoModa.tbGrade.Open;
       dmInfoModa.tbGrade.First;
       dmInfoModa.tbGrade.EnableControls;
       //
       pnlSUBTOT.Caption := '0,00';
end;

procedure TfrmGradeTamanho.FormCreate(Sender: TObject);
begin
     LIMPAR_GRID;
     //
     M_QTTAMA := '0';
     lbl_nmprod.Caption := '.';
     lbl_vlunit.Caption := '0,00';
     //
     btConfirmar.Enabled := False;
end;

procedure TfrmGradeTamanho.TAMANHO;
Var
    N_CDPROD, N_CDBARR : String;
begin
     //
     If (dmInfoModa.qryProduto.Locate('PRO_CDBARR',uFuncoes.StrZero(dbeCDPROD.Text,13),[]) ) Then
     Begin
          N_CDPROD := dmInfoModa.qryProduto.FieldByName('PRO_CDPROD').AsString;
          N_CDBARR := dmInfoModa.qryProduto.FieldByName('PRO_CDBARR').AsString;
          //
          With dmInfoModa.qryTamanho do
          begin
               SQL.Clear;
               Close;
               SQL.Add('Select * from SACTAM Where (TAM_CDPROD=:pCDPROD) order by TAM_NMDESC');
               ParamByName('pCDPROD').AsString := N_CDPROD;
               Prepare;
               Open;
               First;
          End;
          //
          cmbTamanhos.Clear;
          //
          While not (dmInfoModa.qryTamanho.Eof) do
          Begin
               cmbTamanhos.Items.Add(dmInfoModa.qryTamanho.FieldByName('TAM_TAMANH').AsString);
               dmInfoModa.qryTamanho.Next;
          End;
          //
          If (dmInfoModa.qryTamanho.RecordCount = 0) Then
          begin
               ShowMessage('O produto n�o t�m tamanho cadastro!!!');
               lbl_nmprod.Caption := '.';
               lbl_vlunit.Caption := '0,00';
               //
               dbeCDPROD.SetFocus;
               dbeCDPROD.Clear;
               Exit;
          End;
          //
          GridGrade.ReadOnly := False;
          GridGrade.SelectedIndex := 2;
      End    
      Else
          ShowMessage('Produto n�o encontrado!!!');
end;

procedure TfrmGradeTamanho.TESTA_QUANT;
Var
    N_QTPROD, N_VLSUBT : Double;
    N_NOMCOR : String;
begin
     N_QTPROD := 0;
     //
     N_NOMCOR := dmInfoModa.tbGrade.FieldByName('GRA_NMCOR2').AsString;
     //
     dmInfoModa.tbGrade.DisableControls;
     dmInfoModa.tbGrade.First;
     //
     N_VLSUBT := 0;
     While not (dmInfoModa.tbGrade.Eof) do
     begin
          dmInfoModa.tbGrade.Edit;
          If (dmInfoModa.tbGrade.FieldByName('GRA_QTTAMA').AsFloat>0) Then
          Begin
               N_QTPROD := N_QTPROD + dmInfoModa.tbGrade.FieldByName('GRA_QTTAMA').AsFloat;
          End;
          //
          dmInfoModa.tbGrade.Next;
     End;
     //
     N_VLSUBT := StrtoFloat(lbl_vlunit.Caption )*N_QTPROD;
     //dmInfoModa.tbItensPedido.fieldByName('ITP_VLUNI2').AsFloat
     //
     dmInfoModa.tbGrade.First;
     dmInfoModa.tbGrade.EnableControls;
     //
     W_QTPROD := N_QTPROD;
     //
     If (N_QTPROD = 0) Then
     Begin
          //ShowMessage('Quantidade o produto � zero!!!');
          If not (uFuncoes.Empty(cmbTamanhos.Text)) Then
          begin
               Application.MessageBox('Nenhum produto foi adicionado!!!',
                  'ATEN��O', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
               btConfirmar.Enabled := False;
               btCancelar.SetFocus;
               //GridGrade.SetFocus;
               Exit;
          End;
          //
          If uFuncoes.Empty(cmbTamanhos.Text) then
             cmbTamanhos.SetFocus
          Else
             GridGrade.SetFocus;
          Exit;
     End;
end;


procedure TfrmGradeTamanho.dbeCDPRODChange(Sender: TObject);
begin
     If uFuncoes.Empty(dbeCDPROD.Text) Then
     begin
          lbl_nmprod.Caption := '.';
          lbl_vlunit.Caption := '0,00';
     End;
end;

procedure TfrmGradeTamanho.GridGradeEnter(Sender: TObject);
begin
     btConfirmar.Enabled := True;
end;

procedure TfrmGradeTamanho.QUANT_PRODUTO;
begin
    qryQUANT.DisableControls;
    //
    With qryQUANT do
    Begin
         Close;
         //
         ParamByName('pNRPEDI').AsString :=
              dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString;
         ParamByName('pCDBARR').AsString := uFuncoes.StrZero(dbeCDPROD.Text,13); 
         //
         Prepare;
         Open;
    End;
    //
    qryQUANT.EnableControls; 
end;

End.

