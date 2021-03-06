unit uInclusaoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, Grids, DBGrids, DB,
  DBTables, uCadPedidos;

type
  TfrmInclusaoProdutos = class(TForm)
    Panel2: TPanel;
    pnlSuperior: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    spLocalizar: TSpeedButton;
    lbl_vlunit: TLabel;
    dbeCDPROD: TDBEdit;
    pnlTamanhos1: TPanel;
    pnlTamanhos2: TPanel;
    pnlDados: TPanel;
    pnlGrid: TPanel;
    pnlBotoes: TPanel;
    GridQUANT: TDBGrid;
    Label1: TLabel;
    edtPP: TEdit;
    Label2: TLabel;
    edtP: TEdit;
    Label3: TLabel;
    edtM: TEdit;
    Label4: TLabel;
    edtG: TEdit;
    Label6: TLabel;
    edtGG: TEdit;
    Label8: TLabel;
    edt34: TEdit;
    Label9: TLabel;
    edt36: TEdit;
    Label10: TLabel;
    edt38: TEdit;
    Label11: TLabel;
    edt40: TEdit;
    Label12: TLabel;
    edt42: TEdit;
    Label13: TLabel;
    edt44: TEdit;
    Label14: TLabel;
    edt46: TEdit;
    Label15: TLabel;
    edt48: TEdit;
    Label16: TLabel;
    edt50: TEdit;
    Label17: TLabel;
    edtCDCOR: TEdit;
    Label18: TLabel;
    edtQUANT: TEdit;
    btConfirmar: TBitBtn;
    btFechar: TBitBtn;
    qryConsulta: TQuery;
    qryIncItem: TQuery;
    dsConsulta: TDataSource;
    qryConsultaTEM_NRPEDI: TStringField;
    qryConsultaTEM_CDPROD: TStringField;
    qryConsultaTEM_CODCOR: TStringField;
    qryConsultaTEM_QTPROD: TFloatField;
    qryConsultaTEM_NOMCOR: TStringField;
    lbl_NMCOR: TLabel;
    qryCor: TQuery;
    qryCorCOR_CODCOR: TStringField;
    qryCorCOR_NOMCOR: TStringField;
    lbl_nmprod: TLabel;
    qryConsultaTEM_CDTAMA: TStringField;
    qryConsultaTEM_TAMANH: TStringField;
    qryLimparGrid: TQuery;
    qryTOTALPRO: TQuery;
    qryTOTALPROGTM_TOTAL: TFloatField;
    qryLimparTemp: TQuery;
    qryLimpaTamanho: TQuery;
    qryQTTAMA: TQuery;
    qryQTTAMATEM_TOTPRO: TFloatField;
    qryGravarItens: TQuery;
    qryGravarItensTEM_NRPEDI: TStringField;
    qryGravarItensTEM_CDPROD: TStringField;
    qryGravarItensTEM_CODCOR: TStringField;
    qryGravarItensTEM_CDTAMA: TStringField;
    qryGravarItensTEM_TAMANH: TStringField;
    qryGravarItensTEM_QTPROD: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtPPKeyPress(Sender: TObject; var Key: Char);
    procedure btFecharClick(Sender: TObject);
    procedure edtCDCORExit(Sender: TObject);
    procedure dbeCDPRODExit(Sender: TObject);
    procedure edtQUANTKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDCOREnter(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure edtPPExit(Sender: TObject);
    procedure edtPExit(Sender: TObject);
    procedure edtMExit(Sender: TObject);
    procedure edtGExit(Sender: TObject);
    procedure edtGGExit(Sender: TObject);
    procedure edt34Exit(Sender: TObject);
    procedure edt36Exit(Sender: TObject);
    procedure edt38Exit(Sender: TObject);
    procedure edt40Exit(Sender: TObject);
    procedure edt42Exit(Sender: TObject);
    procedure edt44Exit(Sender: TObject);
    procedure edt46Exit(Sender: TObject);
    procedure edt48Exit(Sender: TObject);
    procedure edt50Exit(Sender: TObject);
    procedure spLocalizarClick(Sender: TObject);
    procedure dbeCDPRODKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDCORKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtPKeyPress(Sender: TObject; var Key: Char);
    procedure edtMKeyPress(Sender: TObject; var Key: Char);
    procedure edtGKeyPress(Sender: TObject; var Key: Char);
    procedure edtGGKeyPress(Sender: TObject; var Key: Char);
    procedure edt34KeyPress(Sender: TObject; var Key: Char);
    procedure edt36KeyPress(Sender: TObject; var Key: Char);
    procedure edt38KeyPress(Sender: TObject; var Key: Char);
    procedure edt40KeyPress(Sender: TObject; var Key: Char);
    procedure edt42KeyPress(Sender: TObject; var Key: Char);
    procedure edt44KeyPress(Sender: TObject; var Key: Char);
    procedure edt46KeyPress(Sender: TObject; var Key: Char);
    procedure edt48KeyPress(Sender: TObject; var Key: Char);
    procedure edt50KeyPress(Sender: TObject; var Key: Char);
    procedure edtPPEnter(Sender: TObject);
    procedure edtPEnter(Sender: TObject);
    procedure edtMEnter(Sender: TObject);
    procedure edtGEnter(Sender: TObject);
    procedure edtGGEnter(Sender: TObject);
    procedure edt34Enter(Sender: TObject);
    procedure edt36Enter(Sender: TObject);
    procedure edt38Enter(Sender: TObject);
    procedure edt40Enter(Sender: TObject);
    procedure edt42Enter(Sender: TObject);
    procedure edt44Enter(Sender: TObject);
    procedure edt46Enter(Sender: TObject);
    procedure edt48Enter(Sender: TObject);
    procedure edt50Enter(Sender: TObject);
    procedure edtQUANTExit(Sender: TObject);
    procedure edtQUANTEnter(Sender: TObject);
    procedure edtCDCORChange(Sender: TObject);
  private
    Procedure CONSULTA;
    Procedure LIMPAR_TUDO;
    Procedure LIMPAR_TAMANHO(R_CDTAMA : String);
    Procedure QUANT_TAMANHO(Q_CDTAMA : String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmInclusaoProdutos: TfrmInclusaoProdutos;
  M_QTPROD, N_QTPROD, M_QTPEDI, M_QTDIGI, V_QTPROD, M_QTANTE : Double;
  W_CDTAMA, W_TAMANH : String;
  M_DIGANT, M_TOTPRO : Real;
  M_COFOCO  : Integer;

implementation

Uses uFuncoes, udmInfoModa, uLocProduto;

{$R *.dfm}

procedure TfrmInclusaoProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
   M_VLZERO : Double;
begin
       M_VLZERO := 0;
   //sHOWmESSAGE('Quant.:' + FloattoStr(M_QTPEDI));
   //
   {If (M_QTPEDI > 0) Then
   Begin
     //
     W_VLSUBT := 0;
     //
     With qryTOTALPRO do
     Begin
          Close;
          //
          ParamByName('pNRPEDI').AsString := dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
          ParamByName('pCDPROD').AsString := uFuncoes.StrZero(dbeCDPROD.Text,13);
          //
          Prepare;
          Open;
     End;
     //
     N_QTPROD := qryTOTALPRO.FieldByNAme('GTM_TOTAL').AsFloat;
     //
     dmInfoModa.tbItensPedido.FieldByName('ITP_QTPROD').AsFloat := N_QTPROD;
             //dmInfoModa.tbItensPedido.FieldByName('ITP_QTPROD').AsFloat+M_QTPROD;
     //
     dmInfoModa.tbItensPedido.FieldByName('ITP_VLUNIT').AsFloat := StrtoFloat(lbl_vlunit.Caption);
     // Grava
     dmInfoModa.tbItensPedido.Post;
     uCadPedidos.M_FLGRAV := True;
     //
     W_VLSUBT := M_QTPEDI*StrtoFloat(lbl_vlunit.Caption);
     dmInfoModa.tbPedidos.FieldByName('PED_QTPEDI').AsFloat :=
          dmInfoModa.tbItensPedido.FieldByName('ITP_QTPROD').AsFloat;
     dmInfoModa.tbPedidos.FieldByName('PED_TOPEDI').AsCurrency :=
         dmInfoModa.tbPedidos.FieldByName('PED_TOPEDI').AsCurrency+W_VLSUBT;
   End
   Else
      dmInfoModa.tbItensPedido.Cancel;}
     //
   With qryLimparTemp do
   Begin
        Close;
        ParamByName('pNRPEDI').AsString := dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
        //
        ExecSQL;
   End;
   //
   If (dmInfoModa.tbItensPedido.Locate('ITP_QTPROD',M_VLZERO,[])) Then
   Begin
        dmInfoModa.tbItensPedido.Delete;
            //ShowMessage('Encontrou');
   End;
   //
   //
   Action := caFree;
end;

procedure TfrmInclusaoProdutos.edtPPKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edtPP.Text) Then
    Begin
         key:=#0;
         edtP.SetFocus;
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edtPP.Text) Then
    Begin
         key:=#0;
         //
         If (M_QTANTE > StrtoFloat(edtPP.Text)) Then
                LIMPAR_TAMANHO('PP');
         //
         edtPPExit(Sender);
         //edtCDCOR.SetFocus;
    End;
    //
