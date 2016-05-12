unit uFechamentoLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, CurrEdit, DB,
  DBTables, DBCtrls;

type
  TfrmFechamentoLote = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    btConfirma: TBitBtn;
    btCancela: TBitBtn;
    Label1: TLabel;
    edtNRLOTE: TCurrencyEdit;
    dsParametros: TDataSource;
    qryProdutosLote: TQuery;
    qryProdutos: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCancelaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFechamentoLote: TfrmFechamentoLote;
  M_NRLOTE : Real;

implementation

Uses udmInfoModa, uFuncoes;

{$R *.dfm}

procedure TfrmFechamentoLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      dmInfoModa.qryPedido.Close;
      // 
      Action := caFree;
end;

procedure TfrmFechamentoLote.btCancelaClick(Sender: TObject);
begin
     dmInfoModa.tbParametros.Cancel;
     //
     Close;
end;

procedure TfrmFechamentoLote.FormActivate(Sender: TObject);
begin
     If (dmInfoModa.tbParametros.Active = False) Then
         dmInfoModa.tbParametros.Open;
     //
         dmInfoModa.tbParametros.Edit;
         dmInfoModa.tbParametros.FieldByName('PAR_NRLOTE').AsFloat :=
            dmInfoModa.tbParametros.FieldByName('PAR_NRLOTE').AsFloat+1;
         M_NRLOTE := dmInfoModa.tbParametros.FieldByName('PAR_NRLOTE').AsFloat;
         //
         edtNRLOTE.Text := uFuncoes.StrZero(FloattoStr(M_NRLOTE),7);
end;

procedure TfrmFechamentoLote.btConfirmaClick(Sender: TObject);
Var
   M_CDPROD, M_NRLOTE : String;
   M_QTMINI : INTEGER;
   M_QTPROD : Double;
begin
     With dmInfoModa.qryPedido do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Select * from SACPED Where PED_FLLOTE="A"');
          Prepare;
          Open;
     End;
     //
     If (dmInfoModa.qryPedido.RecordCount = 0) Then
     Begin
          Application.MessageBox('Não há pedidos para fechamento de lote!!!',
            'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
          //
          {If (dsParametros.State = dsEdit) Then
             dmInfoModa.tbParametros.Cancel;  }
           dmInfoModa.tbParametros.Cancel;
          //
          Close;
          Exit;
     End;
     //
     Try
         M_QTMINI := dmInfoModa.tbParametros.FieldByName('PAR_QTMINI').AsInteger;
         M_NRLOTE := uFuncoes.StrZero(edtNRLOTE.Text,7);
         dmInfoModa.tbParametros.Post;
          //
          With dmInfoModa.qryPedido do
          begin
               SQL.Clear;
               Close;
               SQL.Add('UPDATE SACPED SET PED_NRLOTE= :pNRLOTE');
               SQL.Add(', PED_FLLOTE=:pFLLOT2');
               SQL.Add('WHERE PED_FLLOTE=:pFLLOTE');
               //
               ParamByName('pNRLOTE').AsString := M_NRLOTE;
               ParamByName('pFLLOTE').AsString := 'A';
               ParamByName('pFLLOT2').AsString := 'F';
               //
               Execsql;
          End;
          //
          With qryProdutosLote do
          begin
               SQL.Clear;
               Close;
               SQL.Add('UPDATE SACGTM SET GTM_NRLOTE= :pNRLOTE');
               SQL.Add(', GTM_FLSITU = :pFLSIT2');
               SQL.Add('WHERE GTM_FLSITU = :pFLSITU');
               //
               ParamByName('pNRLOTE').AsString := M_NRLOTE;
               ParamByName('pFLSITU').AsString := 'A';
               ParamByName('pFLSIT2').AsString := 'F';
               //
               ExecSQL;
          End;
          //
          Application.MessageBox('Lote gerado com sucesso!!!',
                'CONCLUIDO', MB_OK+MB_ICONINFORMATION);
          //
          Close;
     Except
         Application.MessageBox('Error na geração de lote!!!',
            'Error', MB_OK+MB_ICONINFORMATION);
         //
         dmInfoModa.tbParametros.Cancel;
         Close;
     End;
end;

end.
