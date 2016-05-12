unit uCadItemPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DB, Grids, DBGrids, RXDBCtrl, DBTables,
  Buttons, Mask, DBCtrls;

type
  TfrmIncProdutos = class(TForm)
    Panel2: TPanel;
    lbl_nmprod: TLabel;
    Panel1: TPanel;
    pnlGrid: TPanel;
    pnlTotal: TPanel;
    pnlBotoes: TPanel;
    dsGrade: TDataSource;
    GridGrade: TRxDBGrid;
    Label5: TLabel;
    dbeCDPROD: TDBEdit;
    spLocalizar: TSpeedButton;
    Label7: TLabel;
    lbl_vlunit: TLabel;
    dsCores: TDataSource;
    qryAtualizaQUANT: TQuery;
    dsQUANT: TDataSource;
    qryQUANT: TQuery;
    qryQUANTQTD_NRPEDI: TStringField;
    qryQUANTQTD_CDBARR: TStringField;
    qryQUANTQTD_CDTAMA: TStringField;
    qryQUANTQTD_QTTAMA: TFloatField;
    qrySUBTOT: TQuery;
    qryDeleteItemPedido: TQuery;
    qryLimpar: TQuery;
    Label1: TLabel;
    pnlSUBTOT: TPanel;
    btConfirmar: TBitBtn;
    btCancelar: TBitBtn;
    Label2: TLabel;
    procedure btCancelarClick(Sender: TObject);
    procedure dbeCDPRODChange(Sender: TObject);
    procedure dbeCDPRODEnter(Sender: TObject);
    procedure dbeCDPRODExit(Sender: TObject);
    procedure dbeCDPRODKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridGradeColEnter(Sender: TObject);
    procedure spLocalizarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btConfirmarClick(Sender: TObject);
    procedure GridGradeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridGradeEnter(Sender: TObject);
    procedure GridGradeKeyPress(Sender: TObject; var Key: Char);
    procedure dsGradeDataChange(Sender: TObject; Field: TField);
  private
    Procedure GRAVAR_DADOS;
    Procedure CARREGAR_GRID;
    Procedure CALCULAR_SUB_TOTAL;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIncProdutos: TfrmIncProdutos;
  M_TOPROD : Real;

implementation

Uses uFuncoes, udmInfoModa, uLocProduto,uCadPedidos, uPrincipal;

{$R *.dfm}

procedure TfrmIncProdutos.btCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmIncProdutos.dbeCDPRODChange(Sender: TObject);
begin
     If uFuncoes.Empty(dbeCDPROD.Text) Then
     begin
          lbl_nmprod.Caption := '.';
          lbl_vlunit.Caption := '0,00';
     End;
end;

procedure TfrmIncProdutos.dbeCDPRODEnter(Sender: TObject);
begin
     dmInfoModa.qryTamanho.Close;
     dmInfoModa.tbGrade2.Open;
     //
     //GridGrade.Enabled := False;
     //pnlGrid.Enabled := False;
end;

procedure TfrmIncProdutos.dbeCDPRODExit(Sender: TObject);
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
              //GridGrade.Enabled  := True;
              //pnlGrid.Enabled    := True;
              dmInfoModa.tbItensPedido.FieldByName('ITP_CDPROD').asString := W_CDPROD;
              lbl_nmprod.Caption := dmInfoModa.qryProduto.FieldByName('PRO_NMPROD').AsString;
              lbl_vlunit.Caption := FormatFloat('###,##0.#0',dmInfoModa.qryProduto.FieldByName('PRO_VLVEND').AsFloat);
              //
              dmInfoModa.tbGrade2.Close;
              {dmInfoModa.tbGrade2.Filtered := False;
              dmInfoModa.tbGrade2.Filter   := 'GRD_NRPEDI='+QuotedStr(dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString);
              dmInfoModa.tbGrade2.Filtered := True;}
              //
              dmInfoModa.tbGrade2.Open;
              //
              //dmInfoModa.tbGrade2.First;
              //
              If (dmInfoModa.tbGrade2.ReadOnly = True) Then
                  Label2.Caption := 'Somente leitura'
              Else
                 Label2.Caption := 'Normal';
              //
              GridGrade.SetFocus;
              GridGrade.SelectedIndex := 2;
          End
          Else
          Begin
               ShowMessage('Código de barras não cadastro!!!');
               lbl_nmprod.Caption := '.';
               lbl_vlunit.Caption := '0,00';
               //cmbTamanhos.Enabled := False;
               //GridGrade.Enabled  := False;
               //pnlGrid.Enabled    := False;
               dbeCDPROD.Enabled  := True;
               dbeCDPROD.SetFocus;
               dbeCDPROD.Clear;
               Exit;
          End;
     End;