end;

procedure TfrmInclusaoProdutos.btFecharClick(Sender: TObject);
begin
     //
     Close;
end;

procedure TfrmInclusaoProdutos.edtCDCORExit(Sender: TObject);
begin
     //
     If not uFuncoes.Empty (edtCDCOR.Text) Then
     Begin
          With qryCor do
          Begin
               Close;
               //
               ParamByName('pCODCOR').AsString := uFuncoes.StrZero(edtCDCOR.Text,3);
               //
               Prepare;
               Open;
          End;
          //
          edtCDCOR.Text := uFuncoes.StrZero(edtCDCOR.Text,3);
          //
          If (qryCor.RecordCount > 0) Then
              lbl_NMCOR.Caption := qryCor.FieldByName('COR_NOMCOR').AsString
          Else
          Begin
               ShowMessage('C�digo n�o cadastrado!!!');
               lbl_NMCOR.Caption := '...';
               edtCDCOR.SetFocus;
               edtCDCOR.Clear;
               Exit;
          End;
     End;
end;

procedure TfrmInclusaoProdutos.dbeCDPRODExit(Sender: TObject);
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
              //
              dbeCDPROD.Enabled := False;
              spLocalizar.Enabled := False;
              //
              With qryLimparTemp do
              Begin
                  Close;
                  ParamByName('pNRPEDI').AsString := dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
                  //
                  ExecSQL;
              End;
              //
              With dmInfoModa.qryTamanho do
              Begin
                   SQL.Clear;
                   Close;
                   SQL.Add('Select * from SACTAM Where (TAM_CDPROD = :pCDPROD)');
                   //
                   ParamByName('pCDPROD').AsString := uFuncoes.StrZero(dbeCDPROD.Text,13);
                   Open;
              End;
              //
              If (dmInfoModa.qryTamanho.Locate('TAM_TAMANH','M',[])) Then
              Begin
                   pnlTamanhos1.Visible := True;
                   pnlTamanhos1.Enabled := True;
                   //
                   pnlTamanhos2.Enabled := False;
                   edtPP.SetFocus;
              End
              Else
              Begin
                   pnlTamanhos1.Enabled := False;
                   //
                   pnlTamanhos2.Visible := True;
                   pnlTamanhos2.Enabled := True;
                   //
                   edt34.SetFocus;
              End;
          End
          Else
          Begin
               ShowMessage('C�digo de barras n�o cadastro!!!');
               lbl_nmprod.Caption := '.';
               lbl_vlunit.Caption := '0,00';
               dbeCDPROD.Enabled  := True;
               dbeCDPROD.SetFocus;
               dbeCDPROD.Clear;
               Exit;
          End;
     End;
