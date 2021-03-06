unit uCadPlanos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, DB, Mask, Grids, DBGrids, RXDBCtrl,
  Buttons;

type
  TfrmCadPlanos = class(TForm)
    Panel1: TPanel;
    DBText2: TDBText;
    pnlDados: TPanel;
    pnlInferior: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsPlanos: TDataSource;
    Label2: TLabel;
    edtNMPLAN: TDBEdit;
    Label3: TLabel;
    edtNRPARC: TDBEdit;
    Label4: TLabel;
    edtPEJURO: TDBEdit;
    Label5: TLabel;
    edtPEENTR: TDBEdit;
    GridPlanos: TRxDBGrid;
    btAdicionar: TBitBtn;
    btEditar: TBitBtn;
    btExcluir: TBitBtn;
    btGravar: TBitBtn;
    btCancelar: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    btFechar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEditarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dsPlanosStateChange(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPlanos: TfrmCadPlanos;

implementation

uses udmInfoModa, uFuncoes, uPrincipal;

{$R *.dfm}

procedure TfrmCadPlanos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmInfoModa.tbPlanos.Close;
     //
     Action := caFree;
end;

procedure TfrmCadPlanos.btEditarClick(Sender: TObject);
begin
     Try
         dmInfoModa.tbPlanos.Edit;
         GridPlanos.Visible := False;
         edtNMPLAN.SetFocus;
     Except
           ShowMessage('Erro ao tentar editar registro.');
           dmInfoModa.tbPlanos.Cancel;
           GridPlanos.Visible := True;
     End;
end;

procedure TfrmCadPlanos.btGravarClick(Sender: TObject);
Var
   W_CDPLAN : String;
begin
     Try
         If uFuncoes.Empty(edtNMPLAN.Text) Then
         Begin
              ShowMessage('Digite a descri��o do plano.');
              edtNMPLAN.SetFocus;
              Exit;
         End;
         //
         If uFuncoes.Empty(edtNRPARC.Text) Then
         Begin
              ShowMessage('Digite o n�mero de parcela do plano.');
              edtNRPARC.SetFocus;
              Exit;
         End;
         //
         If (dsPlanos.State = dsInsert) Then
         Begin
              If (dmInfoModa.tbParametros.Active = False) Then
                 dmInfoModa.tbParametros.Open;
              //
              dmInfoModa.tbParametros.Edit;
              dmInfoModa.tbParametros.FieldByName('PAR_CDPLAN').AsInteger :=
                 dmInfoModa.tbParametros.FieldByName('PAR_CDPLAN').AsInteger+1;
              dmInfoModa.tbParametros.Post;
              //
              W_CDPLAN := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_CDPLAN').AsString,2);
              //
              dmInfoModa.tbPlanos.FieldByName('PLA_CDPLAN').AsString := W_CDPLAN;
              dmInfoModa.tbPlanos.FieldByName('PLA_CDUSUA').AsString := uPrincipal.M_CDUSUA;
         End;
         //
         dmInfoModa.tbPlanos.Post;
         GridPlanos.Visible := True;
     Except
           ShowMessage('Erro ao tentar gravar registro.');
           dmInfoModa.tbPlanos.Cancel;
           GridPlanos.Visible := True;
     End;
end;

procedure TfrmCadPlanos.btCancelarClick(Sender: TObject);
begin
     Try
         dmInfoModa.tbPlanos.Cancel;
         GridPlanos.Visible := True;
     Except

     End;
end;

procedure TfrmCadPlanos.btAdicionarClick(Sender: TObject);
begin
     Try
         GridPlanos.Visible := False;
         dmInfoModa.tbPlanos.Append;
         edtNMPLAN.SetFocus;
     Except
           ShowMessage('Erro ao tentar incluir registro.');
           dmInfoModa.tbPlanos.Cancel;
           GridPlanos.Visible := True;
     End;
end;

procedure TfrmCadPlanos.btExcluirClick(Sender: TObject);
begin
        If Application.MessageBox('Deseja eliminar este registro?', 'Exclus�o de registro',
           MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = ID_YES Then
            dmInfoModa.tbPlanos.Delete;
end;

procedure TfrmCadPlanos.FormActivate(Sender: TObject);
begin
     If (dmInfoModa.tbPlanos.Active = False) Then
        dmInfoModa.tbPlanos.Open;
     //    
     GridPlanos.Align := alClient;
end;

procedure TfrmCadPlanos.dsPlanosStateChange(Sender: TObject);
begin
    btAdicionar.Enabled := dsPlanos.State in [dsBrowse];
    btEditar.Enabled := dsPlanos.State in [dsBrowse];
    btExcluir.Enabled := dsPlanos.State in [dsBrowse];
    btFechar.Enabled := dsPlanos.State in [dsBrowse];
    //
    btGravar.Enabled := dsPlanos.State in [dsInsert, dsEdit];
    btCancelar.Enabled := dsPlanos.State in [dsInsert, dsEdit];
end;

procedure TfrmCadPlanos.btFecharClick(Sender: TObject);
begin
     Close;
end;

End.
