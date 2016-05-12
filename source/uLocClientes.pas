unit uLocClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  TfrmLocalizarCliente = class(TForm)
    edtPROCURA: TLabeledEdit;
    rdCODIGO: TRadioButton;
    rbNOME: TRadioButton;
    BtnConfirmar: TSpeedButton;
    BtnCancelar: TSpeedButton;
    GridDados: TDBGrid;
    dsClientes: TDataSource;
    qryClientes: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure edtPROCURAChange(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure edtPROCURAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridDadosKeyPress(Sender: TObject; var Key: Char);
    procedure GridDadosDblClick(Sender: TObject);
    procedure rdCODIGOClick(Sender: TObject);
    procedure rbNOMEClick(Sender: TObject);
    procedure edtPROCURAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocalizarCliente: TfrmLocalizarCliente;

implementation

Uses uFuncoes, uImpLotes2;

{$R *.dfm}

procedure TfrmLocalizarCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;  
end;

procedure TfrmLocalizarCliente.FormCreate(Sender: TObject);
begin
   With qryClientes do
   begin
         sql.clear;
         Close;
         sql.add('Select CLI_CDCLIE, CLI_NMCLIE from SACCLI order by CLI_NMCLIE');
         Prepare;
         open;
   End;
end;

procedure TfrmLocalizarCliente.edtPROCURAChange(Sender: TObject);
begin
     If not uFuncoes.Empty(edtPROCURA.Text) Then
     begin
         If (rdCODIGO.Checked = True) Then
         begin
              // Procura pelo codigo
              With qryClientes do
              begin
                   SQL.Clear;
                   Close;
                   Sql.add('Select CLI_CDCLIE, CLI_NMCLIE from SACCLI where CLI_CDCLIE like '
                       + quotedstr(uFuncoes.StrZero(edtPROCURA.Text,7)+'%') + ' order by CLI_NMCLIE');
                   Prepare;
                   Open;
              End;
         End;
         //
         If (rbNOME.Checked = True) Then
         begin
              // Procura pelo nome
              With qryClientes do
              begin
                   SQL.Clear;
                   Close;
                   Sql.add('Select CLI_CDCLIE, CLI_NMCLIE from SACCLI where CLI_NMCLIE like ' + quotedstr(edtPROCURA.Text+'%') + ' order by CLI_NMCLIE');
                   Prepare;
                   Open;
              End;
        End;
     End
     Else
     Begin
          With qryClientes do
          begin
                sql.clear;
                Close;
                sql.add('Select CLI_CDCLIE, CLI_NMCLIE from SACCLI order by CLI_NMCLIE');
                Prepare;
                open;
          End;
     End;
end;

procedure TfrmLocalizarCliente.BtnCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmLocalizarCliente.BtnConfirmarClick(Sender: TObject);
Var
    M_CDCLIE : String;
begin
   Try
     M_CDCLIE := qryClientes.fieldByName('CLI_CDCLIE').AsString;
     //
     uImpLotes2.W_CDCLIE := M_CDCLIE;
     // Fechar janela de localizar
     close;
   Except
        ShowMessage('Erro ao selecionar produto...');
        Close;
   End;
end;

procedure TfrmLocalizarCliente.edtPROCURAKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If (Key = VK_UP) and not(qryClienteS.Bof) Then
        qryClienteS.Prior;
     If (Key = VK_DOWN) and not(qryClienteS.Eof) Then
        qryClienteS.Next;
end;

procedure TfrmLocalizarCliente.GridDadosKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #13) Then
     Begin
          Key := #0;
          BtnConfirmarClick(Sender);
     End;
end;

procedure TfrmLocalizarCliente.GridDadosDblClick(Sender: TObject);
begin
     BtnConfirmarClick(Sender);
end;

procedure TfrmLocalizarCliente.rdCODIGOClick(Sender: TObject);
begin
      edtPROCURA.SetFocus;
end;

procedure TfrmLocalizarCliente.rbNOMEClick(Sender: TObject);
begin
      edtPROCURA.SetFocus;
end;

procedure TfrmLocalizarCliente.edtPROCURAKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #27 then Close;
    if key = #13 then btnconfirmar.Click;
    if key = #13 then btncancelar.Click;
end;

end.
