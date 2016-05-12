unit uQuant;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, Mask, ToolEdit, CurrEdit, Printers,
  DB, DBTables, DBCtrls, Spin, CJVBarCode, CJVDBBarcode, QuickRpt, QRCtrls,
  CJVQRBarCode;

type
  TfrmConfQuant = class(TForm)
    Panel2: TPanel;
    sbReceber: TSpeedButton;
    spFechar: TSpeedButton;
    Panel1: TPanel;
    edtQTETIQ: TCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtLINENT: TEdit;
    edtCOLENT: TEdit;
    qryEtiquetas: TQuery;
    qryEtiquetasEQT_CDPROD: TStringField;
    qryEtiquetasEQT_NMPROD: TStringField;
    qryEtiquetasEQT_VLVEND: TFloatField;
    DBText1: TDBText;
    dsProduto: TDataSource;
    sedQTCOLU: TSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    edtPOSICAO: TSpinEdit;
    codBarras: TCJVQRBarCode;
    dsEtiquetas: TDataSource;
    Image1: TImage;
    dsParametros: TDataSource;
    procedure spFecharClick(Sender: TObject);
    procedure sbReceberClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtLINENTKeyPress(Sender: TObject; var Key: Char);
    procedure edtCOLENTKeyPress(Sender: TObject; var Key: Char);
    procedure edtPOSICAOChange(Sender: TObject);
    procedure edtQTETIQKeyPress(Sender: TObject; var Key: Char);
    procedure edtPOSICAOKeyPress(Sender: TObject; var Key: Char);
    procedure sedQTCOLUChange(Sender: TObject);
    procedure sedQTCOLUExit(Sender: TObject);
    procedure edtPOSICAOEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
     Procedure CARREGAR_DADOS;
     Procedure CARREGAR_DADOS_02;
     Procedure IMPRIMIR_ETIQUETAS;
     Procedure IMPRIMIR_ETIQUETAS_02;
     function MMtoPixelX (MM : Integer) : Longint;
     function MMtoPixelY (MM : Integer) : Longint;
     Procedure INCLUIR_REG_BRANCOS;
     Procedure IMAGEM;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfQuant: TfrmConfQuant;
  M_LININI, M_CONINI, W_QTREGI : Integer;
  M_CDPROD , M_NMPROD : String;
  M_VLVEND : Real;
  M_MAXIMO : Integer;

implementation

uses uFuncoes, uRelEtiqueta, udmInfoModa;

{$R *.dfm}

procedure TfrmConfQuant.spFecharClick(Sender: TObject);
begin
     Close;

end;

procedure TfrmConfQuant.sbReceberClick(Sender: TObject);
begin
 If uFuncoes.Empty(edtQTETIQ.Text) Then
 Begin
      ShowMessage('Digite a quantidade de etiquetas!!!');
      edtQTETIQ.SetFocus;
      Exit; 
 End;
 //
 If (edtQTETIQ.Value > 0) Then
 begin
     //
     Application.CreateForm(TfrmRelEtiqueta, frmRelEtiqueta);
     Try
        sbReceber.Enabled := False;
        //
        CARREGAR_DADOS_02;
        //
        With frmRelEtiqueta.qryEtiquetas do
        begin
                SQL.Clear;
                Close;
                SQL.Add('Select * from "SACEQT.DB"');
                //SQL.Add('Where (EQT_CDPROD=:pCDPROD)');
                //
                {ParamByName('pCDPROD').AsString :=
                   dmInfoModa.qryProduto.FieldByName('PRO_CDPROD').AsString;}
                //
                Prepare;
                Open;
        End;
        //
        //frmRelEtiqueta.Barras.Texto := dmInfoModa.qryProduto.FieldByName('PRO_CDPROD').AsString;
        frmRelEtiqueta.qrEtiquetas.Preview ;
    Finally
        frmRelEtiqueta.Free;
        sbReceber.Enabled :=  True;
        // Fecha janela
        Close;
    End;
  End
  Else
  begin
  End;
end;

procedure TfrmConfQuant.CARREGAR_DADOS;
Var
   M_CONTAD : Integer;
   M_QTETIQ : Real;
