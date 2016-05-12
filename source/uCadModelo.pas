unit uCadModelo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, DBCtrls, ExtCtrls, Buttons, ToolWin, Grids,
  DBGrids, DB, Mask, RxLookup, ExtDlgs, DBTables;

type
  TfrmCadModelo = class(TForm)
    pnlSuperior: TPanel;
    Panel1: TPanel;
    PageControl1: TPageControl;
    tbsProduto: TTabSheet;
    tbsMateriais: TTabSheet;
    tbsDesenho: TTabSheet;
    dsModeloProduto: TDataSource;
    dsItens: TDataSource;
    Label1: TLabel;
    cmbNMPROD: TRxDBLookupCombo;
    Label6: TLabel;
    cmbNMITEM: TRxDBLookupCombo;
    dbeQTMATE: TDBEdit;
    Label7: TLabel;
    pnlInferior: TPanel;
    btAdicionar: TBitBtn;
    btEditar: TBitBtn;
    btExcluir: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    GridItens: TDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    btAbrirCosta: TBitBtn;
    btAbrirFrente: TBitBtn;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    qryRegistro: TQuery;
    edtCDPROD: TEdit;
    edtNMMODE: TEdit;
    Label2: TLabel;
    Label8: TLabel;
    btCancelar2: TSpeedButton;
    btGravar2: TSpeedButton;
    Panel2: TPanel;
    spFechar: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    qryProduto2: TQuery;
    OpenPictureDialog2: TOpenPictureDialog;
    img_Frente: TImage;
    spLocalizar: TSpeedButton;
    txtNMPROD: TDBText;
    qryProduto2PRO_CDBARR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dsModeloProdutoDataChange(Sender: TObject; Field: TField);
    procedure dsModeloProdutoStateChange(Sender: TObject);
    procedure dsItensStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFecharClick(Sender: TObject);
    procedure btAdicionar2Click(Sender: TObject);
    procedure btEditar2Click(Sender: TObject);
    procedure btExcluir2Click(Sender: TObject);
    procedure btGravar2Click(Sender: TObject);
    procedure btCancelar2Click(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btAbrirCostaClick(Sender: TObject);
    procedure btAbrirFrenteClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Changing(Sender: TObject;
      var AllowChange: Boolean);
    procedure edtCDPRODKeyPress(Sender: TObject; var Key: Char);
    procedure PageControl1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cmbNMPRODChange(Sender: TObject);
    procedure edtNMMODEKeyPress(Sender: TObject; var Key: Char);
    procedure dbeQTMATEKeyPress(Sender: TObject; var Key: Char);
    procedure cmbNMITEMKeyPress(Sender: TObject; var Key: Char);
    procedure edtCDPRODEnter(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spFecharClick(Sender: TObject);
    procedure spLocalizarClick(Sender: TObject);
    procedure edtCDPRODExit(Sender: TObject);
  private
    { Private declarations }
  public
     procedure TOTAL_REGISTRO;
    { Public declarations }
  end;

var
  frmCadModelo: TfrmCadModelo;
  M_CDMODE : String;
  M_NRITEM : Integer;
  M_FLINCU : Boolean;

implementation

uses udmInfoModa, uPrincipal, uFuncoes, uCadModProduto, uLocProduto;

{$R *.dfm}

procedure TfrmCadModelo.FormCreate(Sender: TObject);
begin
     If (dmInfoModa.tbModeloProduto.Active = False) Then
        dmInfoModa.tbModeloProduto.Open;
     //
     If (dmInfoModa.tbProdutos.Active = False) Then
        dmInfoModa.tbProdutos.Open; 
     //
     If (dmInfoModa.tbModeloProduto.RecordCount > 0) Then
     begin
          dmInfoModa.tbItensMateria.IndexFieldNames := 'IMP_CDMODE';
          dmInfoModa.tbItensMateria.MasterSource := dmInfoModa.dsModeloProduto;
          dmInfoModa.tbItensMateria.MasterFields := 'MDP_CDMODE';
          dmInfoModa.tbItensMateria.Open;
     End;
     //
     M_NRITEM := 0;
     //
     //frmPrincipal.Botoes('1');
     //
     PageControl1.Visible := False;
     M_FLINCU := False;
     //PageControl1.ActivePage := tbsProduto;
     {GridProdutos.Align :=  alClient;
     GridItens.Align :=  alClient;}
end;

procedure TfrmCadModelo.dsModeloProdutoDataChange(Sender: TObject;
  Field: TField);
begin
     frmPrincipal.Info.Panels[1].Text := ' Registro: ' + IntToStr(dsModeloProduto.DataSet.RecNo) +
                          ' de ' + IntToStr(dsModeloProduto.DataSet.RecordCount);
end;

procedure TfrmCadModelo.dsModeloProdutoStateChange(Sender: TObject);
begin
    //
    spLocalizar.Enabled := dsModeloProduto.State in [dsBrowse];
    cmbNMPROD.ReadOnly  := dsModeloProduto.State in [dsInsert,dsEdit,dsBrowse];
    edtCDPROD.ReadOnly  := dsModeloProduto.State in [dsInsert,dsEdit];
    //
    btGravar2.Enabled    := dsModeloProduto.State in [dsInsert,dsEdit];
    btCancelar2.Enabled  := dsModeloProduto.State in [dsInsert,dsEdit];
    //
   // btAbrirFrente.Enabled := dsModeloProduto.State in [dsInsert,dsEdit];
   // btAbrirCosta.Enabled  := dsModeloProduto.State in [dsInsert,dsEdit];
    //
    spFechar.Enabled := dsModeloProduto.State in [dsBrowse];
end;

procedure TfrmCadModelo.dsItensStateChange(Sender: TObject);
begin
  If (dmInfoModa.tbItensMateria.Active = True) Then
  begin
      btAdicionar.Enabled := dsItens.State in [dsBrowse];
      btEditar.Enabled    := (dsItens.State in [dsBrowse])
                and (dmInfoModa.tbItensMateria.RecordCount >0 );
      btExcluir.Enabled   := (dsItens.State in [dsBrowse])
                and (dmInfoModa.tbItensMateria.RecordCount >0 );
      //
      GridItens.Visible  := dsItens.State in [dsBrowse];
      //
      btGravar.Enabled    := dsItens.State in [dsInsert,dsEdit];
      btCancelar.Enabled  := dsItens.State in [dsInsert,dsEdit];
  End;
end;

procedure TfrmCadModelo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If dsModeloProduto.State in [dsInsert, dsEdit] then
     begin
         If Application.MessageBox('Gravar alterações?',
             'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
         begin
              CanClose := False;
              Exit;
         End
         Else
         begin
              dmInfoModa.tbModeloProduto.Cancel;
              CanClose := True;
              Exit;
         End;
     End;
end;

procedure TfrmCadModelo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmInfoModa.tbItensMateria.Close;
     dmInfoModa.tbProdutos.Close; 
     dmInfoModa.tbModeloProduto.Close;
     //
     frmPrincipal.Botoes('2');
     Limpar_Status;
     //
     Action := caFree;
end;

procedure TfrmCadModelo.btFecharClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmCadModelo.btAdicionar2Click(Sender: TObject);
begin
     Try
          dmInfoModa.tbParametros.Edit;
          dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsFloat :=
           dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsFloat+1;
          dmInfoModa.tbParametros.Post;
          //
          M_CDMODE := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsString,10);
          M_NRITEM := 0;
          //
          dmInfoModa.tbModeloProduto.Append;
          PageControl1.ActivePage := tbsProduto;
          dmInfoModa.tbModeloProduto.FieldByName('MDP_CDMODE').AsString := M_CDMODE;
          dmInfoModa.tbModeloProduto.FieldByName('MDP_CDUSUA').AsString := uPrincipal.M_CDUSUA;
          cmbNMPROD.SetFocus;
     Except
          Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbModeloProduto.Cancel;
     End;
end;

procedure TfrmCadModelo.btEditar2Click(Sender: TObject);
begin
     Try
          //
          dmInfoModa.tbModeloProduto.Edit;
          PageControl1.ActivePage := tbsProduto;
          cmbNMPROD.SetFocus;
     Except
          Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbModeloProduto.Cancel;
     End;
end;

procedure TfrmCadModelo.btExcluir2Click(Sender: TObject);
begin
    Try
        If Application.MessageBox('Deseja eliminar este registro?', 'Exclusão de registro',
                    MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
           dmInfoModa.tbModeloProduto.Delete;             // Apagar o regitro atual.
    Except
          Application.MessageBox('Este registro não pode ser excluido agora?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
    End;
end;

procedure TfrmCadModelo.btGravar2Click(Sender: TObject);
begin
     Try
         If (dsModeloProduto.State in [dsInsert,dsEdit]) Then
         begin
               If uFuncoes.Empty(cmbNMPROD.Text) Then
               begin
                    Application.MessageBox('Selecione o produto!!!','ATENÇÃO',
                       MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    cmbNMPROD.SetFocus;
                    Exit;
               End;
               //
         dmInfoModa.tbModeloProduto.FieldByName('MDP_NMMODE').AsString := cmbNMPROD.Text;
         dmInfoModa.tbModeloProduto.Post;
         //
         Application.MessageBox('Registro gravado com sucesso!!!','ATENÇÃO',
                       MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         //
         End;
         //
         PageControl1.Visible := False;
         txtNMPROD.Visible := False;
         //
         edtCDPROD.Clear;
         edtNMMODE.Clear;
         edtCDPROD.SetFocus;
         //
     Except
          Application.MessageBox('Error ao tentar gravar registro?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbModeloProduto.Cancel;
          txtNMPROD.Visible := False;
          //
          PageControl1.Visible := False;
          txtNMPROD.Visible := False;
          //
          edtCDPROD.Clear;
          edtNMMODE.Clear;
          edtCDPROD.SetFocus;
     End;
end;

procedure TfrmCadModelo.btCancelar2Click(Sender: TObject);
Var
    W_CDMODE : String;
begin
   Try
      W_CDMODE := dmInfoModa.tbModeloProduto.FieldByName('MDP_CDMODE').AsString;
      //
      If (M_FLINCU = True) Then
      begin
          With dmInfoModa.qryExcluirItens do
          begin
               Close;
               //
               ParamByName('pCDMODE').AsString := W_CDMODE;
               //
               ExecSQL;
          End;
      End;
      //
      dmInfoModa.tbModeloProduto.Cancel;
      //
      PageControl1.Visible := False;
      txtNMPROD.Caption := '.';
      //
      M_FLINCU := False;
      edtCDPROD.Clear;
      edtCDPROD.SetFocus;
   Except
        ShowMessage('Erro ao tentar cancelar!!!');
        PageControl1.Visible := False;
        txtNMPROD.Caption := '.';
       //
       M_FLINCU := False;
       edtCDPROD.Clear;
       edtCDPROD.SetFocus;
   End;
end;

procedure TfrmCadModelo.btPrimeiroClick(Sender: TObject);
begin
     If not (dmInfoModa.tbModeloProduto.Bof) Then
        dmInfoModa.tbModeloProduto.First;
end;

procedure TfrmCadModelo.btAnteriorClick(Sender: TObject);
begin
     If not (dmInfoModa.tbModeloProduto.Bof) Then
        dmInfoModa.tbModeloProduto.Prior;
end;

procedure TfrmCadModelo.btProximoClick(Sender: TObject);
begin
     If not (dmInfoModa.tbModeloProduto.Eof) Then
        dmInfoModa.tbModeloProduto.Next;
end;

procedure TfrmCadModelo.btUltimoClick(Sender: TObject);
begin
     If not (dmInfoModa.tbModeloProduto.Eof) Then
        dmInfoModa.tbModeloProduto.Last;
end;

procedure TfrmCadModelo.btAbrirCostaClick(Sender: TObject);
var
    BMP: TBitMap;
begin
     Try
              uFuncoes.Grava_Imagem_JPEG(dmInfoModa.tbModeloProduto,
                      dmInfoModa.tbModeloProdutoMDP_IMGFRE, img_Frente, OpenPictureDialog1);
              //
              Le_Imagem_JPEG(dmInfoModa.tbModeloProdutoMDP_IMGFRE, img_Frente);
              //
              dmInfoModa.tbModeloProduto.Edit;
     Except
          ShowMessage('Error ao tentar abrir imagem!!!');
     End;
{  Try
     BMP := TBitMap.Create;
     If (OpenPictureDialog1.Execute) Then
     begin
          If dsModeloProduto.State in [dsInsert, dsEdit] then
          begin
               BMP.LoadFromFile(OpenPictureDialog1.FileName);
               dmInfoModa.tbModeloProduto.FieldByName('MDP_IMGFRE').Assign( BMP );
          end;
      end;
   Except
        ShowMessage('Error ao tentar abrir imagem!!!');
   End;}
end;

procedure TfrmCadModelo.btAbrirFrenteClick(Sender: TObject);
var
    BMP: TBitMap;
begin
     Try
              {uFuncoes.Grava_Imagem_JPEG(dmInfoModa.tbModeloProduto,
                       dmInfoModa.tbModeloProdutoMDP_IMGCOS, img_Costa, OpenPictureDialog2);
              //
              Le_Imagem_JPEG(dmInfoModa.tbModeloProdutoMDP_IMGCOS, img_Costa);
              //
              dmInfoModa.tbModeloProduto.Edit;}
     Except
          ShowMessage('Error ao tentar abrir imagem!!!');
     End;
{  Try
     BMP := TBitMap.Create;
     If (OpenPictureDialog1.Execute) Then
     begin
          If dsModeloProduto.State in [dsInsert, dsEdit] then
          begin
               BMP.LoadFromFile(OpenPictureDialog1.FileName);
               dmInfoModa.tbModeloProduto.FieldByName('MDP_IMGCOS').Assign( BMP );
          end;
      end;
   Except
        ShowMessage('Error ao tentar abrir imagem!!!');
   End;}
end;

procedure TfrmCadModelo.BitBtn4Click(Sender: TObject);
begin
   If (dmInfoModa.tbItensMateria.Active = True) Then
   begin
     Try
         If (dsItens.State in [dsInsert,dsEdit]) Then
         begin
               If uFuncoes.Empty(cmbNMITEM.Text) Then
               begin
                    Application.MessageBox('Selecione o Item!!!','ATENÇÃO',
                       MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    cmbNMITEM.SetFocus;
                    Exit;
               End;
         End;
         //
         If (dsItens.State in [dsInsert,dsEdit]) Then
         begin
               If uFuncoes.Empty(dbeQTMATE.Text) Then
               begin
                    Application.MessageBox('Digite a quantidade!!!','ATENÇÃO',
                       MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    dbeQTMATE.SetFocus;
                    Exit;
               End;
         End;
         //
         dmInfoModa.tbItensMateria.Post;
     Except
          Application.MessageBox('Error ao tentar gravar registro?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbItensMateria.Cancel;
     End;
   End;
end;

procedure TfrmCadModelo.BitBtn5Click(Sender: TObject);
begin
      If (dmInfoModa.tbItensMateria.Active = True) Then
         dmInfoModa.tbItensMateria.Cancel;
end;

procedure TfrmCadModelo.btAdicionarClick(Sender: TObject);
Var
   W_CDPROD : String;
begin
      //
      If (dsModeloProduto.State in [dsInsert, dsEdit]) then
      begin
          If (dmInfoModa.tbItensMateria.Active = False) Then
             dmInfoModa.tbItensMateria.Open;
           Try
              //
              TOTAL_REGISTRO;
              M_CDMODE := uFuncoes.StrZero(dmInfoModa.tbModeloProduto.FieldByName('MDP_CDMODE').AsString,10);
              W_CDPROD := dmInfoModa.tbModeloProduto.FieldByName('MDP_CDPROD').AsString;
              M_NRITEM := M_NRITEM+1;
              //
              dmInfoModa.tbItensMateria.Append;
              dmInfoModa.tbItensMateria.FieldByName('IMP_CDMODE').AsString := M_CDMODE;
              dmInfoModa.tbItensMateria.FieldByName('IMP_NRITEM').AsString := uFuncoes.StrZero(InttoStr(M_NRITEM),2);
              dmInfoModa.tbItensMateria.FieldByName('IMP_CDPROD').AsString := W_CDPROD;
              cmbNMITEM.SetFocus;                    
           Except
                Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                        MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
               dmInfoModa.tbItensMateria.Cancel;
           End;
      End;
end;

procedure TfrmCadModelo.btEditarClick(Sender: TObject);
begin
      If (dmInfoModa.tbItensMateria.Active = True) Then
      begin
           Try
              //
              dmInfoModa.tbItensMateria.Edit;
              cmbNMITEM.SetFocus;
           Except
                Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                        MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
               dmInfoModa.tbItensMateria.Cancel;
           End;
      End;
end;

procedure TfrmCadModelo.btGravarClick(Sender: TObject);
begin
   If (dmInfoModa.tbItensMateria.Active = True) Then
   begin
     Try
         If (dsItens.State in [dsInsert,dsEdit]) Then
         begin
               If uFuncoes.Empty(cmbNMITEM.Text) Then
               begin
                    Application.MessageBox('Selecione o Item!!!','ATENÇÃO',
                       MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    cmbNMITEM.SetFocus;
                    Exit;
               End;
         End;
         //
         If (dsItens.State in [dsInsert,dsEdit]) Then
         begin
               If uFuncoes.Empty(dbeQTMATE.Text) Then
               begin
                    Application.MessageBox('Digite a quantidade!!!','ATENÇÃO',
                       MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    dbeQTMATE.SetFocus;
                    Exit;
               End;
         End;
         //
         dmInfoModa.tbItensMateria.Post;
         //
         btAdicionar.SetFocus; 
     Except
          Application.MessageBox('Error ao tentar gravar registro?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbItensMateria.Cancel;
     End;
   End;
end;

procedure TfrmCadModelo.btCancelarClick(Sender: TObject);
begin
    dmInfoModa.tbItensMateria.Cancel;
end;

procedure TfrmCadModelo.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
     Key:= Upcase(Key);
end;

procedure TfrmCadModelo.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
     If (dsModeloProduto.State in [dsInsert,dsEdit]) Then
     begin
          If uFuncoes.Empty(cmbNMPROD.Text) Then
          begin
               Application.MessageBox('Selecione o produto!!!','ATENÇÃO',
                       MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               cmbNMPROD.SetFocus;
               AllowChange := False;
               Exit;
          End;
    End;
    //
    If (dsItens.State in [dsInsert,dsEdit]) Then
         dmInfoModa.tbItensMateria.Cancel;
end;

procedure TfrmCadModelo.TOTAL_REGISTRO;
begin
     With qryRegistro do
     begin
          Close;
          //
          ParamByName('pCDMODE').AsString := dmInfoModa.tbModeloProduto.FieldByName('MDP_CDMODE').AsString;
          //
          Prepare;
          Open;
     End;
     //
     M_NRITEM := qryRegistro.RecordCount;
end;

procedure TfrmCadModelo.edtCDPRODKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
        key:=#0;
    //
    If (Key = #13) and uFuncoes.Empty(edtCDPROD.Text) Then
    begin
         key:=#0;
         spLocalizarClick(Sender);
    End;
    //
    If (Key = #13) and not uFuncoes.Empty(edtCDPROD.Text) Then
    begin
         key:=#0;
         edtCDPROD.Text := uFuncoes.StrZero(edtCDPROD.Text,13);
         //
         With qryProduto2 do
         begin
              Sql.Clear;
              Close;
              //SQL.Add('Select PRO_CDPROD from SACPRO Where PRO_CDPROD='+ quotedstr(edtCDPROD.Text));
              SQL.Add('Select PRO_CDBARR from SACPRO Where PRO_CDBARR='+ quotedstr(uFuncoes.StrZero(edtCDPROD.Text,13)));
              Prepare;
              Open;
         End;
         //
         // If (qryProduto2.RecordCount = 0) Then
         If NOT (qryProduto2.Locate('PRO_CDBARR',uFuncoes.StrZero(edtCDPROD.Text,13),[])) Then
         begin
               Application.MessageBox('Códido de Barras não cadastro!!!', 'ATENÇÃO',
                       MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
               //dmInfoModa.qryProduto.Close;
               edtCDPROD.Clear;
               edtCDPROD.SetFocus;
               Exit;
         End;
         //
         qryProduto2.Close;
         //
         If (dmInfoModa.tbModeloProduto.Active = False) Then
            dmInfoModa.tbModeloProduto.Open;
         //
         With dmInfoModa.qryProduto do
         Begin
              Sql.Clear;
              Close;
              //SQL.Add('Select * from SACPRO Where PRO_CDPROD='+ quotedstr(edtCDPROD.Text));
              SQL.Add('Select * from SACPRO');
              //SQL.Add('Select * from SACPRO Where PRO_CDBARR='+ quotedstr(uFuncoes.StrZero(edtCDPROD.Text,13)));
              Prepare;
              Open;
         End;
         //
         If not (dmInfoModa.tbModeloProduto.Locate('MDP_CDPROD', uFuncoes.StrZero(edtCDPROD.Text,13),[])) Then
         begin
            If Application.MessageBox('Modelo de produto não cadastrado!!!'+#13
                                     +'Deseja cadastrar?',
                 'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
            Begin
              // Incluir registro
              Try
                  txtNMPROD.Visible := True;
                  M_FLINCU := True;
                  dmInfoModa.tbParametros.Edit;
                  dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsFloat :=
                             dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsFloat+1;
                  dmInfoModa.tbParametros.Post;
                  //
                  M_CDMODE := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsString,10);
                  M_NRITEM := 0;
                  //
                  PageControl1.Visible := True;
                  PageControl1.ActivePage := tbsProduto;
                  //
                  //edtCDPROD.ReadOnly := True;
                  //
                  dmInfoModa.tbModeloProduto.Append;
                  dmInfoModa.tbModeloProduto.FieldByName('MDP_CDMODE').AsString := M_CDMODE;
                  dmInfoModa.tbModeloProduto.FieldByName('MDP_CDPROD').AsString := uFuncoes.StrZero(edtCDPROD.Text,13);
                  dmInfoModa.tbModeloProduto.FieldByName('MDP_NMMODE').AsString := cmbNMPROD.Text;
                  dmInfoModa.tbModeloProduto.FieldByName('MDP_CDUSUA').AsString := uPrincipal.M_CDUSUA;
                  //
                  img_Frente.Picture.Assign(nil);
                  //img_Costa.Picture.Assign(nil);
                  //
                  edtNMMODE.Text := dmInfoModa.tbModeloProduto.FieldByName('MDP_NMPROD').AsString;
                  cmbNMPROD.SetFocus;
             Except
                  Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                            MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
                  dmInfoModa.tbModeloProduto.Cancel;
                  PageControl1.Visible := False;
                  txtNMPROD.Visible := False;
             End;
           End
           Else
           begin
                edtCDPROD.Clear;
                edtCDPROD.SetFocus;
                Exit;
           End;
         End
         Else     // se encontrar Edita
         begin
             Try
                  //
                  txtNMPROD.Visible := True;
                  M_FLINCU := False;
                  //
                  PageControl1.Visible := True;
                  dmInfoModa.tbModeloProduto.Edit;
                  Le_Imagem_JPEG(dmInfoModa.tbModeloProdutoMDP_IMGFRE, img_Frente);
                  //Le_Imagem_JPEG(dmInfoModa.tbModeloProdutoMDP_IMGCOS, img_Costa);
                  //
                  PageControl1.ActivePage := tbsProduto;
                  edtNMMODE.Text := dmInfoModa.tbModeloProduto.FieldByName('MDP_NMPROD').AsString;
                  cmbNMPROD.SetFocus;
             Except
                  Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
                  dmInfoModa.tbModeloProduto.Cancel;
                  PageControl1.Visible := False;
                  txtNMPROD.Visible := False;
             End;
         End;
    End;
end;

procedure TfrmCadModelo.PageControl1Change(Sender: TObject);
begin
     If (PageControl1.ActivePage = tbsMateriais) Then
     begin
          btCancelar2.Enabled := False;
          btGravar2.Enabled   := False;
          //
          GridItens.Align := alClient;
          btAdicionar.SetFocus;
     End
     Else
     begin
          btCancelar2.Enabled := True;
          btGravar2.Enabled   := True;
     End;
     //
     If (PageControl1.ActivePage = tbsDesenho) Then
     begin
          dmInfoModa.tbModeloProduto.Edit; 
          Le_Imagem_JPEG(dmInfoModa.tbModeloProdutoMDP_IMGFRE, img_Frente);
          //Le_Imagem_JPEG(dmInfoModa.tbModeloProdutoMDP_IMGCOS, img_Costa);
     End;
end;                            

procedure TfrmCadModelo.Button1Click(Sender: TObject);
begin
        dmInfoModa.tbModeloProduto.Cancel;
        PageControl1.Visible := False;
end;

procedure TfrmCadModelo.cmbNMPRODChange(Sender: TObject);
begin
     If (dsModeloProduto.State = dsInsert) Then
     begin
         edtCDPROD.Text := dmInfoModa.tbModeloProduto.FieldByName('MDP_CDPROD').AsString;
         edtNMMODE.Text := dmInfoModa.tbModeloProduto.FieldByName('MDP_NMPROD').AsString;
     End;
end;

procedure TfrmCadModelo.edtNMMODEKeyPress(Sender: TObject; var Key: Char);
Var
   M_CDPROD : String;
begin
    If (Key = #13) and not uFuncoes.Empty(edtNMMODE.Text) Then
    begin
         key:=#0;
         //
         //If (dmInfoModa.tbProdutos.Locate('PRO_NMPROD', edtNMMODE.Text,[loPartialKey])) Then
         If (dmInfoModa.tbProdutos.Locate('PRO_NMPROD', edtNMMODE.Text,[])) Then
         begin
             M_CDPROD := dmInfoModa.tbProdutos.FieldByName('PRO_CDPROD').AsString;
             edtCDPROD.Text := M_CDPROD;
             //
             If not (dmInfoModa.tbModeloProduto.Locate('MDP_CDPROD',M_CDPROD,[])) Then
             begin
                If Application.MessageBox('Modelo de produto não cadastrado!!!'+#13
                                         +'Deseja cadastrar?',
                       'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
                Begin
                    // Incluir registro
                    Try
                        dmInfoModa.tbParametros.Edit;
                        dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsFloat :=
                               dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsFloat+1;
                        dmInfoModa.tbParametros.Post;
                        //
                        M_CDMODE := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsString,10);
                        M_NRITEM := 0;
                        //
                        PageControl1.Visible := True;
                        PageControl1.ActivePage := tbsProduto;
                        dmInfoModa.tbModeloProduto.Append;
                        dmInfoModa.tbModeloProduto.FieldByName('MDP_CDMODE').AsString := M_CDMODE;
                        dmInfoModa.tbModeloProduto.FieldByName('MDP_CDPROD').AsString := uFuncoes.StrZero(edtCDPROD.Text,13);
                        dmInfoModa.tbModeloProduto.FieldByName('MDP_CDUSUA').AsString := uPrincipal.M_CDUSUA;
                        cmbNMPROD.SetFocus;
                    Except
                        Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                                  MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
                        dmInfoModa.tbModeloProduto.Cancel;
                        PageControl1.Visible := False;
                        Exit;
                    End;
                End
                Else
                begin
                     PageControl1.Visible := False;
                     edtCDPROD.Clear;
                     edtNMMODE.Clear;
                     edtCDPROD.SetFocus;
                     Exit;
                End;    //  Fim-se confirma inclusão
             End
             Else     // se encontrar Edita
             begin
                   Try
                      //
                      PageControl1.Visible := True;
                      dmInfoModa.tbModeloProduto.Edit;
                      PageControl1.ActivePage := tbsProduto;
                      edtCDPROD.Text := dmInfoModa.tbModeloProduto.FieldByName('MDP_CDPROD').AsString;
                      cmbNMPROD.SetFocus;
                   Except
                      Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                        MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
                      dmInfoModa.tbModeloProduto.Cancel;
                      PageControl1.Visible := False;
                   End;
             End;     // Fim-se Localiza produto pelo Codigo
         End;         // Fim-se Localiza produto pelo nome
    End;              // Fim-se pressionamento de ENTER
end;

procedure TfrmCadModelo.dbeQTMATEKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(dbeQTMATE.Text) Then
     begin
          Key := #0;
          btGravar.SetFocus;
     End;
end;

procedure TfrmCadModelo.cmbNMITEMKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(cmbNMITEM.Text) Then
     begin
          Key := #0;
          dbeQTMATE.SetFocus;
     End;
end;

procedure TfrmCadModelo.edtCDPRODEnter(Sender: TObject);
begin
     If (dsModeloProduto.State = dsBrowse) Then
        PageControl1.Visible := False;
     //
     {With dmInfoModa.qryProduto do
     Begin
              Sql.Clear;
              Close;
              SQL.Add('Select * from SACPRO order by PRO_NMPROD');
              Prepare;
              Open;
     End;}
     //
end;

procedure TfrmCadModelo.GridItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = 46) Then
      KEY := 0;
end;

procedure TfrmCadModelo.spFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadModelo.spLocalizarClick(Sender: TObject);
begin
     Try
          Application.CreateForm(TfrmLocProduto, frmLocProduto);
          frmLocProduto.M_NMFORM := 1;
          frmLocProduto.ShowModal;
     Finally
          frmLocProduto.Free;
          edtCDPROD.SetFocus;
     End;
end;

procedure TfrmCadModelo.edtCDPRODExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edtCDPROD.Text) Then
     Begin
         edtCDPROD.Text := uFuncoes.StrZero(edtCDPROD.Text,13);
         //
         With qryProduto2 do
         begin
              Sql.Clear;
              Close;
              //SQL.Add('Select PRO_CDPROD from SACPRO Where PRO_CDPROD='+ quotedstr(edtCDPROD.Text));
              SQL.Add('Select PRO_CDBARR from SACPRO Where PRO_CDBARR='+ quotedstr(uFuncoes.StrZero(edtCDPROD.Text,13)));
              Prepare;
              Open;
         End;
         //
         If (qryProduto2.RecordCount = 0) Then
         begin
               Application.MessageBox('Códido de Barras não cadastro!!!', 'ATENÇÃO',
                       MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
               //dmInfoModa.qryProduto.Close;
               edtCDPROD.Clear;
               edtCDPROD.SetFocus;
               Exit;
         End
         Else
         Begin

         End;
     End;
end;

End.
