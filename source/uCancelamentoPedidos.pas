unit uCancelamentoPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, RXDBCtrl, DB, DBTables,
  Buttons, DBCtrls;

type
  TfrmCancelamentoPedidos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    edtNRPEDI: TEdit;
    GridDados: TRxDBGrid;
    qryPedidos: TQuery;
    dsPedidos: TDataSource;
    qryPedidosPED_NRPEDI: TStringField;
    qryPedidosPED_DTPEDI: TDateField;
    qryPedidosPED_HOPEDI: TStringField;
    qryPedidosPED_TOPEDI: TCurrencyField;
    qryPedidosPED_CDVEND: TStringField;
    qryPedidosPED_FLSITU: TStringField;
    qryPedidosPED_CDCLIE: TStringField;
    qryPedidosPED_NMCLIE: TStringField;
    qryPedidosPED_NMVEND: TStringField;
    qryCancelaPedido: TQuery;
    btFechar: TBitBtn;
    btCancelar: TBitBtn;
    DBText1: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure GridDadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNRPEDIChange(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    Procedure PEDIDOS;
    Procedure CANCELAR_PEDIDO;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCancelamentoPedidos: TfrmCancelamentoPedidos;

implementation

Uses udmInfoModa, uFuncoes;

{$R *.dfm}

procedure TfrmCancelamentoPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      qryPedidos.Close;
      //
      Action := caFree;
end;

procedure TfrmCancelamentoPedidos.PEDIDOS;
begin
    With qryPedidos do
    begin
         SQL.Clear;
         Close;
         SQL.Add('Select * from "SACPED.DB"  Where (PED_FLSITU= :pFLSITU) order by PED_DTPEDI');
         ParamByName('pFLSITU').AsString := 'A';
         Prepare;
         Open;
    End;
end;

procedure TfrmCancelamentoPedidos.FormActivate(Sender: TObject);
begin
     PEDIDOS;
end;

procedure TfrmCancelamentoPedidos.GridDadosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = 46) Then
        KEY := 0;
end;

procedure TfrmCancelamentoPedidos.edtNRPEDIChange(Sender: TObject);
Var
     M_NRPEDI : String;
begin
     If not uFuncoes.Empty(edtNRPEDI.Text) Then
     begin
          // Procura pelo codigo
          M_NRPEDI := uFuncoes.StrZero(edtNRPEDI.Text,7);
          With qryPedidos do
          begin
               SQL.Clear;
               Close;
               Sql.add('Select * from SACPED Where PED_NRPEDI='+ quotedstr(M_NRPEDI));
               Sql.add('And (PED_FLSITU = :pFLSITU)');
               Sql.add('order by PED_NRPEDI');
               //
               ParamByName('pFLSITU').AsString := 'A';
               //
               Prepare;
               Open;
          End;
     End
     Else
     begin
          PEDIDOS;
     End;
end;

procedure TfrmCancelamentoPedidos.CANCELAR_PEDIDO;
Var
   W_NRPEDI : String;
begin
  Try
     W_NRPEDI := qryPedidos.FieldByName('PED_NRPEDI').AsString;
     //   Cancela pedido
     With qryCancelaPedido do
     begin
          SQL.Clear;
          Close;
          Sql.add('Update SACPED SET PED_FLSITU = :pFLSITU, PED_NRLOTE = " "');
          Sql.add('Where (PED_NRPEDI = :pNRPEDI) And (PED_FLSITU = :pFLSIT2)');
          //
          ParamByName('pNRPEDI').AsString := W_NRPEDI;
          ParamByName('pFLSIT2').AsString := 'A';
          ParamByName('pFLSITU').AsString := 'C';
          //
          ExecSQL;
     End;
     //   Cancela item produto pedido SACITP
     With qryCancelaPedido do
     begin
          SQL.Clear;
          Close;
          Sql.add('Update SACITP SET ITP_FLSITU = :pFLSITU');
          Sql.add('Where (ITP_NRPEDI = :pNRPEDI) And (ITP_FLSITU = :pFLSIT2)');
          //
          ParamByName('pNRPEDI').AsString := W_NRPEDI;
          ParamByName('pFLSIT2').AsString := 'A';
          ParamByName('pFLSITU').AsString := 'C';
          //
          ExecSQL;
     End;
     //   Cancela item produto pedido SACGTM
     With qryCancelaPedido do
     begin
          SQL.Clear;
          Close;
          Sql.add('Update SACGTM SET GTM_FLCANC = :pFLSITU');
          Sql.add('Where (GTM_NRPEDI = :pNRPEDI) And (GTM_FLCANC = :pFLCANC)');
          //
          ParamByName('pNRPEDI').AsString := W_NRPEDI;
          ParamByName('pFLCANC').AsString := 'A';
          ParamByName('pFLSITU').AsString := 'C';
          //
          ExecSQL;
     End;
     //
     Application.MessageBox(PChar('Pedido Nº.'+W_NRPEDI+' cancelado!!!'),
            'ATENÇÃO', MB_OK+MB_ICONQUESTION+MB_APPLMODAL);
  Except
      ShowMessage('Error ao tentar cancelar pedido!!!');
  End;
end;

procedure TfrmCancelamentoPedidos.btFecharClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmCancelamentoPedidos.btCancelarClick(Sender: TObject);
begin
     If Application.MessageBox('Confirma cancelamento de pedido?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
     begin
           CANCELAR_PEDIDO;
           //
           PEDIDOS;
           //
           edtNRPEDI.Clear; 
     End;
end;

end.
