unit uCadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, DBCtrls, ToolWin, ComCtrls, Db, Grids, DBGrids;

type
  TfrmCadUsuarios = class(TForm)
    Panel3: TPanel;
    dsUsuarios: TDataSource;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbeNMUSUA: TDBEdit;
    Label3: TLabel;
    dbeCargo: TDBEdit;
    DBText1: TDBText;
    Label5: TLabel;
    edtSenha: TEdit;
    Label6: TLabel;
    dbeSenha: TDBEdit;
    dsTpAcesso: TDataSource;
    edt_Confirma: TEdit;
    dbGridUsuarios: TDBGrid;
    ToolBar1: TToolBar;
    btPrimeiro: TToolButton;
    btAnterior: TToolButton;
    btProximo: TToolButton;
    btUltimo: TToolButton;
    btAdicionar: TToolButton;
    btEditar: TToolButton;
    btExcluir: TToolButton;
    btGravar: TToolButton;
    btCancelar: TToolButton;
    btLocalizar: TToolButton;
    btSair: TToolButton;
    Panel1: TPanel;
    DBText2: TDBText;
    tbAcessos: TToolButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btPrimeiroClick(Sender: TObject);
    procedure btAnteriorClick(Sender: TObject);
    procedure btProximoClick(Sender: TObject);
    procedure btUltimoClick(Sender: TObject);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure dsUsuariosStateChange(Sender: TObject);
    procedure dbeNMUSUAExit(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtSenhaExit(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure edt_ConfirmaExit(Sender: TObject);
    procedure dsUsuariosDataChange(Sender: TObject; Field: TField);
    procedure dbGridUsuariosKeyPress(Sender: TObject; var Key: Char);
    procedure dbGridUsuariosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbGridUsuariosCellClick(Column: TColumn);
    procedure tbAcessosClick(Sender: TObject);
    procedure edt_ConfirmaKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btAdicionarClick(Sender: TObject);
  private
     Procedure Apagar_Acessos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuarios: TfrmCadUsuarios;
  M_LETRAS, W_CDUSUA : String;

implementation

Uses uFuncoes, uPrincipal,udmInfoModa;
//, uAcessos;

{$R *.DFM}

procedure TfrmCadUsuarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmInfoModa.tbUsuarios.close;
     //
     //frmPrincipal.mnuNavegacao.Enabled := False;
     uFuncoes.Limpar_Status;
     //
     Action := caFree;
end;

procedure TfrmCadUsuarios.FormActivate(Sender: TObject);
begin

     If (dmInfoModa.tbUsuarios.Active = False) Then
         dmInfoModa.tbUsuarios.Open;
     If (dmInfoModa.tbParametros.Active = False ) Then
         dmInfoModa.tbParametros.Open;
     //
     //If Not frmPrincipal.Acesso(M_CDUSUA,'Excluir') Then
      //   btExcluir.Visible := False;
     //
     dbGridUsuarios.Align := alClient;
     dbGridUsuarios.SetFocus;
    // Excluir registros
{    If Not (frmEleicoes.Acesso(uNetPrincipal.M_CDUSUA,'Exclusao')) Then
    Begin
        If (uELleicoes.M_CDUSUA<>'000') Then
        begin
             frmEleicoes.mnuExcluirItem.Visible := False;
             btExcluir.Visible                  := False;
        End;
    End;}
end;

procedure TfrmCadUsuarios.btSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadUsuarios.btPrimeiroClick(Sender: TObject);
begin
     If not(dmInfoModa.tbUsuarios.Bof) Then
      dmInfoModa.tbUsuarios.First;
end;

procedure TfrmCadUsuarios.btAnteriorClick(Sender: TObject);
begin
     If not(dmInfoModa.tbUsuarios.Bof) Then
        dmInfoModa.tbUsuarios.Prior;
end;

procedure TfrmCadUsuarios.btProximoClick(Sender: TObject);
begin
     If not(dmInfoModa.tbUsuarios.Eof) Then
        dmInfoModa.tbUsuarios.Next;
end;

procedure TfrmCadUsuarios.btUltimoClick(Sender: TObject);
begin
     If not(dmInfoModa.tbUsuarios.Eof) Then
       dmInfoModa.tbUsuarios.Last;
end;

procedure TfrmCadUsuarios.btEditarClick(Sender: TObject);
begin
     dmInfoModa.tbUsuarios.Edit;
     If (uPrincipal.M_CDUSUA = '000') Then
     begin
          //dbGridUsuarios.Visible := false;
          edtSenha.Text     := dmInfoModa.tbUsuariosSEN_SNATUA.Value;
          edt_Confirma.text := edtSenha.Text;
          dbeNMUSUA.SetFocus;
          Exit;
     End;
     //
     If (dmInfoModa.tbUsuariosSEN_CDUSUA.Value = uPrincipal.M_CDUSUA) Then
     begin
          //dbGridUsuarios.Visible := false;
          edtSenha.Text     := dmInfoModa.tbUsuariosSEN_SNATUA.Value;
          edt_Confirma.text := edtSenha.Text;
          dbeNMUSUA.SetFocus;
     End
     Else
     begin
          ShowMessage(uPrincipal.M_NMUSUA+' você não pode edita este usuário.');
          dmInfoModa.tbUsuarios.Cancel;
     End;
end;

procedure TfrmCadUsuarios.btExcluirClick(Sender: TObject);
begin
    If Application.MessageBox('Deseja eliminar este registro', 'Exclusão de usuário',
                  MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
    begin
         Apagar_Acessos;
         dmInfoModa.tbUsuarios.delete;             // Apagar o regitro atual.
    End;
end;

procedure TfrmCadUsuarios.dsUsuariosStateChange(Sender: TObject);
begin
    btPrimeiro.Enabled := dsUsuarios.State in [dsBrowse];
    btAnterior.Enabled := dsUsuarios.State in [dsBrowse];
    btProximo.Enabled  := dsUsuarios.State in [dsBrowse];
    btUltimo.Enabled   := dsUsuarios.State in [dsBrowse];
    //
    btAdicionar.Enabled := dsUsuarios.State in [dsBrowse];
    btEditar.Enabled    := dsUsuarios.State in [dsBrowse];
    btExcluir.Enabled   := dsUsuarios.State in [dsBrowse];
    //
    btLocalizar.Enabled:= dsUsuarios.State in [dsBrowse];
    btSair.Enabled     := dsUsuarios.State in [dsBrowse];
    tbAcessos.Enabled  := dsUsuarios.State in [dsBrowse];
    dbGridUsuarios.Visible := dsUsuarios.State in [dsBrowse];
    //
    btGravar.Enabled   := dsUsuarios.State in [dsInsert,dsEdit];
    btCancelar.Enabled := dsUsuarios.State in [dsInsert,dsEdit];
    //
    {frmPrincipal.mnuPrimeiroItem .Enabled  := dsUsuarios.State in [dsBrowse];
    frmPrincipal.mnuAnteriorItem.Enabled   := dsUsuarios.State in [dsBrowse];
    frmPrincipal.mnuProximoItem.Enabled    := dsUsuarios.State in [dsBrowse];
    frmPrincipal.mnuUltimo.Enabled         := dsUsuarios.State in [dsBrowse];
    //
    frmPrincipal.mnuAdicionarItem.Enabled := dsUsuarios.State in [dsBrowse];
    frmPrincipal.mnuEditarItem.Enabled    := dsUsuarios.State in [dsBrowse];
    frmPrincipal.mnuExcluirItem.Enabled   := dsUsuarios.State in [dsBrowse];
    ///
    frmPrincipal.mnuGravarItem.Enabled   := dsUsuarios.State in [dsInsert,dsEdit];
    frmPrincipal.mnuCancelarItem.Enabled := dsUsuarios.State in [dsInsert,dsEdit];}
    //
{    frmPrincipal.mnuLocalizarItem.Enabled   := dsUsuarios.State in [dsBrowse];
    // barra de status
     If dsUsuarios.State in [dsInsert] Then
         frmPrincipal.StatusBar1.Panels[1].Text := 'Modo de inserção';
     If dsUsuarios.State in [dsEdit] Then
         frmPrincipal.StatusBar1.Panels[1].Text := 'Modo de edição';
     If dsUsuarios.State in [dsBrowse] Then
         frmPrincipal.StatusBar1.Panels[1].Text := 'Modo de navegação';}
end;

procedure TfrmCadUsuarios.dbeNMUSUAExit(Sender: TObject);
begin
     If (dsUsuarios.State in [dsInsert]) Then
     begin
          // Se nome do usuário estiver vazio
          If uFuncoes.Empty(dbeNMUSUA.Text) Then
          begin
               Application.MessageBox( 'Digite o nome do usuário.',
                                  'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeNMUSUA.SetFocus;
               Exit;
          End;
          //
{          If (dmInfoModa.ValidaCampo(dmInfoModa.tbUsuarios ,'SEN_NMUSUA',dbeNMUSUA.Text)) Then
          begin
               Application.MessageBox( 'Nome de usuário já cadastrado.',
                              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               dbeNMUSUA.Clear;
               dbeNMUSUA.SetFocus;
          End
          Else
               dbeCargo.SetFocus;}
     End;
end;

//Super rápido, eu recomendo.

procedure TfrmCadUsuarios.btGravarClick(Sender: TObject);
begin
     If (dsUsuarios.State in [dsInsert]) Then
     begin
          If uFuncoes.Empty(dbeNMUSUA.Text) Then
          begin
               Application.MessageBox('Digite o nome do usuário!!!','ATENÇÃO',
                              MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
               dbeNMUSUA.Clear;
               dbeNMUSUA.SetFocus;
               Exit;
          End;
     End;
    //
    Try
       If not uFuncoes.Empty(edtSenha.text) Then
       begin
            edt_Confirma.Text := edt_Confirma.Text+uFuncoes.Replicate('*',6-uFuncoes.ContaCaracs(edt_Confirma.Text));
            //
            If ( edt_Confirma.Text = edtSenha.Text) Then
                  dmInfoModa.tbUsuariosSEN_SNATUA.Value := uFuncoes.Codifica(edt_Confirma.Text)
            Else
            begin
                 Application.MessageBox( 'A senha incorreta!','ATENÇÃO',
                              MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
                 edt_Confirma.Clear;
                 edt_Confirma.SetFocus;
                 Exit;
            End;
       End;
       //
        If (dsUsuarios.State in [dsInsert]) Then
        begin
             If uFuncoes.Empty(dbeNMUSUA.Text) Then
             begin
                  Application.MessageBox('Digite o nome do usuário.',
                       'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  dbeNMUSUA.SetFocus;
                  Exit;
             End;
             //
             dmInfoModa.tbParametros.edit;
             dmInfoModa.tbParametrosPAR_CDUSUA.Value := dmInfoModa.tbParametrosPAR_CDUSUA.Value+1;
             dmInfoModa.tbParametros.Post;
             //
             dmInfoModa.tbUsuariosSEN_CDUSUA.Value := uFuncoes.StrZero(FloattoStr(dmInfoModa.tbParametrosPAR_CDUSUA.Value),3);
       End;
       // grava
       dmInfoModa.tbUsuarios.Post;
       //dbGridUsuarios.Visible := True;
       // vai para o primeiro registro
       dmInfoModa.tbUsuarios.First;
    Except
           Application.MessageBox('Error ao tentar gravar regitros.',
                      'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dmInfoModa.tbUsuarios.Cancel;
           //dbGridUsuarios.Visible := True;
    End;
end;

procedure TfrmCadUsuarios.btCancelarClick(Sender: TObject);
begin
     // cancela alteração
     dmInfoModa.tbUsuarios.Cancel;
     //dbGridUsuarios.Visible := True;
    // vai para o primeiro registro
    dmInfoModa.tbUsuarios.First;
end;

procedure TfrmCadUsuarios.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   If (dsUsuarios.State in [dsInsert,dsEdit]) Then
   begin
        If Application.MessageBox( 'Salvar alterações?',
              'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
             dmInfoModa.tbUsuarios.Post
        Else
            dmInfoModa.tbUsuarios.Cancel;
   End;
end;

procedure TfrmCadUsuarios.edtSenhaExit(Sender: TObject);
begin
     If (dsUsuarios.State in [dsInsert, dsEdit]) Then
         If not uFuncoes.Empty(edtSenha.text) Then
            edtSenha.text := edtSenha.text+uFuncoes.Replicate('*',6-uFuncoes.ContaCaracs(edtSenha.text));

end;

procedure TfrmCadUsuarios.btLocalizarClick(Sender: TObject);
Var
   M_NMUSUA: string;
   ClickedOK, M_ACHOU: Boolean;
begin
   M_NMUSUA := '';
   ClickedOK := InputQuery('Localizar', 'Informe o nome de usuário?', M_NMUSUA);
   If ClickedOK then
   Begin
        //dmInfoModa.tbUsuarios.IndexName := 'indSEN_NMUSUA';
        //M_ACHOU := dmInfoModa.tbUsuarios.FindKey([M_NMUSUA]);
        M_ACHOU := dmInfoModa.tbUsuarios.Locate('SEN_NMUSUA',UpperCase(M_NMUSUA),[loPartialKey]);
        If Not(M_ACHOU) Then
        begin
            Application.MessageBox( 'Usuário não cadastrado.',
               'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
            Exit;
        end;
   End;
end;

procedure TfrmCadUsuarios.edt_ConfirmaExit(Sender: TObject);
begin
 If (dsUsuarios.State in [dsInsert, dsEdit]) Then
 begin
   If not uFuncoes.Empty(edtSenha.text) Then
   begin
        edt_Confirma.Text := edt_Confirma.Text+uFuncoes.Replicate('*',6-uFuncoes.ContaCaracs(edt_Confirma.Text));
        //dbeSenha.text := dbeSenha.text+funcoes.Replicate('*',6-funcoes.ContaCaracs(dbeSenha.Text));
        If ( edt_Confirma.Text = edtSenha.Text) Then
        begin
            dmInfoModa.tbUsuariosSEN_SNATUA.Value := uFuncoes.Codifica(edt_Confirma.Text);
            Exit;
            //ShowMessage('Senha codificada com sucesso.');
            //dmInfoModa.tbUsuariosSEN_SNATUA.Value := edtSenha.Text;
        End
        Else
        begin
             Application.MessageBox( 'A senha incorreta!','ATENÇÃO',
                          MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
             edt_Confirma.Clear;
             edt_Confirma.SetFocus;
             Exit;
        End;
   End;
  End; 
end;

procedure TfrmCadUsuarios.dsUsuariosDataChange(Sender: TObject;
  Field: TField);
begin
     // barra de status
     frmPrincipal.Info.Panels[2].Text := ' Registro: ' + IntToStr(dsUsuarios.DataSet.RecNo) +
                          ' de ' + IntToStr(dsUsuarios.DataSet.RecordCount);
end;

procedure TfrmCadUsuarios.dbGridUsuariosKeyPress(Sender: TObject;
  var Key: Char);
begin
      M_LETRAS := M_LETRAS+uppercase(key); // acumula as letras digitadas
      dmInfoModa.tbUsuarios.LOCATE('SEN_NMUSUA',M_LETRAS,[loPartialKey]); // Efetua a procura
end;

procedure TfrmCadUsuarios.dbGridUsuariosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if (Shift = [ssCtrl]) and (Key = 46) Then
        KEY := 0;
     //
     IF (KEY=38) or (key=40) then // avalio se é seta para cima ou para baixo;
          M_LETRAS:='';
end;

procedure TfrmCadUsuarios.dbGridUsuariosCellClick(Column: TColumn);
begin
     M_LETRAS:='';
end;

procedure TfrmCadUsuarios.Apagar_Acessos;
Var
   W_CDUSUA:String;
begin
{     If (dmInfoModa.tbAcesso.Active = False) Then
        dmInfoModa.tbAcesso.open;
     W_CDUSUA := dmInfoModa.tbUsuariosSEN_CDUSUA.Value;
     //
     If (dmInfoModa.tbAcesso.Locate('ACE_CDUSUA',W_CDUSUA,[])) Then
     begin
          dmInfoModa.tbAcesso.Filter   :='ACE_CDUSUA='+W_CDUSUA;
          dmInfoModa.tbAcesso.Filtered := True;
          dmInfoModa.tbAcesso.First;
          While Not (dmInfoModa.tbAcesso.Eof) do     //Enquanto
          begin
              dmInfoModa.tbAcesso.Delete;
              // proximo usuario
              dmInfoModa.tbAcesso.Next;
          End;   // fim-do-enquanto
         dmInfoModa.tbAcesso.Filtered := False;
     End;  //fim-da- procura
     //
     dmInfoModa.tbAcesso.close;}
end;

procedure TfrmCadUsuarios.tbAcessosClick(Sender: TObject);
begin
{     W_CDUSUA := dmInfoModa.tbUsuariosSEN_CDUSUA.Value;
     Application.CreateForm(TfrmAcessos, frmAcessos);  // Carrega form na memória
     frmAcessos.ShowModal;   //Mostra form em modo exclusivo
     frmAcessos.Free; //  Libera Memória}
end;

procedure TfrmCadUsuarios.edt_ConfirmaKeyPress(Sender: TObject;
  var Key: Char);
begin
    If (Key = #13) Then
    begin
         Key := #0;
         If Application.MessageBox('Salvar alterações?',
          'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idNo then
               dmInfoModa.tbUsuarios.Cancel
         Else
         begin
              edt_ConfirmaExit(Sender);
              btGravarClick(Sender);
         End;
    End;
end;

procedure TfrmCadUsuarios.FormKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #27) and (dsUsuarios.State in [dsInsert, dsEdit]) Then
     begin
          Key := #0;
          dmInfoModa.tbUsuarios.Cancel;
     End;

end;

procedure TfrmCadUsuarios.btAdicionarClick(Sender: TObject);
begin
       Try
           dmInfoModa.tbUsuarios.Append;
           dbeNMUSUA.SetFocus;
       Except
           ShowMessage('Erro ao tentar incluir usuário.');
           dmInfoModa.tbUsuarios.Cancel;
       End;
end;

end.
