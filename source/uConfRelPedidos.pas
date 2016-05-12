unit uConfRelPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit, DB, DBTables, uPrincipal;

type
  TfrmConfRelatorio = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    btConfirma: TBitBtn;
    btFechar: TBitBtn;
    edtDTINIC: TDateEdit;
    edtDTFINA: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    qryQUANT: TQuery;
    qryQTJEANS: TQuery;
    qryProdutos: TQuery;
    qryProdutosPRO_CDPROD: TStringField;
    qryProdutosPRO_VLVEND: TFloatField;
    qryProdutosPRO_CDSECA: TStringField;
    procedure btFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btConfirmaClick(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTINICKeyPress(Sender: TObject; var Key: Char);
    procedure edtDTFINAKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    Procedure SECAO_JEANS;
    //Procedure SECAO_MALHA;
    { Public declarations }
  end;

var
  frmConfRelatorio: TfrmConfRelatorio;

implementation

uses uRelPedidosPeriodo, uFuncoes;

{$R *.dfm}

procedure TfrmConfRelatorio.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmConfRelatorio.FormCreate(Sender: TObject);
begin
 Try
    edtDTINIC.Date := Date();
    edtDTFINA.Date := Date();
    //
    With qryQUANT do
    Begin
         SQL.Clear;
         CLose;
         SQL.Add('Update SACPED SET PED_QTPEDI = (Select SUM(ITP_QTPROD) from SACITP Where SACPED.PED_NRPEDI = SACITP.ITP_NRPEDI)');
         SQL.Add('Where (SACPED.PED_QTPEDI=:pQTPEDI)');
         //
         ParamByName('pQTPEDI').AsFloat := 0;
         //
         ExecSQL;
    End;
 Except
     ShowMessage('Erro ao tentar atualizar quantidade!!!');
 End;
end;

procedure TfrmConfRelatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TfrmConfRelatorio.btConfirmaClick(Sender: TObject);
begin
     If not uFuncoes.Empty(edtDTINIC.Text)
        And not uFuncoes.Empty(edtDTFINA.Text) Then
     Begin
         Try
             Application.CreateForm(TfrmRelPedidosPediodo, frmRelPedidosPediodo);
             //
             With frmRelPedidosPediodo.qryPedidos do
             Begin
                  Close;
                  //
                  ParamByName('pDTINIC').AsDate := edtDTINIC.Date;
                  ParamByName('pDTFINA').AsDate := edtDTFINA.Date;
                  //
                  Prepare;
                  OPen;
             End;
             //
             frmRelPedidosPediodo.txtPeriodo.Caption :=
                 'PER�ODO : '+edtDTINIC.Text+ ' � '+ edtDTFINA.Text;
             frmRelPedidosPediodo.txtUSUARIO.Caption := 'USU�RIO : '+uPrincipal.M_NMUSUA; 
             frmRelPedidosPediodo.qrPedidos.Preview;
         Finally
             frmRelPedidosPediodo.Free;
         End;
     End;
end;

procedure TfrmConfRelatorio.SECAO_JEANS;
vAR
   M_NRPEDI, M_CDPROD : String;
   M_QTPECA : Double;
begin
     With frmRelPedidosPediodo.qryJeans do
     Begin
          SQL.Clear;
          Close;
          SQL.Add('Select * from SACPED Where (PED_DTPEDI>=:pDTINIC) AND (PED_DTPEDI>=:pDTFINA))');
          //
          ParamByName('pDTINIC').AsDate := edtDTINIC.Date;
          ParamByName('pDTFINA').AsDate := edtDTFINA.Date;
          //
          Prepare;
          OPen;
          First;
     End;
     //
     M_QTPECA := 0;
     //
     While not (frmRelPedidosPediodo.qryJeans.Eof) do
     Begin
         M_NRPEDI := frmRelPedidosPediodo.qryJeans.FieldByName('PED_NRPEDI').AsString;
         //
         With qryQTJEANS do
         Begin
            SQL.Clear;
            Close;
            SQL.Add('Select * from SACITP Where (ITP_NRPEDI=:pNRPEDI)');
            //
            ParamByName('pNRPEDI').AsString := M_NRPEDI;
            //
            Prepare;
            OPen;
            First;
         End;
         //
         While not (qryQTJEANS.Eof) do
         begin
             M_CDPROD := qryQTJEANS.FieldByName('ITP_CDPROD').AsString;
             //
             With qryProdutos do
             Begin
                SQL.Clear;
                Close;
                SQL.Add('Select * from SACPRO Where (PRO_CDPROD=:pCDPROD)');
                SQL.Add('and () ');
                //
                ParamByName('pCDPROD').AsString := M_CDPROD;
                //
                Prepare;
                OPen;
             End;
            //
            If (qryProdutos.RecordCount > 0) Then
            Begin

            End;
            //
            qryQTJEANS.Next;
         End;
         //
         frmRelPedidosPediodo.qryJeans.Next;
     End;
end;

procedure TfrmConfRelatorio.edtDTINICExit(Sender: TObject);
begin
     try
        StrToDate(edtDTINIC.Text);
     except
        on EConvertError do
        begin
             ShowMessage('Data Inv�lida!');
             edtDTINIC.SetFocus; 
        End;
     end;
end;

procedure TfrmConfRelatorio.edtDTINICKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #13) Then
     begin
          key := #0;
          edtDTFINA.SetFocus;
     End;
end;

procedure TfrmConfRelatorio.edtDTFINAKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (key = #13) AND (edtDTFINA.Text <> '  /  /    ') Then
     begin
          key := #0;
          btConfirma.SetFocus;
     End;
end;

end.