end;

procedure TfrmInclusaoProdutos.edtQUANTKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not uFuncoes.Empty(edtQUANT.Text) Then
     Begin
         If (edtQUANT.Text = '0') then
         Begin
             ShowMessage('Quantidade invalida!!!');
             edtQUANT.SetFocus;
             edtQUANT.Clear;
             Exit;  
         End;
     End;
     //
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
     If (Key = #13) And not uFuncoes.Empty(edtQUANT.Text) Then
     Begin
        Key := #0;
        //
        {If (M_QTDIGI > M_QTPROD) Then
        Begin
             ShowMessage('Quantidade superior a quantidade do tamanho digitada!!!');
             edtQUANT.SetFocus;
             edtQUANT.Clear;
             Exit;
        End;}
        //
        M_QTDIGI := M_QTDIGI+StrtoFloat(edtQUANT.Text);
        //
        Try
           With qryIncItem do
           Begin
               Close;
               //
               ParamByName('pNRPEDI').AsString := dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString;
               ParamByName('pCDPROD').AsString := uFuncoes.StrZero(dbeCDPROD.Text,13);
               ParamByName('pCODCOR').AsString := uFuncoes.StrZero(edtCDCOR.Text,3);
               ParamByName('pCDTAMA').AsString := W_CDTAMA;
               ParamByName('pTAMANH').AsString := W_TAMANH;
               ParamByName('pQTPROD').AsFloat  := StrtoFloat(edtQUANT.Text);
               //
               ExecSQL;
           End;
           //
           CONSULTA;
           //
           edtCDCOR.Clear;
           edtQUANT.Clear;
           lbl_NMCOR.Caption := '...';
           //
           {If (M_QTPROD = N_QTPROD) Then
           Begin
                pnlDados.Enabled := False;
                //
                btConfirmar.Enabled := True;
                btConfirmar.SetFocus;
                Exit;
           End;}
           //
           edtCDCOR.SetFocus;
        Except
             ShowMessage('Error na inclus�o de item!!!');
        End;
     End;
end;

procedure TfrmInclusaoProdutos.edtCDCOREnter(Sender: TObject);
begin
   If (W_CDTAMA = 'PP') Then
   begin
       QUANT_TAMANHO(W_CDTAMA);
   End;
   If (W_CDTAMA = 'P') Then
   begin
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = 'M') Then
   begin
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = 'G') Then
   begin
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = 'GG') Then
   begin
       QUANT_TAMANHO(W_CDTAMA);
   End;
  //
   If (W_CDTAMA = '34') Then
   begin
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '36') Then
   begin
       //M_DIGANT := StrtoFloat(edt36.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '38') Then
   begin
       //M_DIGANT := StrtoFloat(edt38.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '40') Then
   begin
       //M_DIGANT := StrtoFloat(edt40.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '42') Then
   begin
       //M_DIGANT := StrtoFloat(edt42.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '44') Then
   begin
       //M_DIGANT := StrtoFloat(edt44.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '46') Then
   begin
       //M_DIGANT := StrtoFloat(edt46.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '48') Then
   begin
       //M_DIGANT := StrtoFloat(edt44.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '50') Then
   begin
       //M_DIGANT := StrtoFloat(edt44.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;

