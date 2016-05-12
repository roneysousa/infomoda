unit uGerarLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids, DB, DBTables, RXDBCtrl,
  ImgList, Buttons;

type
  TfrmGerarLote = class(TForm)
    Panel2: TPanel;
    pnlSuperior: TPanel;
    Panel3: TPanel;
    pnlInferior: TPanel;
    Label1: TLabel;
    edtNRLOTE: TEdit;
    qryPedidos: TQuery;
    qryIncDados: TQuery;
    qryLimpar: TQuery;
    qryConsulta: TQuery;
    dsConsulta: TDataSource;
    qryCliente: TQuery;
    qryConsultaFPD_NRPEDI: TStringField;
    qryConsultaFPD_CDCLIE: TStringField;
    qryConsultaFPD_DTPEDI: TDateField;
    qryConsultaFPD_FLFECH: TBooleanField;
    qryConsultaFPD_NMCLIE: TStringField;
    GridPedidos: TRxDBGrid;
    ImageList1: TImageList;
    tbPedidoAbertos: TTable;
    tbPedidoAbertosFPD_NRPEDI: TStringField;
    tbPedidoAbertosFPD_CDCLIE: TStringField;
    tbPedidoAbertosFPD_DTPEDI: TDateField;
    tbPedidoAbertosFPD_FLFECH: TBooleanField;
    tbPedidoAbertosFPD_NMCLIE: TStringField;
    btFechar: TBitBtn;
    btVisualizar: TBitBtn;
    qryProdutosLote: TQuery;
    qryFecharPedido: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GridPedidosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridPedidosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridPedidosCellClick(Column: TColumn);
    procedure GridPedidosColEnter(Sender: TObject);
    procedure dsConsultaDataChange(Sender: TObject; Field: TField);
    procedure btFecharClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure GridPedidosKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerarLote: TfrmGerarLote;

implementation

uses uPrincipal, uFuncoes, udmInfoModa;

{$R *.dfm}

procedure TfrmGerarLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     qryConsulta.Close;
     tbPedidoAbertos.Close; 
     qryPedidos.Close;
     qryCliente.Close;
     //
     uFuncoes.Limpar_Status; 
     //
     Action := caFree;
end;

procedure TfrmGerarLote.FormCreate(Sender: TObject);
Var
   M_NRPEDI, M_CDCLIE : String;
   M_DTPEDI : Tdate;
begin
      //
      With qryLimpar do
      Begin
           SQL.Clear;
           Close;
           SQL.Add('Delete from SACFPD');
           ExecSQL;
           //
      End;
      //
      With qryPedidos do
      Begin
           Close;
           //
           ParamByName('pFLLOTE').AsString := 'A';
           //
           Prepare;
           Open;
           First;
      End;
      //
      While not (qryPedidos.Eof) do
      Begin
           M_NRPEDI := qryPedidos.FIELDBYNAME('PED_NRPEDI').AsString;
           M_CDCLIE := qryPedidos.FIELDBYNAME('PED_CDCLIE').AsString;
           M_DTPEDI := qryPedidos.FIELDBYNAME('PED_DTPEDI').AsDateTime;
           //
           With qryIncDados do
           begin
                SQL.Clear;
                Close;
                SQL.Add('INSERT INTO SACFPD (FPD_NRPEDI, FPD_CDCLIE, FPD_DTPEDI)');
                SQL.Add('VALUES (:pNRPEDI, :pCDCLIE, :pDTPEDI)');
                //
                ParamByName('pNRPEDI').AsString := M_NRPEDI;
                ParamByName('pCDCLIE').AsString := M_CDCLIE;
                ParamByName('pDTPEDI').AsDate   := M_DTPEDI;
                //
                ExecSQL;
           End;
           //
           qryPedidos.Next;
      End;
      //
      qryCliente.Open; 
      //
      {With qryConsulta do
      begin
           SQL.Clear;
           Close;
           SQL.Add('Select * from SACFPD order by FPD_NRPEDI');
           Prepare;
           Open;
      End;}
      //
      tbPedidoAbertos.Open;
      //
      If (dmInfoModa.tbParametros.Active = False) Then
         dmInfoModa.tbParametros.Open;
      //
      dmInfoModa.tbParametros.Edit;
      dmInfoModa.tbParametros.FieldByName('PAR_NRLOTE').AsFloat :=
        dmInfoModa.tbParametros.FieldByName('PAR_NRLOTE').AsFloat+1;
      edtNRLOTE.Text := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_NRLOTE').AsString,7);
      dmInfoModa.tbParametros.Cancel;
      //
end;

procedure TfrmGerarLote.GridPedidosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = 46) Then
        KEY := 0;
end;

procedure TfrmGerarLote.GridPedidosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  R: TRect;
begin
  {pinta checkbox}
  if Column.Field = tbPedidoAbertosFPD_FLFECH  then
  begin
    GridPedidos.Canvas.FillRect(Rect);
    ImageList1.Draw(GridPedidos.Canvas, Rect.Left + 10, Rect.Top + 1, 0);
    if tbPedidoAbertosFPD_FLFECH.AsBoolean then
      ImageList1.Draw(GridPedidos.Canvas, Rect.Left + 10, Rect.Top + 1, 2)
    else
      ImageList1.Draw(GridPedidos.Canvas, Rect.Left + 10, Rect.Top + 1, 1);
  end;