begin
     M_CONTAD := 1;
     M_QTETIQ := edtQTETIQ.Value;
     //
     If (dmInfoModa.tbEtiquetas.Active = False) Then
         dmInfoModa.tbEtiquetas.Open;
     //
     If (dmInfoModa.tbEtiquetas.RecordCount > 0) Then
         uFuncoes.EsvaziaTabela(dmInfoModa.tbEtiquetas);
     //
     //
     M_CDPROD  := dmInfoModa.qryProduto.FieldByName('PRO_CDPROD').AsString;
     M_NMPROD  := dmInfoModa.qryProduto.FieldByName('PRO_NMPROD').AsString;
     M_VLVEND  := dmInfoModa.qryProduto.FieldByName('PRO_VLVEND').AsFloat;
     //
     While (M_CONTAD <= M_QTETIQ) DO
     begin
          dmInfoModa.tbEtiquetas.Append;
          dmInfoModa.tbEtiquetas.FieldByName('EQT_CDPROD').AsString := M_CDPROD;
          dmInfoModa.tbEtiquetas.FieldByName('EQT_NMPROD').AsString := M_NMPROD;
          dmInfoModa.tbEtiquetas.FieldByName('EQT_VLVEND').AsFloat  := M_VLVEND;
          // Grava
          dmInfoModa.tbEtiquetas.Post;
          //
          M_CONTAD := M_CONTAD+1;
     End;
     //
     dmInfoModa.tbEtiquetas.Close;
end;

procedure TfrmConfQuant.FormActivate(Sender: TObject);
begin
     If (dmInfoModa.tbParametros.Active = False) Then
          dmInfoModa.tbParametros.Open;
     //
     If (dmInfoModa.tbParametros.FieldByName('PAR_TOETIQ').AsFloat >= M_MAXIMO) Then
     Begin
          dmInfoModa.tbParametros.Edit;
          dmInfoModa.tbParametros.FieldByName('PAR_TOETIQ').AsFloat :=
            dmInfoModa.tbParametros.FieldByName('PAR_TOETIQ').AsFloat-M_MAXIMO;
          dmInfoModa.tbParametros.Post;
     End;

     edtQTETIQ.Value := 0;
     //
    edtLINENT.Text :='1';
    edtCOLENT.Text :='1';
    //
    codBarras.Texto := dmInfoModa.qryProduto.FieldByName('PRO_CDBARR').AsString;
    //
    Image1.Canvas.Draw(0,0,codBarras.Picture.Bitmap);
end;

procedure TfrmConfQuant.IMPRIMIR_ETIQUETAS;
Var
   M_LINENT, M_COLENT : String;
   SALTALINHA, TAMLIN , I ,M_CONTAD, M_POSIMP : Integer;
   M_COLUNA : array[1..4] of integer;
   M_LINHA  : array[1..20] of integer;
   M_LICONT : integer;