{     If not uFuncoes.Empty(edtPP.Text) Then
     begin
        M_QTPROD := StrtoFloat(edtPP.Text);
        {W_CDTAMA := 'PP';
        W_TAMANH := '36';
        //
     End;
     //
     If not uFuncoes.Empty(edtP.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edtP.Text);
        {W_CDTAMA := 'P';
        W_TAMANH := '38';
     End;
     //
     If not uFuncoes.Empty(edtM.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edtM.Text);
        {W_CDTAMA := 'M';
        W_TAMANH := '40';
     End;
     //
     If not uFuncoes.Empty(edtG.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edtG.Text);
        {W_CDTAMA := 'G';
        W_TAMANH := '42';
     End;
     //
     If not uFuncoes.Empty(edtGG.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edtGG.Text);
        {W_CDTAMA := 'GG';
        W_TAMANH := '44';
     End;
     //
     If not uFuncoes.Empty(edt34.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edt34.Text);
        {W_CDTAMA := '34';
        W_TAMANH := '34';
     End;
     //
     If not uFuncoes.Empty(edt36.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edt36.Text);
        {W_CDTAMA := '36';
        W_TAMANH := '36';
     End;
     //
     If not uFuncoes.Empty(edt38.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edt38.Text);
        {W_CDTAMA := '38';
        W_TAMANH := '38';
     End;
     //
     If not uFuncoes.Empty(edt40.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edt40.Text);
        {W_CDTAMA := '40';
        W_TAMANH := '40';
     End;
     //
     If not uFuncoes.Empty(edt42.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edt42.Text);
        {W_CDTAMA := '42';
        W_TAMANH := '42';
     End;
     //
     If not uFuncoes.Empty(edt44.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edt44.Text);
        W_CDTAMA := '44';
        W_TAMANH := '44';
     End;
     //
     If not uFuncoes.Empty(edt46.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edt46.Text);
        W_CDTAMA := '46';
        W_TAMANH := '46';
     End;
     //
     If not uFuncoes.Empty(edt48.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edt48.Text);
        W_CDTAMA := '48';
        W_TAMANH := '48';
     End;
     //
     If not uFuncoes.Empty(edt50.Text) Then
     Begin
        M_QTPROD := StrtoFloat(edt50.Text);
        W_CDTAMA := '50';
        W_TAMANH := '50';
     End;   }
end;


procedure TfrmInclusaoProdutos.CONSULTA;
Var
     N_CDTAMA : String;
begin
     N_QTPROD := 0;
     //
     //
     With qryConsulta do
     Begin
          Close;
          //
          ParamByName('pNRPEDI').AsString := dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString;
          ParamByName('pCDTAMA').AsString := W_CDTAMA;
          //
          Prepare;
          Open;
     End;
     //
     //ShowMEssage('Tamanho : '+W_CDTAMA);

     qryConsulta.DisableControls;
     qryConsulta.First;
     //
     While not (qryConsulta.Eof) do
     Begin
          N_QTPROD := N_QTPROD + qryConsulta.FieldByName('TEM_QTPROD').AsFloat;
          qryConsulta.Next;
     End;
     qryConsulta.EnableControls;
     //
     If (qryConsulta.RecordCount > 0 ) Then
     Begin
          //pnlDados.Enabled   := False;
          btConfirmar.Enabled := True;
     End;
end;

procedure TfrmInclusaoProdutos.btConfirmarClick(Sender: TObject);
Var
   M_CODCOR, M_NRPEDI, N_NRPEDI,M_CDPROD, M_CDTAMA, M_TAMANH : String;
   M_QTPROD, W_VLSUBT, W_QTPROD, W_QTPEDI : Double;
begin
     try
        M_NRPEDI := dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString;
        //
        With qryGravarItens do
        Begin
             Close;
             //
             ParamByName('pNRPEDI').AsString := M_NRPEDI;
             //
             Prepare;
             Open;
        End;
        //
        qryGravarItens.DisableControls;
        qryGravarItens.First;
        //
        While not (qryGravarItens.Eof) do
        begin
             M_CODCOR := qryGravarItens.FieldByName('TEM_CODCOR').AsString;
             N_NRPEDI := qryGravarItens.fieldByName('TEM_NRPEDI').AsString;
             M_CDPROD := uFuncoes.StrZero(dbeCDPROD.Text,13);
             M_CDTAMA := qryGravarItens.fieldByName('TEM_CDTAMA').AsString;
             //W_CDTAMA;
             M_TAMANH := qryGravarItens.fieldByName('TEM_TAMANH').AsString;
             //W_TAMANH;
             M_QTPROD := qryGravarItens.FieldByName('TEM_QTPROD').AsFloat;
             W_QTPEDI := W_QTPEDI + qryGravarItens.FieldByName('TEM_QTPROD').AsFloat;
             //W_QTPEDI + M_QTPROD;
             //
             With dmInfoModa.qryIncGrade do
             begin
                    SQL.Clear;
                    Close;
                    SQL.Add('INSERT INTO SACGTM (GTM_NRPEDI,GTM_CDPROD,GTM_CDTAMA,GTM_TAMANH,GTM_QTPROD,GTM_CODCOR)');
                    SQL.Add('VALUES (:M_NRPEDI,:M_CDPROD,:M_CDTAMA,:M_TAMANH,:M_QTPROD,:M_CODCOR)');
                    //
                    ParamByName('M_NRPEDI').AsString := M_NRPEDI;
                    ParamByName('M_CDPROD').AsString := M_CDPROD;
                    ParamByName('M_CDTAMA').AsString := M_CDTAMA;
                    ParamByName('M_TAMANH').AsString := M_TAMANH;
                    ParamByName('M_QTPROD').AsFloat  := M_QTPROD;
                    ParamByName('M_CODCOR').AsString := M_CODCOR;
                    //
                    Execsql;
             End;
             //
             qryGravarItens.Next;
             //
         End;
         //
         M_QTPEDI := W_QTPEDI;
         //
         qryGravarItens.EnableControls;
         //
         If (W_QTPEDI > 0) Then
         Begin
         //
           W_VLSUBT := 0;
           //
           With qryTOTALPRO do
           Begin
              Close;
              //
              ParamByName('pNRPEDI').AsString := dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
              ParamByName('pCDPROD').AsString := uFuncoes.StrZero(dbeCDPROD.Text,13);
              //
              Prepare;
              Open;
           End;
           //
         N_QTPROD := qryTOTALPRO.FieldByNAme('GTM_TOTAL').AsFloat;
       //
       dmInfoModa.tbItensPedido.FieldByName('ITP_QTPROD').AsFloat := N_QTPROD;
             //dmInfoModa.tbItensPedido.FieldByName('ITP_QTPROD').AsFloat+M_QTPROD;
       //
       dmInfoModa.tbItensPedido.FieldByName('ITP_VLUNIT').AsFloat := StrtoFloat(lbl_vlunit.Caption);
       // Grava
       dmInfoModa.tbItensPedido.Post;
       uCadPedidos.M_FLGRAV := True;
       //
       W_VLSUBT := M_QTPEDI*StrtoFloat(lbl_vlunit.Caption);
       dmInfoModa.tbPedidos.FieldByName('PED_QTPEDI').AsFloat :=
          dmInfoModa.tbItensPedido.FieldByName('ITP_QTPROD').AsFloat;
       dmInfoModa.tbPedidos.FieldByName('PED_TOPEDI').AsCurrency :=
         dmInfoModa.tbPedidos.FieldByName('PED_TOPEDI').AsCurrency+W_VLSUBT;
   End
   Else
      dmInfoModa.tbItensPedido.Cancel;
         //
         {btConfirmar.Enabled := False;
         lbl_NMCOR.Caption := '...';
         pnlDados.Enabled := False;}
         //
         LIMPAR_TUDO;
         Close;
         //
     Except
         ShowMessage('Erro ao tentar gravar items!!!');
     End;
end;

procedure TfrmInclusaoProdutos.edtPPExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtPP.Text) Then
     Begin
          {edtP.Clear;
          edtM.Clear;
          edtG.Clear;
          edtGG.Clear;}
          //
          If (edtPP.Text = '0') or (edtPP.Text = '00') Then
          Begin
              edtPP.SetFocus;
              edtPP.Clear; 
              Exit;
          End;
          //
          If not uFuncoes.Empty(edtPP.Text) Then
             M_DIGANT := StrtoFloat(edtPP.Text);
          M_COFOCO := 1;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edtPExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtP.Text) Then
     Begin
          {edtPP.Clear;
          edtM.Clear;
          edtG.Clear;
          edtGG.Clear;}
          //
          If (edtP.Text = '0') OR (edtP.Text = '00') Then
          Begin
              edtP.SetFocus;
              edtP.Clear; 
              Exit;
          End;
          //
          If not uFuncoes.Empty(edtP.Text) Then
           M_DIGANT := StrtoFloat(edtP.Text);

          M_COFOCO := 2;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edtMExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtM.Text) Then
     Begin
          {edtPP.Clear;
          edtP.Clear;
          edtG.Clear;
          edtGG.Clear;}
          If (edtM.Text = '0')  OR (edtM.Text = '00') Then
          Begin
              edtM.SetFocus;
              edtM.Clear;
              Exit;
          End;
          //
          If not uFuncoes.Empty(edtM.Text) Then
              M_DIGANT := StrtoFloat(edtM.Text);
          M_COFOCO := 3;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edtGExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtG.Text) Then
     Begin
          {edtPP.Clear;
          edtP.Clear;
          edtM.Clear;
          edtGG.Clear;}
          //
          If (edtG.Text = '0') or (edtG.Text = '00') Then
          Begin
              edtG.SetFocus;
              edtG.Clear; 
              Exit;
          End;
          //
          If not uFuncoes.Empty(edtG.Text) Then
             M_DIGANT := StrtoFloat(edtG.Text);
          M_COFOCO := 4;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edtGGExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtGG.Text) Then
     Begin
          {edtPP.Clear;
          edtP.Clear;
          edtG.Clear;
          edtM.Clear;}
          //
          If (edtGG.Text = '0') or (edtGG.Text = '00') Then
          Begin
              edtGG.SetFocus;
              edtGG.Clear; 
              Exit;
          End;
          //
          If not uFuncoes.Empty(edtGG.Text) Then
             M_DIGANT := StrtoFloat(edtGG.Text);
          //
          M_COFOCO := 5;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edt34Exit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt34.Text) Then
     Begin
          {edt36.Clear;
          edt38.Clear;
          edt40.Clear;
          edt42.Clear;
          edt44.Clear;
          edt46.Clear;
          edt48.Clear;
          edt50.Clear;}
          //
          If (edt34.Text = '0') or (edt34.Text = '00') Then
          Begin
              edt34.SetFocus;
              edt34.Clear; 
              Exit;
          End;
          //
          If not uFuncoes.Empty(edt34.Text) Then
             M_DIGANT := StrtoFloat(edt34.Text);
          M_COFOCO := 6;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edt36Exit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt36.Text) Then
     Begin
          {edt34.Clear;
          edt38.Clear;
          edt40.Clear;
          edt42.Clear;
          edt44.Clear;
          edt46.Clear;
          edt48.Clear;
          edt50.Clear;}
          //
          If (edt36.Text = '0') or (edt36.Text = '00') Then
          Begin
              edt36.SetFocus;
              edt36.Clear; 
              Exit;
          End;
          //
          If not uFuncoes.Empty(edt36.Text) Then
              M_DIGANT := StrtoFloat(edt36.Text);
          //
          M_COFOCO := 7;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edt38Exit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt38.Text) Then
     Begin
          {edt34.Clear;
          edt36.Clear;
          edt40.Clear;
          edt42.Clear;
          edt44.Clear;
          edt46.Clear;
          edt48.Clear;
          edt50.Clear;}
          //
          If (edt38.Text = '0') or (edt38.Text = '00') Then
          Begin
              edt38.SetFocus;
              edt38.Clear; 
              Exit;
          End;
          //
          If not uFuncoes.Empty(edt38.Text) Then
              M_DIGANT := StrtoFloat(edt38.Text);
          //
          M_COFOCO := 8;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edt40Exit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt40.Text) Then
     Begin
          {edt34.Clear;
          edt36.Clear;
          edt38.Clear;
          edt42.Clear;
          edt44.Clear;
          edt46.Clear;
          edt48.Clear;
          edt50.Clear;}
          //
          If (edt40.Text = '0') or (edt40.Text = '00') Then
          Begin
              edt40.SetFocus;
              edt40.Clear; 
              Exit;
          End;
          //
          If not uFuncoes.Empty(edt40.Text) Then
              M_DIGANT := StrtoFloat(edt40.Text);
          //
          M_COFOCO := 9;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edt42Exit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt42.Text) Then
     Begin
          {edt34.Clear;
          edt36.Clear;
          edt40.Clear;
          edt38.Clear;
          edt44.Clear;
          edt46.Clear;
          edt48.Clear;
          edt50.Clear;}
          //
          If (edt42.Text = '0') or (edt42.Text = '00') Then
          Begin
              edt42.SetFocus;
              edt42.Clear; 
              Exit;
          End;
          //
          If not uFuncoes.Empty(edt42.Text) Then
              M_DIGANT := StrtoFloat(edt42.Text);
          //
          M_COFOCO := 10;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edt44Exit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt44.Text) Then
     Begin
          {edt34.Clear;
          edt36.Clear;
          edt40.Clear;
          edt42.Clear;
          edt38.Clear;
          edt46.Clear;
          edt48.Clear;
          edt50.Clear;}
          //
          If (edt44.Text = '0') or (edt44.Text = '00') Then
          Begin
              edt44.SetFocus;
              edt44.Clear; 
              Exit;
          End;
          //
          If not uFuncoes.Empty(edt44.Text) Then
              M_DIGANT := StrtoFloat(edt44.Text);
          //
          M_COFOCO := 11;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edt46Exit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt46.Text) Then
     Begin
          {edt34.Clear;
          edt36.Clear;
          edt40.Clear;
          edt42.Clear;
          edt44.Clear;
          edt38.Clear;
          edt48.Clear;
          edt50.Clear;}
          //
          If (edt46.Text = '0') or (edt46.Text = '00') Then
          Begin
              edt46.SetFocus;
              edt46.Clear;
              Exit;
          End;
          //
          If not uFuncoes.Empty(edt46.Text) Then
              M_DIGANT := StrtoFloat(edt46.Text);
          //
          M_COFOCO := 12;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edt48Exit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt48.Text) Then
     Begin
          {edt34.Clear;
          edt36.Clear;
          edt40.Clear;
          edt42.Clear;
          edt44.Clear;
          edt46.Clear;
          edt38.Clear;
          edt50.Clear;}
          //
          If (edt48.Text = '0') or (edt48.Text = '00') Then
          Begin
              edt48.SetFocus;
              edt48.Clear; 
              Exit;
          End;
          //
          If not uFuncoes.Empty(edt48.Text) Then
              M_DIGANT := StrtoFloat(edt48.Text);
          //
          M_COFOCO := 13;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edt50Exit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt50.Text) Then
     Begin
          {edt34.Clear;
          edt36.Clear;
          edt40.Clear;
          edt42.Clear;
          edt44.Clear;
          edt46.Clear;
          edt48.Clear;
          edt38.Clear;}
          //
          If (edt50.Text = '0') or (edt50.Text = '00') Then
          Begin
              edt50.SetFocus;
              edt50.Clear; 
              Exit;
          End;
          //
          If not uFuncoes.Empty(edt50.Text) Then
              M_DIGANT := StrtoFloat(edt50.Text);
          //
          M_COFOCO := 14;
          M_QTDIGI := 0;
          pnlDados.Enabled := True;
          edtCDCOR.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.spLocalizarClick(Sender: TObject);