end;

procedure TfrmGerarLote.GridPedidosCellClick(Column: TColumn);
begin
  if Column.Field = tbPedidoAbertosFPD_FLFECH then
  begin
    tbPedidoAbertos.Edit;
    tbPedidoAbertosFPD_FLFECH.AsBoolean := not tbPedidoAbertosFPD_FLFECH.AsBoolean;
    tbPedidoAbertos.Post;
  end;
end;

procedure TfrmGerarLote.GridPedidosColEnter(Sender: TObject);
begin
  if GridPedidos.SelectedField <> tbPedidoAbertosFPD_FLFECH then
     GridPedidos.SelectedIndex := 3;
  //
  if GridPedidos.SelectedField = tbPedidoAbertosFPD_FLFECH then
    GridPedidos.Options := GridPedidos.Options - [dgEditing]
  else
    GridPedidos.Options := GridPedidos.Options + [dgEditing];
end;

procedure TfrmGerarLote.dsConsultaDataChange(Sender: TObject;
  Field: TField);
begin
     // barra de status
     frmPrincipal.Info.Panels[2].Text := ' Registro: ' + IntToStr(dsConsulta.DataSet.RecNo) +
                          ' de ' + IntToStr(dsConsulta.DataSet.RecordCount);
end;

procedure TfrmGerarLote.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmGerarLote.btVisualizarClick(Sender: TObject);
Var
   M_NRLOTE, W_NRPEDI, W_FLFECH  : String;
begin
    tbPedidoAbertos.DisableControls;
    tbPedidoAbertos.First;
    //
    W_FLFECH := 'N';
    //
    While not (tbPedidoAbertos.Eof) do
    Begin
        If (tbPedidoAbertos.FieldByName('FPD_FLFECH').AsBoolean = True) Then
           W_FLFECH := 'S';
        //
        tbPedidoAbertos.Next;
    End;
    //
    tbPedidoAbertos.EnableControls;
    //
    If (W_FLFECH = 'N') Then
    begin
         Application.MessageBox('Não há pedidos selecionado para fechamento!!!',
         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
         tbPedidoAbertos.First; 
         Exit;
    End;
    //
    If Application.MessageBox('Confirma fechamento de lote?',
         'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idNo then
         Exit;
    //
   Try
      If (dmInfoModa.tbParametros.Active = False) Then
         dmInfoModa.tbParametros.Open;
      //
      dmInfoModa.tbParametros.Edit;
      dmInfoModa.tbParametros.FieldByName('PAR_NRLOTE').AsFloat :=
        dmInfoModa.tbParametros.FieldByName('PAR_NRLOTE').AsFloat+1;
      dmInfoModa.tbParametros.Post;
      //
      M_NRLOTE := uFuncoes.StrZero(dmInfoModa.tbParametros.FieldByName('PAR_NRLOTE').AsString,7);
      //
      tbPedidoAbertos.DisableControls;
      tbPedidoAbertos.First;
      //
      While not (tbPedidoAbertos.Eof) do
      Begin
        If (tbPedidoAbertos.FieldByName('FPD_FLFECH').AsBoolean = True) Then
        begin
          W_NRPEDI := tbPedidoAbertos.FieldByName('FPD_NRPEDI').AsString;
          //
          With dmInfoModa.qryPedido do
          begin
               SQL.Clear;
               Close;
               SQL.Add('UPDATE SACPED SET PED_NRLOTE= :pNRLOTE');
               SQL.Add(', PED_FLLOTE=:pFLLOT2');
               SQL.Add('WHERE (PED_NRPEDI=:pNRPEDI) and (PED_FLLOTE=:pFLLOTE)');
               //
               ParamByName('pNRPEDI').AsString := W_NRPEDI;
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
               SQL.Add('WHERE (GTM_NRPEDI=:pNRPEDI) AND (GTM_FLSITU = :pFLSITU)');
               //
               ParamByName('pNRPEDI').AsString := W_NRPEDI;
               ParamByName('pNRLOTE').AsString := M_NRLOTE;
               ParamByName('pFLSITU').AsString := 'A';
               ParamByName('pFLSIT2').AsString := 'F';
               //
               ExecSQL;
          End;
          //
        End;
        // Proximo
        tbPedidoAbertos.Next;
      End;      //fim-do-enquanto
      //
      tbPedidoAbertos.EnableControls;
      //
      Application.MessageBox(PChar('Lote '+M_NRLOTE+' gerado com sucesso!!!'),
              'CONCLUIDO', MB_OK+MB_ICONINFORMATION);
      //
      Close;
   Except
      Application.MessageBox(PChar('Error ao tentar fechar lote!!!'),
              'ATENÇÃO', MB_OK+MB_ICONINFORMATION);
   End;
end;

procedure TfrmGerarLote.GridPedidosKeyPress(Sender: TObject;
  var Key: Char);
begin
     If (Key = #8) or (Key = #13) Then
     begin
          Key := #0;
          tbPedidoAbertos.Edit;
          tbPedidoAbertosFPD_FLFECH.AsBoolean := not tbPedidoAbertosFPD_FLFECH.AsBoolean;
          tbPedidoAbertos.Next;
     End;
end;

procedure TfrmGerarLote.FormActivate(Sender: TObject);
begin
     GridPedidos.SetFocus;
     GridPedidos.SelectedIndex := 3; 
end;

end.
