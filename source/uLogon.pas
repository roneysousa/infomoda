unit uLogon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, RxLookup;

type
  TfrmLogon = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btCancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image3: TImage;
    edt_SENHA: TEdit;
    btConfirma: TBitBtn;
    edt_NMUSUA: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure edt_SENHAExit(Sender: TObject);
    procedure edt_NMUSUAExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edt_NMUSUAKeyPress(Sender: TObject; var Key: Char);
    procedure edt_SENHAKeyPress(Sender: TObject; var Key: Char);
  private
     M_FECHA: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogon: TfrmLogon;
  M_QTTENT: Integer;


implementation

uses udmInfoModa, uFuncoes, uPrincipal;

{$R *.DFM}

Function GetStateK (Key: integer): boolean;
begin
  Result := Odd (GetKeyState (Key));
end;

procedure TfrmLogon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
      If Not M_FECHA Then
          Action := caNone
      Else
          Action := caFree;

     // Se estiver em branco sai do programa
     If uFuncoes.Empty(edt_NMUSUA.Text) or
        uFuncoes.Empty(edt_SENHA.text) Then
         Application.Terminate;
     //
     dmInfoModa.tbUsuarios.Close;
     //
     Action := caFree;
end;

procedure TfrmLogon.btCancelarClick(Sender: TObject);
begin
     Application.Terminate;
end;

procedure TfrmLogon.FormActivate(Sender: TObject);
begin
     M_QTTENT:=0;
     edt_NMUSUA.Clear;
     dmInfoModa.tbUsuarios.Open;
     dmInfoModa.tbUsuarios.IndexFieldNames := 'SEN_NMUSUA';
     dmInfoModa.tbUsuarios.First;
     While not (dmInfoModa.tbUsuarios.Eof) do
     begin
         edt_NMUSUA.Items.Add(dmInfoModa.tbUsuarios.fieldByName('SEN_NMUSUA').AsString);
         dmInfoModa.tbUsuarios.Next;
     End;
end;

procedure TfrmLogon.BitBtn1Click(Sender: TObject);
Var
   M_ACHOU :boolean;
begin
     M_QTTENT:=M_QTTENT+1;
     // SE nome do usuario estiver vazio
     If uFuncoes.Empty(edt_NMUSUA.Text) Then
     begin
          Application.MessageBox('Digite o nome de usu�rio.',
          'ATEN��O', MB_OK+MB_ICONINFORMATION);
          edt_NMUSUA.SetFocus;
          Exit;
     end;
     //
     // Se a senha do usuario estiver vazio
     If uFuncoes.Empty(edt_SENHA.Text) Then
     begin
          Application.MessageBox('Digite sua senha de usu�rio.',
               'ATEN��O', MB_OK+MB_ICONINFORMATION);
          edt_SENHA.SetFocus;
          Exit;
     end;
     // Se Super-Usu�rio
//     If (edt_NMUSUA.Text = uPrincipal.M_USERMASTER) //Then
     If  (edt_Senha.text = uPrincipal.M_SNMASTER) Then
     begin
          uPrincipal.M_CDUSUA := '000';
          uPrincipal.M_NMUSUA := 'USERMASTER';
          frmPrincipal.Info.Panels.Items[3].Text := uPrincipal.M_CDUSUA+' - '+uPrincipal.M_NMUSUA;
          //uPrincipal.M_FLLOGI := True;
          Close;
          Exit;
     End;
     // Procura usu�rio
     If (M_QTTENT<=4) Then
     begin
          dmInfoModa.tbUsuarios.IndexName := 'indSEN_NMUSUA';
          M_ACHOU := dmInfoModa.tbUsuarios.FindKey([edt_NMUSUA.Text]);
          If Not(M_ACHOU) Then
          begin
                 Application.MessageBox( 'Usu�rio n�o cadastrado.',
                         'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                 edt_NMUSUA.Clear;
                 edt_NMUSUA.SetFocus;
                 Exit;
          end
          else
          begin
               dmInfoModa.tbUsuarios.edit;
               edt_Senha.text := edt_Senha.text+uFuncoes.Replicate('*',6-uFuncoes.ContaCaracs(edt_Senha.text));
               If (dmInfoModa.tbUsuariosSEN_SNATUA.Value = uFuncoes.Codifica(edt_Senha.text)) Then
               begin
                    //dmInfoModa.tbUsuariosSEN_FLLOGA.Value := 'S';
                    uPrincipal.M_CDUSUA := dmInfoModa.tbUsuariosSEN_CDUSUA.Value;
                    uPrincipal.M_NMUSUA := dmInfoModa.tbUsuariosSEN_NMUSUA.Value;
                    frmPrincipal.Info.Panels.Items[3].Text := uPrincipal.M_CDUSUA+' - '+uPrincipal.M_NMUSUA;
                    //uEleicoes.M_ACESSO := dmInfoModa.tbUsuariosSEN_TPACESSO.Value;
                    dmInfoModa.tbUsuarios.Post;
                    //
                    Close;
               End
               Else
               begin
                    Application.MessageBox( 'Senha incorreta!',
                          'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                    edt_SENHA.Clear;
                    edt_SENHA.SetFocus;
                    Exit;
               End;
          end;
          //
          //uPrincipal.M_FLLOGI := True;
     End
     Else
     begin
          Application.MessageBox('Este sistema ser� Fechado!',
                  'ATEN��O', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
          Application.Terminate;
     End;
end;

procedure TfrmLogon.edt_SENHAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(edt_Senha.text) Then
        edt_Senha.text := edt_Senha.text+uFuncoes.Replicate('*',6-uFuncoes.ContaCaracs(edt_Senha.text));
end;

procedure TfrmLogon.edt_NMUSUAExit(Sender: TObject);
begin
     If (uFuncoes.Empty(edt_NMUSUA.Text)) Then
     begin
          Application.MessageBox('Digite o nome de usu�rio',
                  'ATEN��O', MB_OK+MB_ICONINFORMATION);
          edt_NMUSUA.SetFocus;
     End;
     {    dmInfoModa.tbUsuarios.IndexFieldNames := 'SEN_CDUSUA';
    dmInfoModa.tbUsuarios.FindKey([M_CDUSUA]);
    //
    dmInfoModa.tbUsuarios.Edit;
    If (dmInfoModa.tbUsuariosSEN_NMTERM.Value <> ' ') Then
    begin
  //       Application.MessageBox('O usuario j� est� no computador'+#13
         ShowMessage('O usuario j� est� no computador'+#13
             +funcoes.StrToPChar(funcoes.SysComputerName));
//                  'ATEN��O', MB_OK+MB_ICONINFORMATION);
         edt_NMUSUA.SetFocus;
    End;}
end;

procedure TfrmLogon.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      If GetStateK (VK_LMENU) And (Key = VK_F4) Then
          M_FECHA := False;
end;

procedure TfrmLogon.edt_NMUSUAKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(edt_NMUSUA.Text) Then
     begin
          Key := #0;
          edt_SENHA.SetFocus;
     End;
end;

procedure TfrmLogon.edt_SENHAKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) and not uFuncoes.Empty(edt_NMUSUA.Text) Then
     begin
          Key := #0;
          BitBtn1Click(Sender);
     End;
end;

End.