begin
     Try
          Application.CreateForm(TfrmLocProduto, frmLocProduto);
          frmLocProduto.M_NMFORM := 2;
          frmLocProduto.ShowModal;
     Finally
          frmLocProduto.Free;
     End;
end;

procedure TfrmInclusaoProdutos.dbeCDPRODKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         Key := #0;
     //
     If (Key = #13) and uFuncoes.Empty(dbeCDPROD.Text) Then
     begin
          Key := #0;
          Try
                Application.CreateForm(TfrmLocProduto, frmLocProduto);
                frmLocProduto.M_NMFORM := 2;
                frmLocProduto.ShowModal;
          Finally
                frmLocProduto.Free;
          End;
     End;
     //
     If (Key = #13) and not uFuncoes.Empty(dbeCDPROD.Text) Then
     begin
          Key := #0;
          dbeCDPRODExit(Sender);
          //frmInclusaoProdutos.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.edtCDCORKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
     //
     If (Key = #13) and not uFuncoes.Empty(edtCDCOR.Text) Then
     BEgin
         Key := #0;
         edtQUANT.SetFocus;
     End;
end;

procedure TfrmInclusaoProdutos.LIMPAR_TUDO;
begin
   If (pnlTamanhos1.Enabled = True) Then
   Begin
     edtPP.Clear;
     edtP.Clear;
     edtM.Clear;
     edtG.Clear;
     edtGG.Clear;
  End;
     //
  If (pnlTamanhos2.Enabled = True) Then
  Begin
     edt34.Clear;
     edt36.Clear;
     edt38.Clear;
     edt40.Clear;
     edt42.Clear;
     edt44.Clear;
     edt46.Clear;
     edt48.Clear;
     edt50.Clear;
  End;
end;

procedure TfrmInclusaoProdutos.FormCreate(Sender: TObject);
begin
     pnlDados.Enabled := False;
     btConfirmar.Enabled := False;
     //
     pnlTamanhos1.Visible := False;
     pnlTamanhos2.Visible := False;
     //
     M_DIGANT := 0;
end;

procedure TfrmInclusaoProdutos.edtPKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edtP.Text) Then
    Begin
         key:=#0;
         edtM.SetFocus;
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edtP.Text) Then
    Begin
         key:=#0;
         If (M_QTANTE > StrtoFloat(edtP.Text)) Then
                LIMPAR_TAMANHO('P');
         edtPExit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edtMKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edtM.Text) Then
    Begin
         key:=#0;
         edtG.SetFocus;
    End;

    If (key = #13) and not uFuncoes.Empty(edtM.Text) Then
    Begin
         key:=#0;
         If (M_QTANTE > StrtoFloat(edtM.Text)) Then
                LIMPAR_TAMANHO('M');
         edtMExit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edtGKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edtG.Text) Then
    Begin
         key:=#0;
         edtGG.SetFocus;
    End;

    If (key = #13) and not uFuncoes.Empty(edtG.Text) Then
    Begin
         key:=#0;
         edtGExit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edtGGKeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edtGG.Text) Then
    Begin
         key:=#0;
         If (btConfirmar.Enabled = True) Then
              btConfirmar.SetFocus;
    End;

    If (key = #13) and not uFuncoes.Empty(edtGG.Text) Then
    Begin
         key:=#0;
         edtGGExit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edt34KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edt34.Text) Then
    Begin
         key:=#0;
         edt36.SetFocus;
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edt34.Text) Then
    Begin
         key:=#0;
         If (M_QTANTE > StrtoFloat(edt34.Text)) Then
                LIMPAR_TAMANHO('34');
         edt34Exit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edt36KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edt36.Text) Then
    Begin
         key:=#0;
         edt38.SetFocus;
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edt36.Text) Then
    Begin
         key:=#0;
         If (M_QTANTE > StrtoFloat(edt36.Text)) Then
                LIMPAR_TAMANHO('36');
         edt36Exit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edt38KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edt38.Text) Then
    Begin
         key:=#0;
         edt40.SetFocus;
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edt38.Text) Then
    Begin
         key:=#0;
         If (M_QTANTE > StrtoFloat(edt38.Text)) Then
                LIMPAR_TAMANHO('38');
         edt38Exit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edt40KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edt40.Text) Then
    Begin
         key:=#0;
         edt42.SetFocus;
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edt40.Text) Then
    Begin
         key:=#0;
         If (M_QTANTE > StrtoFloat(edt40.Text)) Then
                LIMPAR_TAMANHO('40');
         edt40Exit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edt42KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edt42.Text) Then
    Begin
         key:=#0;
         edt44.SetFocus;
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edt42.Text) Then
    Begin
         key:=#0;
         If (M_QTANTE > StrtoFloat(edt42.Text)) Then
                LIMPAR_TAMANHO('42');
         edt42Exit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edt44KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edt44.Text) Then
    Begin
         key:=#0;
         edt46.SetFocus;
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edt44.Text) Then
    Begin
         key:=#0;
         If (M_QTANTE > StrtoFloat(edt44.Text)) Then
                LIMPAR_TAMANHO('44');
         edt44Exit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edt46KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edt46.Text) Then
    Begin
         key:=#0;
         edt48.SetFocus;
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edt46.Text) Then
    Begin
         key:=#0;
         If (M_QTANTE > StrtoFloat(edt46.Text)) Then
                LIMPAR_TAMANHO('46');
         edt46Exit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edt48KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edt48.Text) Then
    Begin
         key:=#0;
         edt50.SetFocus;
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edt48.Text) Then
    Begin
         key:=#0;
         If (M_QTANTE > StrtoFloat(edt48.Text)) Then
                LIMPAR_TAMANHO('48');
         edt48Exit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edt50KeyPress(Sender: TObject;
  var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (key = #13) and uFuncoes.Empty(edt50.Text) Then
    Begin
         key:=#0;
         If (btConfirmar.Enabled = True) Then
            btConfirmar.SetFocus;
    End;
    //
    If (key = #13) and not uFuncoes.Empty(edt50.Text) Then
    Begin
         key:=#0;
         If (M_QTANTE > StrtoFloat(edt50.Text)) Then
                LIMPAR_TAMANHO('50');
         edt50Exit(Sender);
         //edtCDCOR.SetFocus;
    End;
end;

procedure TfrmInclusaoProdutos.edtPPEnter(Sender: TObject);
begin
     W_CDTAMA := 'PP';
     W_TAMANH := '36';
     If not uFuncoes.Empty(edtPP.Text) Then
     begin
          M_QTANTE := StrtoFloat(edtPP.Text);
          V_QTPROD := StrtoFloat(edtPP.Text);
          //
     End;
     //
        //W_TAMANH := ''
     CONSULTA;
end;

procedure TfrmInclusaoProdutos.edtPEnter(Sender: TObject);
begin
        W_CDTAMA := 'P';
        W_TAMANH := '38';
        If not uFuncoes.Empty(edtP.Text) Then
        begin
             M_QTANTE := StrtoFloat(edtP.Text);
             V_QTPROD := StrtoFloat(edtP.Text);
        End;
        CONSULTA;
end;

procedure TfrmInclusaoProdutos.edtMEnter(Sender: TObject);
begin
        W_CDTAMA := 'M';
        W_TAMANH := '40';
        If not uFuncoes.Empty(edtM.Text) Then
        Begin
            M_QTANTE := StrtoFloat(edtM.Text);
            V_QTPROD := StrtoFloat(edtM.Text);
        End;
        CONSULTA;
end;

procedure TfrmInclusaoProdutos.edtGEnter(Sender: TObject);
begin
        W_CDTAMA := 'G';
        W_TAMANH := '42';
        If not uFuncoes.Empty(edtG.Text) Then
        Begin
            M_QTANTE := StrtoFloat(edtG.Text);
            V_QTPROD := StrtoFloat(edtG.Text);
        End;
        CONSULTA;
end;

procedure TfrmInclusaoProdutos.edtGGEnter(Sender: TObject);
begin
        W_CDTAMA := 'GG';
        W_TAMANH := '44';
        If not uFuncoes.Empty(edtGG.Text) Then
        Begin
             M_QTANTE := StrtoFloat(edtGG.Text);
             V_QTPROD := StrtoFloat(edtGG.Text);
        End;
        CONSULTA;
end;

procedure TfrmInclusaoProdutos.edt34Enter(Sender: TObject);
begin
        W_CDTAMA := '34';
        W_TAMANH := '34';
        If not uFuncoes.Empty(edt34.Text) Then
        Begin
             M_QTANTE := StrtoFloat(edt34.Text);
             V_QTPROD := StrtoFloat(edt34.Text);
        End;
        //
        CONSULTA;
end;

procedure TfrmInclusaoProdutos.edt36Enter(Sender: TObject);
begin
        W_CDTAMA := '36';
        W_TAMANH := '36';
        If not uFuncoes.Empty(edt36.Text) Then
        Begin
            M_QTANTE := StrtoFloat(edt36.Text);
            V_QTPROD := StrtoFloat(edt36.Text);
        End;
        CONSULTA;
end;

procedure TfrmInclusaoProdutos.edt38Enter(Sender: TObject);
begin
        W_CDTAMA := '38';
        W_TAMANH := '38';
        If not uFuncoes.Empty(edt38.Text) Then
        Begin
            M_QTANTE := StrtoFloat(edt38.Text);
            V_QTPROD := StrtoFloat(edt38.Text);
        End;
        CONSULTA;
end;

procedure TfrmInclusaoProdutos.edt40Enter(Sender: TObject);
begin
        W_CDTAMA := '40';
        W_TAMANH := '40';
        If not uFuncoes.Empty(edt40.Text) Then
        Begin
             M_QTANTE := StrtoFloat(edt40.Text);
             V_QTPROD := StrtoFloat(edt40.Text);
        End;
        CONSULTA;
end;

procedure TfrmInclusaoProdutos.edt42Enter(Sender: TObject);
begin
        W_CDTAMA := '42';
        W_TAMANH := '42';
        If not uFuncoes.Empty(edt42.Text) Then
        Begin
            M_QTANTE := StrtoFloat(edt42.Text);
            V_QTPROD := StrtoFloat(edt42.Text);
        End;
        CONSULTA;
end;

procedure TfrmInclusaoProdutos.edt44Enter(Sender: TObject);
begin
        W_CDTAMA := '44';
        W_TAMANH := '44';
        If not uFuncoes.Empty(edt44.Text) Then
        begin
           M_QTANTE := StrtoFloat(edt44.Text);
           V_QTPROD := StrtoFloat(edt44.Text);
        End;
        CONSULTA;
end;

procedure TfrmInclusaoProdutos.edt46Enter(Sender: TObject);
begin
        W_CDTAMA := '46';
        W_TAMANH := '46';
        If not uFuncoes.Empty(edt46.Text) Then
        begin
           M_QTANTE := StrtoFloat(edt46.Text);
           V_QTPROD := StrtoFloat(edt46.Text);
        End;
        CONSULTA;
end;

procedure TfrmInclusaoProdutos.edt48Enter(Sender: TObject);
begin
        W_CDTAMA := '48';
        W_TAMANH := '48';
        If not uFuncoes.Empty(edt48.Text) Then
        Begin
             M_QTANTE := StrtoFloat(edt48.Text);
             V_QTPROD := StrtoFloat(edt48.Text);
        End;
        CONSULTA;
end;

procedure TfrmInclusaoProdutos.edt50Enter(Sender: TObject);
begin
     W_CDTAMA := '50';
     W_TAMANH := '50';
     If not uFuncoes.Empty(edt50.Text) Then
     Begin
          M_QTANTE := StrtoFloat(edt50.Text);
          V_QTPROD := StrtoFloat(edt50.Text);
     End;     
     CONSULTA;
end;

procedure TfrmInclusaoProdutos.LIMPAR_TAMANHO(R_CDTAMA: String);
begin
    With qryLimpaTamanho do
    Begin
        Close;
        ParamByName('pNRPEDI').AsString := dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
        ParamByName('pCDTAMA').AsString := R_CDTAMA;
        //
        ExecSQL;
   End;
   //
   W_CDTAMA := R_CDTAMA;
   CONSULTA;
end;

procedure TfrmInclusaoProdutos.QUANT_TAMANHO(Q_CDTAMA: String);
begin
    M_TOTPRO := 0;
    //
    With qryQTTAMA do
    Begin
        Close;
        ParamByName('pNRPEDI').AsString := dmInfoModa.tbPedidos.FieldByName('PED_NRPEDI').AsString;
        ParamByName('pCDTAMA').AsString := Q_CDTAMA;
        //
        Prepare;
        Open;
   End;
   //
   M_TOTPRO := qryQTTAMA.FieldByName('TEM_TOTPRO').AsFloat;
   //
   If (W_CDTAMA = 'PP') Then
      edtPP.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
   If (W_CDTAMA = 'P') Then
      edtP.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
   If (W_CDTAMA = 'M') Then
      edtM.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
   If (W_CDTAMA = 'G') Then
      edtG.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
   If (W_CDTAMA = 'GG') Then
      edtGG.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
  //
   If (W_CDTAMA = '34') Then
      edt34.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
   If (W_CDTAMA = '36') Then
      edt36.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
   If (W_CDTAMA = '38') Then
      edt38.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
   If (W_CDTAMA = '40') Then
      edt40.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
   If (W_CDTAMA = '42') Then
      edt42.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
   If (W_CDTAMA = '44') Then
      edt44.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
   If (W_CDTAMA = '46') Then
      edt46.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
   If (W_CDTAMA = '48') Then
      edt48.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
   If (W_CDTAMA = '50') Then
      edt50.Text := qryQTTAMA.FieldByName('TEM_TOTPRO').AsString;
end;

procedure TfrmInclusaoProdutos.edtQUANTExit(Sender: TObject);
begin
   If (W_CDTAMA = 'PP') Then
   begin
       QUANT_TAMANHO(W_CDTAMA);
   End;
   If (W_CDTAMA = 'P') Then
   begin
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = 'M') Then
   begin
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = 'G') Then
   begin
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = 'GG') Then
   begin
       QUANT_TAMANHO(W_CDTAMA);
   End;
  //
   If (W_CDTAMA = '34') Then
   begin
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '36') Then
   begin
       //M_DIGANT := StrtoFloat(edt36.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '38') Then
   begin
       //M_DIGANT := StrtoFloat(edt38.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '40') Then
   begin
       //M_DIGANT := StrtoFloat(edt40.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '42') Then
   begin
       //M_DIGANT := StrtoFloat(edt42.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '44') Then
   begin
       //M_DIGANT := StrtoFloat(edt44.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '46') Then
   begin
       //M_DIGANT := StrtoFloat(edt46.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '48') Then
   begin
       //M_DIGANT := StrtoFloat(edt44.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;
   //
   If (W_CDTAMA = '50') Then
   begin
       //M_DIGANT := StrtoFloat(edt44.Text);
       QUANT_TAMANHO(W_CDTAMA);
   End;

     If (M_DIGANT <= M_TOTPRO) Then
     Begin
          Case M_COFOCO of
                  1 : edtP.SetFocus;
                  2 : edtM.SetFocus;
                  3 : edtG.SetFocus;
                  4 : edtGG.SetFocus;
                  5 : btConfirmar.SetFocus;
                  6 : edt36.SetFocus;
                  7 : edt38.SetFocus;
                  8 : edt40.SetFocus;
                  9 : edt42.SetFocus;
                  10 : edt44.SetFocus;
                  11 : edt46.SetFocus;
                  12 : edt48.SetFocus;
                  13 : edt50.SetFocus;
                  14 : btConfirmar.SetFocus;
           End;
           //
           //ShowMessage('Digitado : '+ FloattoStr(M_DIGANT));
    End;
end;

procedure TfrmInclusaoProdutos.edtQUANTEnter(Sender: TObject);
begin
     If uFuncoes.Empty(edtCDCOR.Text) then
     Begin
          ShowMessage('Digite o c�digo da cor!!!');
          edtCDCOR.SetFocus;
          Exit;
     End;
end;

procedure TfrmInclusaoProdutos.edtCDCORChange(Sender: TObject);
begin
     If uFuncoes.Empty(edtCDCOR.Text) then
         lbl_NMCOR.Caption := '...';
end;

end.