begin
     //M_LININI := 300;    // Linha inicial da p�gina
     M_LININI := MMtoPixelY(2);
     M_CONINI := 300;    // Coluna inicial da p�gina
     //
     M_LINENT := edtLINENT.Text;
     M_COLENT := edtCOLENT.Text;
     //
     //M_LINHA  := M_LININI * StrtoInt(M_LINENT);
     //
     M_LINHA[1] := MMtoPixelX(20);
     M_LINHA[2] := M_LINHA[1]+300;
     M_LINHA[3] := M_LINHA[2]+300;
     M_LINHA[4] := M_LINHA[3]+300;
     M_LINHA[5] := M_LINHA[4]+300;
     //
     M_LINHA[6] := M_LINHA[5]+300;
     M_LINHA[7] := M_LINHA[6]+300;
     M_LINHA[8] := M_LINHA[7]+300;
     M_LINHA[9] := M_LINHA[8]+300;
     M_LINHA[10] := M_LINHA[9]+300;
     //
     M_LINHA[11] := M_LINHA[10]+300;
     M_LINHA[12] := M_LINHA[11]+300;
     M_LINHA[13] := M_LINHA[12]+300;
     M_LINHA[14] := M_LINHA[13]+300;
     M_LINHA[15] := M_LINHA[14]+300;
     //
     M_LINHA[16] := M_LINHA[15]+300;
     M_LINHA[17] := M_LINHA[16]+300;
     M_LINHA[18] := M_LINHA[17]+300;
     M_LINHA[19] := M_LINHA[18]+300;
     M_LINHA[20] := M_LINHA[19]+300;
     //
     M_COLUNA[1] := MMtoPixelY(10); // 10 mil�metros
     M_COLUNA[2] := MMtoPixelY(58); // 58 mil�metros
     M_COLUNA[3] := MMtoPixelY(106); // 106 mil�metros
     M_COLUNA[4] := MMtoPixelY(153); // 153 mil�metros
     //
     Printer.BeginDoc;
     Printer.Canvas.Font.Size := 6;
     //
     qryEtiquetas.First;
     //tamlin := 75;
     tamlin := 2;
      //
     M_POSIMP := strtoint(edtPOSICAO.text);
     M_CONTAD := 1;
     M_LICONT := StrtoInt(edtLINENT.Text);
     //
     While (M_CONTAD <= edtQTETIQ.Value) do
     begin
          //
          for i:=strtoint(m_colent) to 4 do
              begin
                 inc(m_posimp);
                 Printer.Canvas.Font.Size := 8;
                 Printer.Canvas.TextOut(M_COLUNA[i], M_LINHA[M_LICONT] , M_CDPROD);
                 if ((i+M_contad) > edtqtetiq.Value) then
                     break;
              end;

          //M_LINHA := M_LINHA + tamlin ;
          for i:=strtoint(m_colent) to 4 do
              begin
                 Printer.Canvas.Font.Size := 6;
                 Printer.Canvas.TextOut(M_COLUNA[i],M_LINHA[M_LICONT]+50 ,uFuncoes.Padl(M_NMPROD,35));
                 if ((i+M_contad) > edtqtetiq.Value) then
                     break;
              end;
          //M_LINHA := M_LINHA + tamlin ;
          for i:=strtoint(m_colent) to 4 do
              begin
                Printer.Canvas.Font.Size := 8;
                Printer.Canvas.TextOut(M_COLUNA[i], M_LINHA[M_LICONT]+100 ,'R$ '+FormatFloat('###,##0.#0',M_VLVEND));
                if ((i+M_contad) > edtqtetiq.Value) then
                    break;
              end;

          //
          M_CONTAD := M_CONTAD+(5-strtoint(m_colent));
          M_COLENT := '1';
          // linha atual mais 1.
          M_LICONT := M_LICONT+1;
          //
          if (m_posimp > 80) then
              Begin
                 //M_LINHA  := M_LININI * StrtoInt(M_LINENT);
                 M_POSIMP := 1;
                 // Nova pagina
                 Printer.NewPage;
              End;
     end;
     // Finaliza a Impress�o
     Printer.EndDoc;
     //
     ShowMessage('Aguarde Impress�o...');
end;

