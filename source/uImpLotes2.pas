unit uImpLotes2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, DB;

type
  TfrmImpLotes2 = class(TForm)
    Panel2: TPanel;
    pnlSuperior: TPanel;
    lbl_NRLOTE: TLabel;
    edtNRLOTE: TEdit;
    pnlGrid: TPanel;
    GridPedidos: TDBGrid;
    pnlInferior: TPanel;
    btVisualizar: TBitBtn;
    btFechar: TBitBtn;
    dsPedidos: TDataSource;
    pnlItens: TPanel;
    dsItensPedidos: TDataSource;
    spLocalizar: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtNRLOTEChange(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure edtNRLOTEKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure spLocalizarClick(Sender: TObject);
    procedure edtNRLOTEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridPedidosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpLotes2: TfrmImpLotes2;
  M_NRLOTE, M_NRPEDI, W_CDCLIE :String;

implementation

Uses udmInfoModa, uFuncoes, uRelImpressaoPedido, uRelPedidos, uLocClientes;

{$R *.dfm}

procedure TfrmImpLotes2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmInfoModa.qryItensPedidos.Close;
     dmInfoModa.qryPedido.Close;
     //
     Action := caFree;
end;

procedure TfrmImpLotes2.edtNRLOTEChange(Sender: TObject);
begin
     If not uFuncoes.Empty(edtNRLOTE.Text) Then
     begin
          // Procura pelo codigo
          M_NRLOTE := uFuncoes.StrZero(edtNRLOTE.Text,7);
          M_NRPEDI := uFuncoes.StrZero(edtNRLOTE.Text,7);
          With dmInfoModa.qryPedido do
          begin
               SQL.Clear;
               Close;
               //Sql.add('Select * from SACPED Where PED_NRPEDI like' + quotedstr(M_NRPEDI+'%'));
               Sql.add('Select * from SACPED Where PED_NRPEDI='+ quotedstr(M_NRPEDI));
               Sql.add('And (PED_FLSITU = "A")');
               Sql.add('order by PED_NRPEDI');
               Prepare;
               Open;
          End;
     End
     Else
     begin
          With dmInfoModa.qryPedido do
          begin
               SQL.Clear;
               Close;
               Sql.add('Select * from SACPED');
               Prepare;
               Open;
          End;
     End;
end;

procedure TfrmImpLotes2.btFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmImpLotes2.btVisualizarClick(Sender: TObject);
Var
   M_VLCUST, M_VLUNIT, M_QTPROD, M_QUANTO, M_TOUNIT,M_TOGERA, W_QTDCOR : Real;
   M_NRITEM : Integer;
   M_CDPROD, W_CDPROD, M_SPACE, M_CDCLIE, M_CODCOR : String;
begin
  //
  Try
     Screen.Cursor := crHourGlass;
     btVisualizar.Enabled := False;
     Application.CreateForm(TfrmRelPedidos, frmRelPedidos);
     //
     M_VLCUST := 0;
     M_NRITEM := 1;
     M_NRPEDI := dmInfoModa.qryPedido.FieldByName('PED_NRPEDI').AsString;
     M_CDCLIE := dmInfoModa.qryPedido.FieldByName('PED_CDCLIE').AsString;
     M_CDPROD := '0';
     M_VLUNIT := 0;
     M_SPACE  := '    ';
     M_QUANTO := 0;
     M_TOUNIT := 0;
     M_TOGERA := 0;
     //
     M_QTPROD := 0;
     //
     With dmInfoModa.qryItens do
     begin
          SQL.Clear;
          Close;
          Sql.add('Select * from SACITP Where ITP_NRPEDI='+ quotedstr(M_NRPEDI));
          Prepare;
          Open;
          First;
     End;
     //
     While not (dmInfoModa.qryItens.Eof) do
     begin
          M_CDPROD := dmInfoModa.qryItens.FieldByName('ITP_CDPROD').AsString;
          M_VLUNIT := dmInfoModa.qryItens.FieldByName('ITP_VLUNIT').AsFloat;
          //
          With dmInfoModa.qryCores do
          begin
              SQL.Clear;
              Close;
              Sql.add('Select * from SACCOR order by COR_CODCOR');
              Prepare;
              Open;
              First;
         End;
         //
         While not (dmInfoModa.qryCores.Eof) do
         Begin
            With frmRelPedidos do
            begin
                 M_CODCOR := dmInfoModa.qryCores.FieldByName('COR_CODCOR').AsString;
                 //
                 With dmInfoModa.qryItensPedidos do
                 Begin
                      SQL.Clear;
                      Close;
                      Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                      Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                      Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                      Prepare;
                      Open;
                  End;
                  //
                  If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                  begin
                      W_QTDCOR := 0;
                      // Imprime o código do produto
                      txtCDPROD.Lines.Add(Copy(M_CDPROD,3,11));
                      // Imprime o nome da cor
                      //txtCOR.Lines.Add(uFuncoes.Padl(dmInfoModa.qryCores.FieldByName ('COR_NOMCOR').AsString,8));
                      txtCOR.Lines.Add(dmInfoModa.qryCores.FieldByName ('COR_CODCOR').AsString);
                      // Valor unitario
                      txtVLUNIT.Lines.Add(FormatFloat('###,##0.#0',M_VLUNIT));
                      // Tamanho 34
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('34'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR34.Lines.Add(FormatFloat('###',M_QTPROD));
                           //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
                           //
                      End
                      Else
                          txtNR34.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 36
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('36') + ' OR GTM_TAMANH='+quotedstr('PP'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR36.Lines.Add(FormatFloat('###',M_QTPROD));
                           //txtCor.Lines.Add(uFuncoes.Padl(dmInfoModa.qryItensPedidos.FieldByName ('GTM_NOMCOR').AsString,3));
                           //
                      End
                      Else
                          txtNR36.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 38
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('38') + ' OR GTM_TAMANH='+quotedstr('P'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR38.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR38.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 40
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('40') + ' OR GTM_TAMANH='+quotedstr('M'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR40.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR40.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 42
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('42') + ' OR GTM_TAMANH='+quotedstr('G'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR42.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR42.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 44
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('44') + ' OR GTM_TAMANH='+quotedstr('GG'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR44.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR44.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 46
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('46'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR46.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR46.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 48
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('48'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR48.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR48.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      // Tamanho 50
                      With dmInfoModa.qryItensPedidos do
                      Begin
                          SQL.Clear;
                          Close;
                          Sql.add('Select * from SACGTM Where GTM_NRPEDI='+ quotedstr(M_NRPEDI));
                          Sql.add('And GTM_CDPROD='+quotedstr(M_CDPROD));
                          Sql.add('and GTM_CODCOR='+quotedstr(M_CODCOR));
                          Sql.add('and GTM_TAMANH='+quotedstr('50'));
                          Prepare;
                          Open;
                          First;
                      End;
                      //
                      M_QTPROD := 0;
                      //
                      While not (dmInfoModa.qryItensPedidos.Eof) do
                      begin
                           M_QTPROD := M_QTPROD+dmInfoModa.qryItensPedidos.FieldByName('GTM_QTPROD').AsFloat;
                           dmInfoModa.qryItensPedidos.Next;
                      End;
                      //
                      W_QTDCOR := W_QTDCOR + M_QTPROD;
                      //
                      If (dmInfoModa.qryItensPedidos.RecordCount > 0) Then
                      begin
                           //
                           txtNR50.Lines.Add(FormatFloat('###',M_QTPROD));
                           //
                      End
                      Else
                          txtNR50.Lines.Add(M_SPACE);
                      //
                      dmInfoModa.qryItensPedidos.Close;
                      //W_TOTCOR := 0;
                      txtQTPROD.Lines.Add(FormatFloat('###',W_QTDCOR));
                      txtTOTAL.Lines.Add(FormatFloat('###,###,##0.#0', M_VLUNIT*W_QTDCOR));
                      //
                      M_QUANTO := M_QUANTO+W_QTDCOR;
                      M_TOUNIT := M_TOUNIT+M_VLUNIT;
                      M_TOGERA := M_TOGERA+(M_VLUNIT*W_QTDCOR);
                 End;
                 //
                 txtTOQUAN.Caption := FormatFloat('###',M_QUANTO);
                 txtTOPREC.Caption := FormatFloat('###,##0.#0',M_TOUNIT);
                 txtTOTALGERAL.Caption := FormatFloat('###,###,##0.#0',M_TOGERA);
            End;     // fim-with-frmRelPedidos
             //
              dmInfoModa.qryCores.Next;      // próximo-registro
         End;   // fim-do-enquanto dmInfoModa.qryCores
      //
      dmInfoModa.qryItens.Next;
     End;   //fim-do-enquanto dmInfoModa.qryItens
     //
     With  frmRelPedidos do
     begin
          //
          With qryClientes Do
          Begin
               SQL.Clear;
               Close;
               SQL.Add('Select * from SACCLI Where (CLI_CDCLIE=:pCDCLIE)');
               ParamByName('pCDCLIE').AsString := M_CDCLIE;
               Prepare;
               OPen;
          End;
          //
          txtTOQUAN.Caption := FormatFloat('###,###,##0.#0',M_QUANTO);
          txtTOPREC.Caption := FormatFloat('###,###,##0.#0',M_TOUNIT);
          txtTOTALGERAL.Caption := FormatFloat('###,###,##0.#0',M_TOGERA);
          //
          txtNRPEDI.Caption := M_NRPEDI;
          Screen.Cursor := crDefault;
          qrRelPedidos.Preview;
     End;
     //
  Finally
     Screen.Cursor := crDefault;
     frmRelPedidos.Free;
     edtNRLOTE.Clear;
     edtNRLOTE.SetFocus;
     btVisualizar.Enabled := True;
  End;
  //
  Application.ProcessMessages;
end;

procedure TfrmImpLotes2.edtNRLOTEKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
          key:=#0;
     //
     If (Key = #13) and uFuncoes.Empty(edtNRLOTE.Text)  Then
     begin
          key:=#0;
          spLocalizarClick(Sender);
     End;
     //
     If (Key = #13) and not uFuncoes.Empty(edtNRLOTE.Text)  Then
     begin
          key:=#0;
          btVisualizar.SetFocus; 
          //
          {With dmInfoModa.qryItensPedidos do
          begin
               Close;
               ParamByName('pNRPEDI').AsString := M_NRPEDI;
               Prepare;
               Open;
          End;}
          //
     End;
end;

procedure TfrmImpLotes2.FormCreate(Sender: TObject);
begin
     With dmInfoModa.qryPedido do
     begin
          SQL.Clear;
          Close;
          //Sql.add('Select * from SACPED order by PED_NRPEDI');
          Sql.add('Select * from SACPED');
          Prepare;
          Open;
     End;
end;

procedure TfrmImpLotes2.spLocalizarClick(Sender: TObject);
begin
  Try
      W_CDCLIE := ' ';
      Application.CreateForm(TfrmLocalizarCliente, frmLocalizarCliente);
      frmLocalizarCliente.ShowModal;
  Finally
      frmLocalizarCliente.Free;
      If not uFuncoes.Empty(W_CDCLIE) Then
      Begin
          With dmInfoModa.qryPedido do
          begin
               SQL.Clear;
               Close;
               Sql.add('Select * from SACPED Where (PED_CDCLIE=:pCDCLIE)');
               Sql.add('And (PED_FLSITU = "A")');
               Sql.add('order by PED_NRPEDI');
               ParamByName('pCDCLIE').AsString := W_CDCLIE;
               Prepare;
               Open;
          End;
      End;
  End;
end;

procedure TfrmImpLotes2.edtNRLOTEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If (dmInfoModa.qryPedido.Active = True) Then
   Begin
     If (Key = VK_UP) and not(dmInfoModa.qryPedido.Bof) Then
        dmInfoModa.qryPedido.Prior;
     If (Key = VK_DOWN) and not(dmInfoModa.qryPedido.Eof) Then
        dmInfoModa.qryPedido.Next;
   End;
end;

procedure TfrmImpLotes2.GridPedidosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = 46) Then
        KEY := 0;
end;

end.

