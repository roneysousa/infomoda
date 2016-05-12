unit uImpMPS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Buttons, Mask, ToolEdit, DB,
  DBTables, Grids, DBGrids;

type
  TfrmImpMPS = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    edtCDPROD: TEdit;
    spLocalizar: TSpeedButton;
    lbl_NMPROD: TLabel;
    edtDTINIC: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtDTFINA: TDateEdit;
    qryLocProd: TQuery;
    GridQUANT: TDBGrid;
    qryPedidos: TQuery;
    qryItens: TQuery;
    qryCores: TQuery;
    qryLocItem: TQuery;
    qryIncluirDados: TQuery;
    qryProduto: TQuery;
    dsSemanas: TDataSource;
    qryProdutoMPS_NRPEDI: TStringField;
    qryProdutoMPS_CDPROD: TStringField;
    qryProdutoMPS_CODCOR: TStringField;
    qryProdutoMPS_CDTAMA: TStringField;
    qryProdutoMPS_PRIMSM: TFloatField;
    qryProdutoMPS_SEGUSM: TFloatField;
    qryProdutoMPS_TERCSM: TFloatField;
    qryProdutoMPS_QUARSM: TFloatField;
    btGerar: TBitBtn;
    qryLimparDB: TQuery;
    qryProdutoMPS_NOMCOR: TStringField;
    btFechar: TBitBtn;
    btVisualizar: TBitBtn;
    qryProdutoMPS_DESPRI: TStringField;
    qryProdutoMPS_DESSEG: TStringField;
    qryProdutoMPS_DESTER: TStringField;
    qryProdutoMPS_DESQUA: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtCDPRODKeyPress(Sender: TObject; var Key: Char);
    procedure spLocalizarClick(Sender: TObject);
    procedure edtCDPRODChange(Sender: TObject);
    procedure edtDTINICExit(Sender: TObject);
    procedure edtDTINICKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edtDTFINAEnter(Sender: TObject);
    procedure edtCDPRODExit(Sender: TObject);
    procedure btGerarClick(Sender: TObject);
    procedure btFecharClick(Sender: TObject);
    procedure btVisualizarClick(Sender: TObject);
    procedure qryProdutoCalcFields(DataSet: TDataSet);
    procedure GridQUANTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
     Procedure GERAR_DADOS;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImpMPS: TfrmImpMPS;

implementation

Uses uFuncoes, udmInfoModa, uLocProduto, uRelMPS, uPrincipal;

{$R *.dfm}