procedure TfrmConfQuant.edtLINENTKeyPress(Sender: TObject; var Key: Char);
begin
   If not( key in['0'..'9',#8] ) then
     key:=#0;
end;

procedure TfrmConfQuant.edtCOLENTKeyPress(Sender: TObject; var Key: Char);
begin
   If not( key in['0'..'9',#8,#13] ) then
     key:=#0;
   //
     If (Key = #13) Then
     begin
          Key := #0;
          sbReceberClick(Sender);
     End;
                         
end;

procedure TfrmConfQuant.IMPRIMIR_ETIQUETAS_02;
Var
   M_LINENT, M_COLENT : String;
   SALTALINHA, TAMLIN , I ,M_CONTAD, M_POSIMP : Integer;
   M_COLUNA : array[1..3] of integer;
   M_LINHA  : array[1..10] of integer;
   M_LICONT : integer;
begin
     M_LININI := 550;    // Linha inicial da p�gina
     M_CONINI := 200;    // Coluna inicial da p�gina
     //
     M_LINENT := edtLINENT.Text;
     M_COLENT := edtCOLENT.Text;
     //
     //M_LINHA  := M_LININI * StrtoInt(M_LINENT);
     // Defini as coodernadas das linhas
     M_LINHA[1] := MMtoPixelX(25);
     M_LINHA[2] := M_LINHA[1]+300;
     M_LINHA[3] := M_LINHA[2]+300;
     M_LINHA[4] := M_LINHA[3]+300;
     M_LINHA[5] := M_LINHA[4]+300;
     //
     M_LINHA[6]  := M_LINHA[5]+300;
     M_LINHA[7]  := M_LINHA[6]+300;
     M_LINHA[8]  := M_LINHA[7]+300;
     M_LINHA[9]  := M_LINHA[8]+300;
     M_LINHA[10] := M_LINHA[9]+300;
     // Defini as coodernadas das colunas
     M_COLUNA[1] := MMtoPixelY(7);
     M_COLUNA[2] := MMtoPixelY(75);
     M_COLUNA[3] := MMtoPixelY(145);
     //
     Printer.BeginDoc;
     Printer.Canvas.Font.Size := 8;
     //
     qryEtiquetas.First;
     tamlin := 75;
     //
     M_CONTAD := 1;
     M_POSIMP := strtoint(edtPOSICAO.text);
     M_LICONT := StrtoInt(edtLINENT.Text);
     //
     //Printer.Canvas.TextOut(M_COLUNA[StrtoInt(edtLINENT.Text)], M_LINHA , ' ');
     //M_LINHA := M_LINHA + tamlin ;
     //
     While (M_CONTAD <= edtQTETIQ.Value) do
     begin
          //
          for i:=strtoint(m_colent) to 3 do
              begin
                 inc(m_posimp);
                 Printer.Canvas.TextOut(M_COLUNA[i], M_LINHA[M_LICONT] ,M_CDPROD);
                 if ((i+M_contad) > edtqtetiq.Value) then
                     break;
              end;

          //M_LINHA := M_LINHA + tamlin ;
          for i:=strtoint(m_colent) to 3 do
              begin
                 Printer.Canvas.TextOut(M_COLUNA[i], M_LINHA[M_LICONT]+40,uFuncoes.Padl(M_NMPROD,35));
                 if ((i+M_contad) > edtqtetiq.Value) then
                     break;
              end;
          //M_LINHA := M_LINHA + tamlin ;
          for i:=strtoint(m_colent) to 3 do
              begin
                Printer.Canvas.TextOut(M_COLUNA[i], M_LINHA[M_LICONT]+80,'R$ '+FormatFloat('###,##0.#0',M_VLVEND));
                if ((i+M_contad) > edtqtetiq.Value) then
                    break;
              end;

          // salta de uma etiqueta para outra

          {saltalinha := 0;
          while (saltalinha < 7 ) do
            begin
              M_LINHA := M_LINHA + tamlin ;
              Printer.Canvas.TextOut(M_COLUNA[i], M_LINHA ,' ');
              inc(saltalinha);
            end;}


          M_CONTAD := M_CONTAD+(4-strtoint(m_colent));
          M_COLENT := '1';
          // linha atual mais 1.
          M_LICONT := M_LICONT+1;
          //
          if (m_posimp > 30) then
              Begin
                 //M_LINHA  := M_LININI * StrtoInt(M_LINENT);
                 M_POSIMP := 1;
                 // Nova pagina
                 Printer.NewPage;
              End;

     end;
     // Finaliza a Impress�o
     Printer.EndDoc;
     //
     ShowMessage('Aguarde Impress�o...');
end;

procedure TfrmConfQuant.edtPOSICAOChange(Sender: TObject);
Var
    W_LINHA, W_COLUNA : Real;
begin
     If not uFuncoes.Empty(edtPOSICAO.Text) Then
     begin
       If (sedQTCOLU.Value = 4) Then
       begin
         W_LINHA  := Int(edtPOSICAO.Value/4)+1;
         W_COLUNA := Int(edtPOSICAO.Value)-(Int(edtPOSICAO.Value/4)*4);
         //
         If (W_COLUNA = 0) Then
         begin
             edtCOLENT.Text := '4';
             edtLINENT.Text := FloattoStr(W_LINHA-1);
         End
         Else
         begin
             edtCOLENT.Text := FloattoStr(Int(W_COLUNA));
             edtLINENT.Text := FloattoStr(W_LINHA);
         End;
      End;
      //
       If (sedQTCOLU.Value = 3) Then
       begin
         If (edtPOSICAO.Value/3=0) Then
            W_LINHA  := Int(edtPOSICAO.Value/3)
         Else
            W_LINHA  := Int(edtPOSICAO.Value/3)+1;
         //
         W_COLUNA := Int(edtPOSICAO.Value)-(Int(edtPOSICAO.Value/3)*3);
         //
         If (W_COLUNA = 0) Then
         begin
             edtCOLENT.Text := '3';
             edtLINENT.Text := FloattoStr(Int(W_LINHA-1));
         End
         Else
         begin
             edtCOLENT.Text := FloattoStr(Int(W_COLUNA));
             edtLINENT.Text := FloattoStr(W_LINHA);
         End;
         //
       End;
     End
     else
     begin
         edtLINENT.Text := '1';
         edtCOLENT.Text := '1';
     End;

end;

procedure TfrmConfQuant.edtQTETIQKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #27] ) then
          key:=#0;
     //
     If (Key = #27) Then
       Close;   
end;

procedure TfrmConfQuant.edtPOSICAOKeyPress(Sender: TObject; var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
          key:=#0;
     //
     If (Key = #13) Then
     begin
          Key := #0;
          sbReceberClick(Sender);
     End;
end;

procedure TfrmConfQuant.sedQTCOLUChange(Sender: TObject);
begin
   If not uFuncoes.Empty(sedQTCOLU.Text) Then
   begin
     If (sedQTCOLU.Value >= 3) or (sedQTCOLU.Value <= 4) Then
     begin
         //
         If (sedQTCOLU.Value = 3) Then
         begin
            edtPOSICAO.MaxValue := 30;
            edtPOSICAO.Value    := 1;
         End;
         //
         If (sedQTCOLU.Value = 4) Then
         begin
            edtPOSICAO.MaxValue := 80;
            edtPOSICAO.Value    := 1;
         End;
    End;
  End;

end;

Procedure TfrmConfQuant.sedQTCOLUExit(Sender: TObject);
begin
     If uFuncoes.Empty(sedQTCOLU.Text) Then
       sedQTCOLU.Value := 4;
end;

procedure TfrmConfQuant.edtPOSICAOEnter(Sender: TObject);
begin
     If uFuncoes.Empty(edtQTETIQ.Text) or (edtQTETIQ.Value = 0)  Then
        edtQTETIQ.SetFocus;
end;

function TfrmConfQuant.MMtoPixelX (MM : Integer) : Longint;
var
mmPointX : Real;
PageSize, OffSetUL : TPoint;
begin
mmPointX := Printer.PageWidth / GetDeviceCaps(Printer.Handle,HORZSIZE);
Escape (Printer.Handle,GETPRINTINGOFFSET,0,nil,@OffSetUL);
Escape (Printer.Handle,GETPHYSPAGESIZE,0,nil,@PageSize);
if MM > 0 then
Result := round ((MM * mmPointX) - OffSetUL.X)
else
Result := round (MM * mmPointX);
end;


function TfrmConfQuant.MMtoPixelY(MM: Integer): Longint;
var
mmPointY : Real;
PageSize, OffSetUL : TPoint;
begin
mmPointY := Printer.PageHeight /
GetDeviceCaps(Printer.Handle,VERTSIZE);
Escape (Printer.Handle,GETPRINTINGOFFSET,0,nil,@OffSetUL);
Escape (Printer.Handle,GETPHYSPAGESIZE,0,nil,@PageSize);
if MM > 0 then
Result := round ((MM * mmPointY) - OffSetUL.Y)
else
Result := round (MM * mmPointY);
end;

procedure TfrmConfQuant.CARREGAR_DADOS_02;
Var
   M_CONTAD, M_TOREGI : Integer;
   M_QTETIQ : Real;
   M_IMGBAR : TImage;
begin
     M_CONTAD := 1;
     M_QTETIQ := edtQTETIQ.Value;
     M_TOREGI := dmInfoModa.tbParametros.FieldByName('PAR_TOETIQ').AsInteger;
     W_QTREGI := 1;
     //
     If (dmInfoModa.tbEtiquetas.Active = False) Then
         dmInfoModa.tbEtiquetas.Open;
     //
     If (dmInfoModa.tbEtiquetas.RecordCount > 0) Then
         uFuncoes.EsvaziaTabela(dmInfoModa.tbEtiquetas);
     //
     If (dmInfoModa.tbParametros.FieldByName('PAR_TOETIQ').AsInteger > 0) Then
      //And (dmInfoModa.tbParametros.FieldByName('PAR_TOETIQ').AsInteger < 50) Then
       While (W_QTREGI <= M_TOREGI) do
       Begin
            dmInfoModa.tbEtiquetas.Append;
            dmInfoModa.tbEtiquetas.Post;
            //
            W_QTREGI := W_QTREGI+1;
       End;
     //
     M_CDPROD  := dmInfoModa.qryProduto.FieldByName('PRO_CDPROD').AsString;
     M_NMPROD  := dmInfoModa.qryProduto.FieldByName('PRO_NMPROD').AsString;
     M_VLVEND  := dmInfoModa.qryProduto.FieldByName('PRO_VLVEND').AsFloat;
     //
     While (M_CONTAD <= M_QTETIQ) DO
     begin
          dmInfoModa.tbEtiquetas.Append;
          dmInfoModa.tbEtiquetas.FieldByName('EQT_CDPROD').AsString := M_CDPROD;
          dmInfoModa.tbEtiquetas.FieldByName('EQT_NMPROD').AsString := M_NMPROD;
          dmInfoModa.tbEtiquetas.FieldByName('EQT_VLVEND').AsFloat  := M_VLVEND;
          //
          dmInfoModa.tbEtiquetas.FieldByName('EQT_IMGBAR').Assign(Image1.Picture.Bitmap);
          // Grava
          dmInfoModa.tbEtiquetas.Post;
          //
          M_CONTAD := M_CONTAD+1;
     End;
     //
     dmInfoModa.tbEtiquetas.Close;
     //
     Image1.Free;
     //
     If (dmInfoModa.tbParametros.Active = False) Then
          dmInfoModa.tbParametros.Open;
     //
     dmInfoModa.tbParametros.Edit;
     dmInfoModa.tbParametros.FieldByName('PAR_TOETIQ').AsFloat :=
              dmInfoModa.tbParametros.FieldByName('PAR_TOETIQ').AsFloat+edtQTETIQ.Value;
     dmInfoModa.tbParametros.Post;
end;

procedure TfrmConfQuant.INCLUIR_REG_BRANCOS;
Var
    M_TOREGI : Integer;
begin
     W_QTREGI := StrtoInt(edtQTETIQ.Text);
     M_TOREGI := 1;
     //
     If (dmInfoModa.tbParametros.FieldByName('PAR_TOETIQ').AsInteger > 0) Then
       While (M_TOREGI<=W_QTREGI) do
       Begin
            dmInfoModa.tbEtiquetas.Append;
            dmInfoModa.tbEtiquetas.Post;
       End;
     //
     //dmInfoModa.tbEtiquetas.Close;
end;


procedure TfrmConfQuant.IMAGEM;
var
  bitmap : tbitmap;
  dc : hdc;
  desktoprect : trect;
  desktopcanvas : tcanvas;
  x, y : integer;
Begin
  dc:=getdc(getdesktopwindow);
 try
   desktopcanvas:=tcanvas.create;
   bitmap:=tbitmap.create;
   try
     bitmap.Width  := codBarras.Width;
     bitmap.Height := codBarras.Height;
     desktopcanvas.handle:=dc;
     desktoprect := rect(codBarras.Left,codBarras.Top,codBarras.Width,codBarras.Height);
     bitmap.canvas.CopyRect(desktoprect,desktopcanvas,desktoprect);
     Image1.Picture.Bitmap := bitmap;
   finally
   bitmap.free;
   desktopcanvas.free;
   end;
 finally
 releasedc(getdesktopwindow,dc);
 end;

end;

procedure TfrmConfQuant.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     dmInfoModa.tbEtiquetas.Close;
     //
     Action := caFree; 
end;

procedure TfrmConfQuant.FormCreate(Sender: TObject);
begin
     M_MAXIMO := 65;
end;

End.