end;

procedure TfrmIncProdutos.dbeCDPRODKeyPress(Sender: TObject;
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
     End;
end;

procedure TfrmIncProdutos.GRAVAR_DADOS;
Var
   M_CODCOR, M_NRPEDI, M_CDPROD, M_CDTAMA, M_TAMANH : String;
   M_QTPROD, W_VLSUBT, W_QTPROD : Double;
begin
     //
  Try
     //M_TOPROD := 0;
     W_QTPROD := 0;
     dmInfoModa.tbGrade2.DisableControls;
     dmInfoModa.tbGrade2.First;
     //
     While not (dmInfoModa.tbGrade2.Eof) do
     begin
          dmInfoModa.tbGrade2.Edit;
          //  Tamanho 34
          If (dmInfoModa.tbGrade2.FieldByName('GRD_TAMA34').AsFloat > 0) Then
          Begin
               //M_TOPROD := M_TOPROD + dmInfoModa.tbGrade2.FieldByName('GRD_TAMA34').AsFloat;
               W_QTPROD := W_QTPROD + dmInfoModa.tbGrade2.FieldByName('GRD_TAMA34').AsFloat;
               M_CODCOR := dmInfoModa.tbGrade2.FieldByName('GRD_CODCOR').AsString;
               M_NRPEDI := dmInfoModa.tbGrade2.FieldByName('GRD_NRPEDI').AsString;
               M_CDPROD := uFuncoes.StrZero(dbeCDPROD.Text,13);
               M_CDTAMA := '34';
               M_TAMANH := '34';
               M_QTPROD := dmInfoModa.tbGrade2.FieldByName('GRD_TAMA34').AsFloat;
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
          End;
          //  Tamanho 36
          If (dmInfoModa.tbGrade2.FieldByName('GRD_TAMA36').AsFloat > 0) Then
          Begin
               W_QTPROD := W_QTPROD + dmInfoModa.tbGrade2.FieldByName('GRD_TAMA36').AsFloat;
               M_CODCOR := dmInfoModa.tbGrade2.FieldByName('GRD_CODCOR').AsString;
               M_NRPEDI := dmInfoModa.tbGrade2.FieldByName('GRD_NRPEDI').AsString;
               M_CDPROD := uFuncoes.StrZero(dbeCDPROD.Text,13);
               M_CDTAMA := '36';
               M_TAMANH := '36';
               M_QTPROD := dmInfoModa.tbGrade2.FieldByName('GRD_TAMA36').AsFloat;
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
          End;
          //  Tamanho 38
          If (dmInfoModa.tbGrade2.FieldByName('GRD_TAMA38').AsFloat > 0) Then
          Begin
               W_QTPROD := W_QTPROD + dmInfoModa.tbGrade2.FieldByName('GRD_TAMA38').AsFloat;
               M_CODCOR := dmInfoModa.tbGrade2.FieldByName('GRD_CODCOR').AsString;
               M_NRPEDI := dmInfoModa.tbGrade2.FieldByName('GRD_NRPEDI').AsString;
               M_CDPROD := uFuncoes.StrZero(dbeCDPROD.Text,13);
               M_CDTAMA := '38';
               M_TAMANH := '38';
               M_QTPROD := dmInfoModa.tbGrade2.FieldByName('GRD_TAMA38').AsFloat;
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
          End;
          //  Tamanho 40
          If (dmInfoModa.tbGrade2.FieldByName('GRD_TAMA40').AsFloat > 0) Then
          Begin
               W_QTPROD := W_QTPROD + dmInfoModa.tbGrade2.FieldByName('GRD_TAMA40').AsFloat;
               M_CODCOR := dmInfoModa.tbGrade2.FieldByName('GRD_CODCOR').AsString;
               M_NRPEDI := dmInfoModa.tbGrade2.FieldByName('GRD_NRPEDI').AsString;
               M_CDPROD := uFuncoes.StrZero(dbeCDPROD.Text,13);
               M_CDTAMA := '40';
               M_TAMANH := '40';
               M_QTPROD := dmInfoModa.tbGrade2.FieldByName('GRD_TAMA40').AsFloat;
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
          End;
          //  Tamanho 42
          If (dmInfoModa.tbGrade2.FieldByName('GRD_TAMA42').AsFloat > 0) Then
          Begin
               W_QTPROD := W_QTPROD + dmInfoModa.tbGrade2.FieldByName('GRD_TAMA42').AsFloat;
               M_CODCOR := dmInfoModa.tbGrade2.FieldByName('GRD_CODCOR').AsString;
               M_NRPEDI := dmInfoModa.tbGrade2.FieldByName('GRD_NRPEDI').AsString;
               M_CDPROD := uFuncoes.StrZero(dbeCDPROD.Text,13);
               M_CDTAMA := '42';
               M_TAMANH := '42';
               M_QTPROD := dmInfoModa.tbGrade2.FieldByName('GRD_TAMA42').AsFloat;
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
          End;
          // Proximo registro
          dmInfoModa.tbGrade2.Next;
     End;
     //
     If (W_QTPROD = 0) Then
     Begin
          ShowMessage('Nenhum produto foi Incluido!!!');
          Exit;
     End;
     //
     dmInfoModa.tbItensPedido.FieldByName('ITP_QTPROD').AsFloat := W_QTPROD;
     dmInfoModa.tbItensPedido.FieldByName('ITP_VLUNIT').AsFloat := StrtoFloat(lbl_vlunit.Caption );
     dmInfoModa.tbItensPedido.Post;
     uCadPedidos.M_FLGRAV := True;
     //
     W_VLSUBT := StrtoFloat(lbl_vlunit.Caption )*M_TOPROD;
     //
     dmInfoModa.tbPedidos.FieldByName('PED_QTPEDI').AsFloat :=
          dmInfoModa.tbItensPedido.FieldByName('ITP_QTPROD').AsFloat;
     dmInfoModa.tbPedidos.FieldByName('PED_TOPEDI').AsCurrency :=
         dmInfoModa.tbPedidos.FieldByName('PED_TOPEDI').AsCurrency+W_VLSUBT;
    //
    ShowMessage('Concluido com sucesso...');
    //
    Close;
  Except
       ShowMessage('Error ao tentar gravar dados!!!');
  End;
end;

procedure TfrmIncProdutos.FormCreate(Sender: TObject);
begin
    //LIMPAR_GRID;
     //
     //M_QTTAMA := '0';
     //CARREGAR_GRID;
     //
     lbl_nmprod.Caption := '.';
     lbl_vlunit.Caption := '0,00';
     //
     M_TOPROD := 0;
     btConfirmar.Enabled := False;
end;

procedure TfrmIncProdutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
Var
   M_VLZERO : Double;
begin
       M_VLZERO := 0;
       //
       With qryLimpar do
       begin
            SQL.Clear;
            CLose;
            SQL.Add('Delete from SACGRD Where (GRD_NRPEDI = :pNRPEDI)');
            ParamByName('pNRPEDI').AsString := dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString;
            Execsql;
       End;
       //
       If (dmInfoModa.tbItensPedido.Locate('ITP_QTPROD',M_VLZERO,[])) Then
       Begin
            dmInfoModa.tbItensPedido.Delete;
            //ShowMessage('Encontrou');
       End;
      //
     dmInfoModa.qryCores.Close;
     uFuncoes.Limpar_Status;
     //
     Action := caFree;
end;

procedure TfrmIncProdutos.CARREGAR_GRID;
begin
       //
       //
{       If (dmInfoModa.tbGrade2.Active = False) Then
          dmInfoModa.tbGrade2.Open;
       //
       GridGrade.ReadOnly := False;
       dmInfoModa.tbGrade2.DisableControls;
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
       dmInfoModa.tbGrade2.Refresh;
       dmInfoModa.tbGrade2.Close;
       dmInfoModa.tbGrade2.Filtered := False;
       dmInfoModa.tbGrade2.Filter   := 'GRD_NRPEDI='+QuotedStr(dmInfoModa.tbPedidos.fieldByName('PED_NRPEDI').AsString);
       dmInfoModa.tbGrade2.Filtered := True;
       //

       //
       dmInfoModa.tbGrade2.First;
       dmInfoModa.tbGrade2.EnableControls;}
       //
       //GridGrade.Enabled := False;
       //pnlGrid.Enabled  := False;
       pnlSUBTOT.Caption := '0,00';
end;

procedure TfrmIncProdutos.GridGradeColEnter(Sender: TObject);
begin
     If (GridGrade.SelectedIndex = 0) or (GridGrade.SelectedIndex = 1) Then
         GridGrade.SelectedIndex := 2;
end;

procedure TfrmIncProdutos.spLocalizarClick(Sender: TObject);
begin
     Try
          Application.CreateForm(TfrmLocProduto, frmLocProduto);
          frmLocProduto.ShowModal;
     Finally
          frmLocProduto.Free;
     End;
end;

procedure TfrmIncProdutos.FormActivate(Sender: TObject);
begin
     dbeCDPROD.Enabled   := True;
     spLocalizar.Enabled := True;
     //
     {With dmInfoModa.qryCores do
     begin
           SQL.Clear;
           Close;
           SQL.Add('Select * from SACCOR order by COR_NOMCOR');
           Prepare;
           Open;
     End;}
     //
     CARREGAR_GRID;
     //
     //GridGrade.ReadOnly := True;
     dbeCDPROD.SetFocus;
end;

procedure TfrmIncProdutos.btConfirmarClick(Sender: TObject);
begin
     //
     GRAVAR_DADOS;
end;

procedure TfrmIncProdutos.GridGradeKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmIncProdutos.GridGradeEnter(Sender: TObject);
begin
     btConfirmar.Enabled := True;
     //GridGrade.Enabled   := True;
     //pnlGrid.Enabled := True;
end;

procedure TfrmIncProdutos.CALCULAR_SUB_TOTAL;
Var
    W_NOMCOR : String;
    W_VLSUBT : real;
begin
     pnlSUBTOT.Caption := '0,00';
     M_TOPROD := 0;
     //
     W_NOMCOR := dmInfoModa.tbGrade2.FieldByName('GRD_CODCOR').AsString;
     //
     dmInfoModa.tbGrade2.DisableControls;
     dmInfoModa.tbGrade2.First;
     //
     While not (dmInfoModa.tbGrade2.Eof) do
     Begin
          M_TOPROD := M_TOPROD+dmInfoModa.tbGrade2.FieldByName('GRD_TOPROD').AsFloat;
          dmInfoModa.tbGrade2.Next;
     End;
     //
     If  (M_TOPROD > 0) Then
     begin
         W_VLSUBT := StrtoFloat(lbl_vlunit.Caption)*M_TOPROD;
         pnlSUBTOT.Caption := FormatFloat('###,###,##0.#0',W_VLSUBT);
     End
     Else
     Begin
         M_TOPROD := 0;
         pnlSUBTOT.Caption := '0,00';
     End;
     //
     dmInfoModa.tbGrade2.First;
     dmInfoModa.tbGrade2.EnableControls;
     //
     dmInfoModa.tbGrade2.Locate('GRD_CODCOR',W_NOMCOR,[]);
     //GridGrade.SelectedIndex := 2;
end;

procedure TfrmIncProdutos.GridGradeKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #13) Then
     begin
         Key := #0;
         CALCULAR_SUB_TOTAL;
     End;

end;

procedure TfrmIncProdutos.dsGradeDataChange(Sender: TObject;
  Field: TField);
begin
     frmPrincipal.Info.Panels[1].Text := ' Registro: ' + IntToStr(dsGrade.DataSet.RecNo) +
                          ' de ' + IntToStr(dsGrade.DataSet.RecordCount);
end;

end.