procedure TfrmImpMPS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure TfrmImpMPS.edtCDPRODKeyPress(Sender: TObject; var Key: Char);
begin
    If not( key in['0'..'9',#8, #13] ) then
      key:=#0;
    //
     If (Key = #13) and uFuncoes.Empty(edtCDPROD.Text) Then
     begin
          Key := #0;
          Try
                Application.CreateForm(TfrmLocProduto, frmLocProduto);
                frmLocProduto.M_NMFORM := 3;
                frmLocProduto.ShowModal;
          Finally
                frmLocProduto.Free;
                edtCDPROD.SetFocus; 
          End;
     End;
     //
     If (Key = #13) and not uFuncoes.Empty(edtCDPROD.Text) Then
     begin
          Key := #0;
          edtDTINIC.SetFocus; 
     End;
end;

procedure TfrmImpMPS.spLocalizarClick(Sender: TObject);
begin
     Try
          Application.CreateForm(TfrmLocProduto, frmLocProduto);
          frmLocProduto.M_NMFORM := 3;
          frmLocProduto.ShowModal;
     Finally
          frmLocProduto.Free;
          edtCDPROD.SetFocus; 
     End;
end;

procedure TfrmImpMPS.edtCDPRODChange(Sender: TObject);
begin
      If uFuncoes.Empty(edtCDPROD.Text) Then
      begin
         //
         qryProduto.Close;
         qryCores.Close;  
         //
         lbl_NMPROD.Caption := '.';
         edtDTINIC.Date := Date();
         edtDTFINA.Clear; 
      End;
end;

procedure TfrmImpMPS.edtDTINICExit(Sender: TObject);
begin
  try
      StrToDate(edtDTINIC.Text);
       If (edtDTINIC.Text <>'  /  /    ') Then
         edtDTFINA.Date := IncMonth(edtDTINIC.Date, 1)-1;
  Except
      on EConvertError do
      begin
          ShowMessage ('Data Inválida!');
          edtDTINIC.Date := Date();
          edtDTINIC.SetFocus;
          Exit; 
      End;
  end;
end;

procedure TfrmImpMPS.edtDTINICKeyPress(Sender: TObject; var Key: Char);
begin
     If (Key = #13) And not uFuncoes.Empty(edtDTINIC.Text)
       And (edtDTINIC.Text <>'  /  /    ') Then
     Begin
          Key := #0;
          btGerar.SetFocus;
     End;
end;

procedure TfrmImpMPS.FormCreate(Sender: TObject);
begin
     edtDTINIC.Date := Date();
end;

procedure TfrmImpMPS.edtDTFINAEnter(Sender: TObject);
begin
     edtDTINIC.SetFocus; 
end;

procedure TfrmImpMPS.edtCDPRODExit(Sender: TObject);
begin
    If not uFuncoes.Empty(edtCDPROD.Text) Then
    Begin
        edtCDPROD.Text := uFuncoes.StrZero(edtCDPROD.Text,13);
        With qryLocProd do
        Begin
             Close;
             //
             ParamByName('pCDBARR').AsString := edtCDPROD.Text;
             //
             Prepare;
             Open;
        End;
        //
        If (qryLocProd.RecordCount = 0) Then
        Begin
             ShowMessage('Código de produto não cadastrado.');
             edtCDPROD.SetFocus;
             edtCDPROD.Clear;
             Exit;
        End
        Else
            lbl_NMPROD.Caption := qryLocProd.FieldByName('PRO_NMPROD').AsString;
    End;
end;

procedure TfrmImpMPS.GERAR_DADOS;
Var
   M_NRPEDI, M_CDPROD, M_CODCOR, M_CDTAMA : String;
   M_DTINIC, M_DTFINA, M_DTPEDI : TDate;
   M_QTPROD : Double;
begin
     //
     M_DTINIC := edtDTINIC.Date;
     M_DTFINA := edtDTFINA.Date;
     // Código do produto
     M_CDPROD := edtCDPROD.Text;
     // Pedidos - Primeira semana
     With qryPedidos do
     begin
          Close;
          //
          ParamByName('pDTINIC').AsDate := M_DTINIC;
          ParamByName('pDTFINA').AsDate := StrtoDate('07/'+Copy(edtDTINIC.Text,4,7));
          //
          Prepare;
          Open;
          First;
     End;
     //
     While not (qryPedidos.Eof) Do
     Begin
          M_NRPEDI := qryPedidos.FieldByName('PED_NRPEDI').AsString;
          M_DTPEDI := qryPedidos.FieldByName('PED_DTPEDI').AsDateTime;
          //
          With qryItens do
          begin
               Close;
               //
               ParamByName('pNRPEDI').AsString := M_NRPEDI;
               ParamByName('pCDPROD').AsString := M_CDPROD;
               //
               Prepare;
               Open;
               First;
          End;
          //
          M_QTPROD := 0;
          If (qryItens.RecordCount > 0) Then
          Begin
            qryItens.First;
            While not (qryItens.Eof) do
            begin
               M_CODCOR := qryItens.FieldByName('GTM_CODCOR').AsString;
               M_CDTAMA := qryItens.FieldByName('GTM_CDTAMA').AsString;
               M_QTPROD := qryItens.FieldByName('GTM_QTPROD').AsFloat;
               //
               With qryLocItem do
               Begin
                    Close;
                    //
                    ParamByName('pCDPROD').AsString := M_CDPROD;
                    ParamByName('pCDTAMA').AsString := M_CDTAMA;
                    ParamByName('pCODCOR').AsString := M_CODCOR;
                    //
                    Prepare;
                    Open;
               End;
               //
               If (qryLocItem.RecordCount = 0) Then
               Begin
                   // Incluir
                   With qryIncluirDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('INSERT INTO SACMPS (MPS_NRPEDI, MPS_CDPROD, MPS_CODCOR,MPS_CDTAMA,MPS_PRIMSM)');
                        SQL.Add('VALUES (:pNRPEDI, :pCDPROD, :pCODCOR, :pCDTAMA, :pPRIMSM)');
                        //
                        ParamByName('pNRPEDI').AsString := M_NRPEDI;
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pPRIMSM').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;   // fim-with
               End
               Else   // Atualizar a quantidade
               Begin
                   // Atualizar
                   With qryIncluirDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('UPDATE SACMPS SET MPS_PRIMSM = MPS_PRIMSM + :pPRIMSM');
                        SQL.Add('Where (MPS_CDPROD = :pCDPROD) And (MPS_CODCOR = :pCODCOR)');
                        SQL.Add('And (MPS_CDTAMA = :pCDTAMA)');
                        //
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pPRIMSM').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;   // fim-with
               End; // fIM-Localiza
               // Proximo
               qryItens.Next;
             End;
              //
          End;
          //
          qryPedidos.Next;    // Proximo registro
     End;
     // Segunda semana
     With qryPedidos do
     begin
          Close;
          //
          ParamByName('pDTINIC').AsDate := StrtoDate('08/'+Copy(edtDTINIC.Text,4,7));
          ParamByName('pDTFINA').AsDate := StrtoDate('14/'+Copy(edtDTINIC.Text,4,7));
          //
          Prepare;
          Open;
          First;
     End;
     //
     While not (qryPedidos.Eof) Do
     Begin
          M_NRPEDI := qryPedidos.FieldByName('PED_NRPEDI').AsString;
          M_DTPEDI := qryPedidos.FieldByName('PED_DTPEDI').AsDateTime;
          //
          With qryItens do
          begin
               Close;
               //
               ParamByName('pNRPEDI').AsString := M_NRPEDI;
               ParamByName('pCDPROD').AsString := M_CDPROD;
               //
               Prepare;
               Open;
               First;
          End;
          //
          M_QTPROD := 0;
          If (qryItens.RecordCount > 0) Then
          Begin
            qryItens.First;
            While not (qryItens.Eof) do
            begin
               M_CODCOR := qryItens.FieldByName('GTM_CODCOR').AsString;
               M_CDTAMA := qryItens.FieldByName('GTM_CDTAMA').AsString;
               M_QTPROD := qryItens.FieldByName('GTM_QTPROD').AsFloat;
               //
               With qryLocItem do
               Begin
                    Close;
                    //
                    ParamByName('pCDPROD').AsString := M_CDPROD;
                    ParamByName('pCDTAMA').AsString := M_CDTAMA;
                    ParamByName('pCODCOR').AsString := M_CODCOR;
                    //
                    Prepare;
                    Open;
               End;
               //
               If (qryLocItem.RecordCount = 0) Then
               Begin
                   // Incluir
                   With qryIncluirDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('INSERT INTO SACMPS (MPS_NRPEDI, MPS_CDPROD, MPS_CODCOR,MPS_CDTAMA,MPS_SEGUSM)');
                        SQL.Add('VALUES (:pNRPEDI, :pCDPROD, :pCODCOR, :pCDTAMA, :pSEGUSM)');
                        //
                        ParamByName('pNRPEDI').AsString := M_NRPEDI;
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pSEGUSM').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;   // fim-with
               End
               Else   // Atualizar a quantidade
               Begin
                   // Atualizar
                   With qryIncluirDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('UPDATE SACMPS SET MPS_SEGUSM = MPS_SEGUSM + :pSEGUSM');
                        SQL.Add('Where (MPS_CDPROD = :pCDPROD) And (MPS_CODCOR = :pCODCOR)');
                        SQL.Add('And (MPS_CDTAMA = :pCDTAMA)');
                        //
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pSEGUSM').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;   // fim-with
               End; // fIM-Localiza
               // Proximo
               qryItens.Next;
             End;
              //
          End;
          //
          qryPedidos.Next;    // Proximo registro
     End;
     // Terceira Semana
     With qryPedidos do
     begin
          Close;
          //
          ParamByName('pDTINIC').AsDate := StrtoDate('15/'+Copy(edtDTINIC.Text,4,7));
          ParamByName('pDTFINA').AsDate := StrtoDate('21/'+Copy(edtDTINIC.Text,4,7));
          //
          Prepare;
          Open;
          First;
     End;
     //
     While not (qryPedidos.Eof) Do
     Begin
          M_NRPEDI := qryPedidos.FieldByName('PED_NRPEDI').AsString;
          M_DTPEDI := qryPedidos.FieldByName('PED_DTPEDI').AsDateTime;
          //
          With qryItens do
          begin
               Close;
               //
               ParamByName('pNRPEDI').AsString := M_NRPEDI;
               ParamByName('pCDPROD').AsString := M_CDPROD;
               //
               Prepare;
               Open;
               First;
          End;
          //
          M_QTPROD := 0;
          If (qryItens.RecordCount > 0) Then
          Begin
            qryItens.First;
            While not (qryItens.Eof) do
            begin
               M_CODCOR := qryItens.FieldByName('GTM_CODCOR').AsString;
               M_CDTAMA := qryItens.FieldByName('GTM_CDTAMA').AsString;
               M_QTPROD := qryItens.FieldByName('GTM_QTPROD').AsFloat;
               //
               With qryLocItem do
               Begin
                    Close;
                    //
                    ParamByName('pCDPROD').AsString := M_CDPROD;
                    ParamByName('pCDTAMA').AsString := M_CDTAMA;
                    ParamByName('pCODCOR').AsString := M_CODCOR;
                    //
                    Prepare;
                    Open;
               End;
               //
               If (qryLocItem.RecordCount = 0) Then
               Begin
                   // Incluir
                   With qryIncluirDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('INSERT INTO SACMPS (MPS_NRPEDI, MPS_CDPROD, MPS_CODCOR,MPS_CDTAMA,MPS_TERCSM)');
                        SQL.Add('VALUES (:pNRPEDI, :pCDPROD, :pCODCOR, :pCDTAMA, :pTERCSM)');
                        //
                        ParamByName('pNRPEDI').AsString := M_NRPEDI;
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pTERCSM').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;   // fim-with
               End
               Else   // Atualizar a quantidade
               Begin
                   // Atualizar
                   With qryIncluirDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('UPDATE SACMPS SET MPS_TERCSM = MPS_TERCSM + :pTERCSM');
                        SQL.Add('Where (MPS_CDPROD = :pCDPROD) And (MPS_CODCOR = :pCODCOR)');
                        SQL.Add('And (MPS_CDTAMA = :pCDTAMA)');
                        //
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pTERCSM').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;   // fim-with
               End; // fIM-Localiza
               // Proximo
               qryItens.Next;
             End;
              //
          End;
          //
          qryPedidos.Next;    // Proximo registro
     End;
     // Quarta Semana
     With qryPedidos do
     begin
          Close;
          //
          ParamByName('pDTINIC').AsDate := StrtoDate('22/'+Copy(edtDTINIC.Text,4,7));
          ParamByName('pDTFINA').AsDate := M_DTFINA;
          //
          Prepare;
          Open;
          First;
     End;
     //
     While not (qryPedidos.Eof) Do
     Begin
          M_NRPEDI := qryPedidos.FieldByName('PED_NRPEDI').AsString;
          M_DTPEDI := qryPedidos.FieldByName('PED_DTPEDI').AsDateTime;
          //
          With qryItens do
          begin
               Close;
               //
               ParamByName('pNRPEDI').AsString := M_NRPEDI;
               ParamByName('pCDPROD').AsString := M_CDPROD;
               //
               Prepare;
               Open;
               First;
          End;
          //
          M_QTPROD := 0;
          If (qryItens.RecordCount > 0) Then
          Begin
            qryItens.First;
            While not (qryItens.Eof) do
            begin
               M_CODCOR := qryItens.FieldByName('GTM_CODCOR').AsString;
               M_CDTAMA := qryItens.FieldByName('GTM_CDTAMA').AsString;
               M_QTPROD := qryItens.FieldByName('GTM_QTPROD').AsFloat;
               //
               With qryLocItem do
               Begin
                    Close;
                    //
                    ParamByName('pCDPROD').AsString := M_CDPROD;
                    ParamByName('pCDTAMA').AsString := M_CDTAMA;
                    ParamByName('pCODCOR').AsString := M_CODCOR;
                    //
                    Prepare;
                    Open;
               End;
               //
               If (qryLocItem.RecordCount = 0) Then
               Begin
                   // Incluir
                   With qryIncluirDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('INSERT INTO SACMPS (MPS_NRPEDI, MPS_CDPROD, MPS_CODCOR,MPS_CDTAMA, MPS_QUARSM)');
                        SQL.Add('VALUES (:pNRPEDI, :pCDPROD, :pCODCOR, :pCDTAMA, :pQUARSM)');
                        //
                        ParamByName('pNRPEDI').AsString := M_NRPEDI;
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pQUARSM').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;   // fim-with
               End
               Else   // Atualizar a quantidade
               Begin
                   // Atualizar
                   With qryIncluirDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('UPDATE SACMPS SET MPS_QUARSM = MPS_QUARSM + :pQUARSM');
                        SQL.Add('Where (MPS_CDPROD = :pCDPROD) And (MPS_CODCOR = :pCODCOR)');
                        SQL.Add('And (MPS_CDTAMA = :pCDTAMA)');
                        //
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pQUARSM').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;   // fim-with
               End; // fIM-Localiza
               // Proximo
               qryItens.Next;
             End;
              //
          End;
          //
          qryPedidos.Next;    // Proximo registro
     End;
{
     With qryPedidos do
     begin
          Close;
          //
          //
          Prepare;
          Open;
          First;
     End;
     //
     While not (qryPedidos.Eof) Do
     Begin
          M_NRPEDI := qryPedidos.FieldByName('PED_NRPEDI').AsString;
          M_DTPEDI := qryPedidos.FieldByName('PED_DTPEDI').AsDateTime;
          //
          With qryItens do
          begin
               Close;
               //
               ParamByName('pNRPEDI').AsString := M_NRPEDI;
               //
               Prepare;
               Open;
               First;
          End;
          //
          M_QTPROD := 0;
          If (qryItens.RecordCount > 0) Then
          Begin
            While not (qryItens.Eof) do
            begin
               M_CODCOR := qryItens.FieldByName('GTM_CODCOR').AsString;
               M_CDTAMA := qryItens.FieldByName('GTM_CDTAMA').AsString;
               M_QTPROD := qryItens.FieldByName('GTM_QTPROD').AsFloat;
               //
               With qryLocItem do
               Begin
                    Close;
                    //
                    ParamByName('pCDPROD').AsString := M_CDPROD;
                    ParamByName('pCDTAMA').AsString := M_CDTAMA;
                    ParamByName('pCODCOR').AsString := M_CODCOR;
                    //
                    Prepare;
                    Open;
               End;
               //
               If (qryLocItem.RecordCount = 0) Then
               Begin
                   // Incluir
                   With qryIncluirDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('INSERT INTO SACMPS (MPS_NRPEDI, MPS_CDPROD, MPS_CODCOR,MPS_CDTAMA,MPS_PRIMSM)');
                        SQL.Add('VALUES (:pNRPEDI, :pCDPROD, :pCODCOR, :pCDTAMA, :pPRIMSM)');
                        //
                        ParamByName('pNRPEDI').AsString := M_NRPEDI;
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pPRIMSM').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;   // fim-with
               End
               Else   // Atualizar a quantidade
               Begin
                   // Atualizar
                   With qryIncluirDados do
                   begin
                        SQL.Clear;
                        Close;
                        SQL.Add('UPDATE SACMPS SET MPS_PRIMSM = MPS_PRIMSM + :pPRIMSM');
                        SQL.Add('Where (MPS_CDPROD = :pCDPROD) And (MPS_CODCOR = :pCODCOR)');
                        SQL.Add('And (MPS_CDTAMA = :pCDTAMA)');
                        //
                        ParamByName('pCDPROD').AsString := M_CDPROD;
                        ParamByName('pCODCOR').AsString := M_CODCOR;
                        ParamByName('pCDTAMA').AsString := M_CDTAMA;
                        ParamByName('pPRIMSM').AsFloat  := M_QTPROD;
                        //
                        ExecSQL;
                   End;   // fim-with
               End; // fIM-Localiza
               // Proximo
               qryItens.Next;
             End;

              //
          End;
          //
          qryPedidos.Next;    // Proximo registro
     End;}
end;

procedure TfrmImpMPS.btGerarClick(Sender: TObject);
begin
     If uFuncoes.Empty(edtDTINIC.Text) Then
     Begin
          ShowMessage('Digite o código do produto.');
          edtDTINIC.SetFocus;
          Exit;
     End;
      //
   Try
    Try
      btGerar.Enabled := False;
      With qryLimparDB do
      Begin
           Close;
           //
           ParamByName('pCDPROD').AsString := uFuncoes.StrZero(edtCDPROD.Text,13);
           //
           ExecSQL;
      End;
      //
      GERAR_DADOS;
      //
      qryCores.Open;
      //
      With qryProduto do
      begin
           Close;
           //
           ParamByName('pCDPROD').AsString := uFuncoes.StrZero(edtCDPROD.Text,13);
           //
           Prepare;
           Open;
      End;
    Finally
      btGerar.Enabled := True;
    End;
   Except
        ShowMessage('Error ao tentar gerar consulta.');
   End;
end;

procedure TfrmImpMPS.btFecharClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmImpMPS.btVisualizarClick(Sender: TObject);
Var
    M_TOTPRI, M_TOTSEG, M_TOTERC, M_TOTQUA : Double;
begin
     If uFuncoes.Empty(edtDTINIC.Text) Then
     Begin
          ShowMessage('Digite o código do produto.');
          edtDTINIC.SetFocus;
          Exit;
     End;
     //
     If (qryProduto.Active = False) Then
     Begin
          ShowMessage('Não há dados para serem visualizados.');
          edtCDPROD.SetFocus;
          Exit;
     End;
     //
     Try
         btVisualizar.Enabled := False;
         M_TOTPRI := 0;
         M_TOTSEG := 0;
         M_TOTERC := 0;
         M_TOTQUA := 0;
         //
         Application.CreateForm(TfrmRelMPS, frmRelMPS);
         //
         qryProduto.DisableControls;
         qryProduto.First;
         While not (qryProduto.Eof) do
         Begin
              M_TOTPRI := M_TOTPRI+qryProduto.FieldByName('MPS_PRIMSM').AsFloat;
              M_TOTSEG := M_TOTSEG+qryProduto.FieldByName('MPS_SEGUSM').AsFloat;;
              M_TOTERC := M_TOTERC+qryProduto.FieldByName('MPS_TERCSM').AsFloat;;
              M_TOTQUA := M_TOTQUA+qryProduto.FieldByName('MPS_QUARSM').AsFloat;;
              //
              qryProduto.Next;
         End;
         //
         With frmRelMPS do
         Begin
              txtPERIODO.Caption := edtDTINIC.Text + ' À ' + edtDTFINA.Text;
              txtNMPROD.Caption  := lbl_NMPROD.Caption;
              txtUSUARIO.Caption := uPrincipal.M_NMUSUA;
              //
              txtTOTPRIM.Caption := FormatFloat('###,###',M_TOTPRI);
              txtTOTSEGU.Caption := FormatFloat('###,###',M_TOTSEG);
              txtTOTTERC.Caption := FormatFloat('###,###',M_TOTERC);
              txtTOTQUAR.Caption := FormatFloat('###,###',M_TOTQUA);
         End;
         //
         frmRelMPS.qrMPS.Preview;
     Finally
         frmRelMPS.Free;
         qryProduto.EnableControls;
         btVisualizar.Enabled := True;
     End;
end;

procedure TfrmImpMPS.qryProdutoCalcFields(DataSet: TDataSet);
begin
     //
   If (qryProduto.FieldByName('MPS_PRIMSM').AsFloat > 0) Then
      qryProduto.FieldByName('MPS_DESPRI').AsString :=
          qryProduto.FieldByName('MPS_CDTAMA').AsString+' - '+
          qryProduto.FieldByName('MPS_CODCOR').AsString+' - '+
          qryProduto.FieldByName('MPS_PRIMSM').AsString;
    //
   If (qryProduto.FieldByName('MPS_SEGUSM').AsFloat > 0) Then
      qryProduto.FieldByName('MPS_DESSEG').AsString :=
        qryProduto.FieldByName('MPS_CDTAMA').AsString+' - '+
        qryProduto.FieldByName('MPS_CODCOR').AsString+' - '+
        qryProduto.FieldByName('MPS_SEGUSM').AsString;
    //
   If (qryProduto.FieldByName('MPS_TERCSM').AsFloat > 0) Then
    qryProduto.FieldByName('MPS_DESTER').AsString :=
        qryProduto.FieldByName('MPS_CDTAMA').AsString+' - '+
        qryProduto.FieldByName('MPS_CODCOR').AsString+' - '+
        qryProduto.FieldByName('MPS_TERCSM').AsString;
    //
   If (qryProduto.FieldByName('MPS_QUARSM').AsFloat > 0) Then
      qryProduto.FieldByName('MPS_DESQUA').AsString :=
        qryProduto.FieldByName('MPS_CDTAMA').AsString+' - '+
        qryProduto.FieldByName('MPS_CODCOR').AsString+' - '+
        qryProduto.FieldByName('MPS_QUARSM').AsString;
end;

procedure TfrmImpMPS.GridQUANTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Shift = [ssCtrl]) and (Key = 46) Then
        KEY := 0;
end;

end.
