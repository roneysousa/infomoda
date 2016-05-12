unit uCadModProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Grids, DBGrids, DB, RxLookup, Mask,
  Buttons, ExtDlgs, ComCtrls, ToolWin;

type
  TfrmCadModProduto = class(TForm)
    pnlSuperior: TPanel;
    DBText2: TDBText;
    Panel2: TPanel;
    pnlInferior2: TPanel;
    pnlInferior: TPanel;
    pnlGrid: TPanel;
    GridItens: TDBGrid;
    Label1: TLabel;
    dsModeloProduto: TDataSource;
    cmbNMPROD: TRxDBLookupCombo;
    Label2: TLabel;
    cmbNMMATE: TRxDBLookupCombo;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    DBImage1: TDBImage;
    Label5: TLabel;
    DBImage2: TDBImage;
    dsItens: TDataSource;
    Label6: TLabel;
    Label7: TLabel;
    dbeQTMATE: TDBEdit;
    cmbNMITEM: TRxDBLookupCombo;
    btAdicionar: TBitBtn;
    btEditar: TBitBtn;
    btExcluir: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    btAbrirFrente: TBitBtn;
    btAbrirCosta: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    pnlSuperior2: TPanel;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    btAdicionar2: TSpeedButton;
    btEditar2: TSpeedButton;
    btExcluir2: TSpeedButton;
    ToolButton7: TToolButton;
    btGravar2: TSpeedButton;
    btUltimo: TSpeedButton;
    ToolButton8: TToolButton;
    btFechar: TSpeedButton;
    ToolButton1: TToolButton;
    btCancelar2: TSpeedButton;
    btProximo: TSpeedButton;
    btAnterior: TSpeedButton;
    btPrimeiro: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dsModeloProdutoDataChange(Sender: TObject; Field: TField);
    procedure dsModeloProdutoStateChange(Sender: TObject);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure dsItensStateChange(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btAbrirFrenteClick(Sender: TObject);
    procedure btAbrirCostaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btAdicionar2Click(Sender: TObject);
    procedure btEditar2Click(Sender: TObject);
    procedure btExcluir2Click(Sender: TObject);
    procedure btGravar2Click(Sender: TObject);
    procedure btCancelar2Click(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadModProduto: TfrmCadModProduto;
  M_CDMODE : String;
  M_NRITEM : Integer;

implementation

uses udmInfoModa, uPrincipal, uFuncoes;

{$R *.dfm}

procedure TfrmCadModProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmInfoModa.tbItensMateria.Close;
     dmInfoModa.tbModeloProduto.Close;
     //
     frmPrincipal.Botoes('2');
     Limpar_Status;
     //
     Action := caFree;
end;

procedure TfrmCadModProduto.FormCreate(Sender: TObject);
begin
     //
     If (dmInfoModa.tbModeloProduto.Active = False) Then
        dmInfoModa.tbModeloProduto.Open;
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
     frmPrincipal.Botoes('1');
end;

procedure TfrmCadModProduto.dsModeloProdutoDataChange(Sender: TObject;
  Field: TField);
begin
     frmPrincipal.Info.Panels[1].Text := ' Registro: ' + IntToStr(dsModeloProduto.DataSet.RecNo) +
                          ' de ' + IntToStr(dsModeloProduto.DataSet.RecordCount);

end;

procedure TfrmCadModProduto.dsModeloProdutoStateChange(Sender: TObject);
begin
    btAdicionar2.Enabled := dsModeloProduto.State in [dsBrowse];
    btEditar2.Enabled    := (dsModeloProduto.State in [dsBrowse])
                and (dmInfoModa.tbModeloProduto.RecordCount >0 );
    btExcluir2.Enabled   := (dsModeloProduto.State in [dsBrowse])
                and (dmInfoModa.tbModeloProduto.RecordCount >0 );
    //frmPrincipal.btLocalizar.Enabled := dsModeloProduto.State in [dsBrowse];
    btFechar.Enabled := dsModeloProduto.State in [dsBrowse];
    // botoes de navegação
    btUltimo.Enabled := dsModeloProduto.State in [dsBrowse];
    btProximo.Enabled := dsModeloProduto.State in [dsBrowse];
    btAnterior.Enabled := dsModeloProduto.State in [dsBrowse];
    btPrimeiro.Enabled := dsModeloProduto.State in [dsBrowse];
    //
    btGravar2.Enabled    := dsModeloProduto.State in [dsInsert,dsEdit];
    btCancelar2.Enabled  := dsModeloProduto.State in [dsInsert,dsEdit];
    //
    btAbrirFrente.Enabled := dsModeloProduto.State in [dsInsert,dsEdit];
    btAbrirCosta.Enabled  := dsModeloProduto.State in [dsInsert,dsEdit];
end;

procedure TfrmCadModProduto.DBMemo1KeyPress(Sender: TObject;
  var Key: Char);
begin
      Key:= Upcase(Key);
end;

procedure TfrmCadModProduto.dsItensStateChange(Sender: TObject);
begin
  If (dmInfoModa.tbItensMateria.Active = True) Then
  begin
      btAdicionar.Enabled := dsItens.State in [dsBrowse];
      btEditar.Enabled    := (dsItens.State in [dsBrowse])
                and (dmInfoModa.tbItensMateria.RecordCount >0 );
      btExcluir.Enabled   := (dsItens.State in [dsBrowse])
                and (dmInfoModa.tbItensMateria.RecordCount >0 );
      //
      btGravar.Enabled    := dsItens.State in [dsInsert,dsEdit];
      btCancelar.Enabled  := dsItens.State in [dsInsert,dsEdit];
  End;
end;

procedure TfrmCadModProduto.btAdicionarClick(Sender: TObject);
begin
      //
      If (dsModeloProduto.State in [dsInsert, dsEdit]) then
      begin
          If (dmInfoModa.tbItensMateria.Active = False) Then
             dmInfoModa.tbItensMateria.Open;
           Try
              //
              M_CDMODE := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsString,10);
              M_NRITEM := M_NRITEM+1;
              //
              dmInfoModa.tbItensMateria.Append;
              dmInfoModa.tbItensMateria.FieldByName('IMP_CDMODE').AsString := M_CDMODE;
              dmInfoModa.tbItensMateria.FieldByName('IMP_NRITEM').AsString := uFuncoes.StrZero(InttoStr(M_NRITEM),2);
              frmCadModProduto.cmbNMITEM.SetFocus;
           Except
                Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                        MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
               dmInfoModa.tbItensMateria.Cancel;
           End;
      End;
end;

procedure TfrmCadModProduto.btEditarClick(Sender: TObject);
begin
      If (dmInfoModa.tbItensMateria.Active = True) Then
      begin
           Try
              //
              dmInfoModa.tbItensMateria.Edit;
              frmCadModProduto.cmbNMITEM.SetFocus;
           Except
                Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                        MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
               dmInfoModa.tbItensMateria.Cancel;
           End;
      End;
end;

procedure TfrmCadModProduto.btCancelarClick(Sender: TObject);
begin
      If (dmInfoModa.tbItensMateria.Active = True) Then
         dmInfoModa.tbItensMateria.Cancel;
end;

procedure TfrmCadModProduto.btGravarClick(Sender: TObject);
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

procedure TfrmCadModProduto.btAbrirFrenteClick(Sender: TObject);
var
    BMP: TBitMap;
begin
  Try
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
   End;
end;

procedure TfrmCadModProduto.btAbrirCostaClick(Sender: TObject);
var
    BMP: TBitMap;
begin
  Try
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
   End;
end;

procedure TfrmCadModProduto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     //CanClose := False;
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

procedure TfrmCadModProduto.btAdicionar2Click(Sender: TObject);
begin
     Try
          dmInfoModa.tbParametros.Edit;
          dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsFloat :=
           dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsFloat+1;
          dmInfoModa.tbParametros.Post;
          //
          M_CDMODE := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_CDMODE').AsString,10);
          uCadModProduto.M_NRITEM := 0;
          //
          dmInfoModa.tbModeloProduto.Append;
          dmInfoModa.tbModeloProduto.FieldByName('MDP_CDMODE').AsString := M_CDMODE;
          dmInfoModa.tbModeloProduto.FieldByName('MDP_CDUSUA').AsString := uPrincipal.M_CDUSUA;  
          frmCadModProduto.cmbNMPROD.SetFocus;
     Except
          Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbModeloProduto.Cancel;
     End;
end;

procedure TfrmCadModProduto.btEditar2Click(Sender: TObject);
begin
     Try
          //
          dmInfoModa.tbModeloProduto.Edit;
          frmCadModProduto.cmbNMPROD.SetFocus;
     Except
          Application.MessageBox('Error ao tentar incluir registro?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbModeloProduto.Cancel;
     End;

end;

procedure TfrmCadModProduto.btExcluir2Click(Sender: TObject);
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

procedure TfrmCadModProduto.btGravar2Click(Sender: TObject);
begin
     Try
         If (frmCadModProduto.dsModeloProduto.State in [dsInsert,dsEdit]) Then
         begin
               If uFuncoes.Empty(frmCadModProduto.cmbNMPROD.Text) Then
               begin
                    Application.MessageBox('Selecione o produto!!!','ATENÇÃO',
                       MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    frmCadModProduto.cmbNMPROD.SetFocus;
                    Exit;
               End;
         End;
         //
         If (frmCadModProduto.dsModeloProduto.State in [dsInsert,dsEdit]) Then
         begin
               If uFuncoes.Empty(frmCadModProduto.cmbNMMATE.Text) Then
               begin
                    Application.MessageBox('Selecione a materia prima!!!','ATENÇÃO',
                       MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    frmCadModProduto.cmbNMMATE.SetFocus;
                    Exit;
               End;
         End;
         //
         dmInfoModa.tbModeloProduto.Post;
     Except
          Application.MessageBox('Error ao tentar gravar registro?', 'Erro',
                    MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
          dmInfoModa.tbModeloProduto.Cancel;
     End;
end;

procedure TfrmCadModProduto.btCancelar2Click(Sender: TObject);
begin
     dmInfoModa.tbModeloProduto.Cancel;
end;

procedure TfrmCadModProduto.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadModProduto.btPrimeiroClick(Sender: TObject);
begin
     If not (dmInfoModa.tbModeloProduto.Bof) Then
        dmInfoModa.tbModeloProduto.First;
end;

procedure TfrmCadModProduto.btAnteriorClick(Sender: TObject);
begin
     If not (dmInfoModa.tbModeloProduto.Bof) Then
        dmInfoModa.tbModeloProduto.Prior;
end;

procedure TfrmCadModProduto.btProximoClick(Sender: TObject);
begin
     If not (dmInfoModa.tbModeloProduto.Eof) Then
        dmInfoModa.tbModeloProduto.Next;
end;

procedure TfrmCadModProduto.btUltimoClick(Sender: TObject);
begin
     If not (dmInfoModa.tbModeloProduto.Eof) Then
        dmInfoModa.tbModeloProduto.Last;
end;

procedure TfrmCadModProduto.GridItensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = 46) Then
        KEY := 0;
end;

End.
