unit udmInfoModa;

interface

uses
  SysUtils, Classes, DB, DBTables, DBIProcs;

type
  TdmInfoModa = class(TDataModule)
    dbInfoModa: TDatabase;
    tbParametros: TTable;
    tbModeloProduto: TTable;
    tbItensMateria: TTable;
    tbMateriaPrima: TTable;
    tbProdutos: TTable;
    tbProdutosPRO_CDPROD: TStringField;
    tbProdutosPRO_CDFORN: TStringField;
    tbProdutosPRO_NMPROD: TStringField;
    tbProdutosPRO_CDUNID: TStringField;
    tbProdutosPRO_QTARMA: TSmallintField;
    tbProdutosPRO_VLCOMP: TFloatField;
    tbProdutosPRO_VLCUST: TFloatField;
    tbProdutosPRO_VLVEND: TFloatField;
    tbProdutosPRO_VLATAC: TFloatField;
    tbProdutosPRO_VLATAP: TFloatField;
    tbProdutosPRO_FLPESA: TStringField;
    tbModeloProdutoMDP_CDMODE: TStringField;
    tbModeloProdutoMDP_CDPROD: TStringField;
    tbModeloProdutoMDP_DTPROD: TMemoField;
    tbItensMateriaIMP_MTPRIM: TStringField;
    tbItensMateriaIMP_NRITEM: TStringField;
    tbItensMateriaIMP_QTMATE: TFloatField;
    tbMateriaPrimaMAT_CDMATE: TStringField;
    tbMateriaPrimaMAT_NMMATE: TStringField;
    tbMateriaPrimaMAT_CDFORN: TStringField;
    tbMateriaPrimaMAT_VLCUST: TFloatField;
    tbMateriaPrimaMAT_CDUNID: TStringField;
    tbMateriaPrimaMAT_NMFORN: TStringField;
    tbMateriaPrimaMAT_QTMATE: TFloatField;
    tbMateriaPrimaMAT_QTENTR: TFloatField;
    tbMateriaPrimaMAT_DTENTR: TStringField;
    tbMateriaPrimaMAT_QTSAID: TFloatField;
    tbMateriaPrimaMAT_DTSAID: TStringField;
    tbParametrosPAR_NMEMPR: TStringField;
    tbParametrosPAR_ENEMPR: TStringField;
    tbParametrosPAR_BAEMPR: TStringField;
    tbParametrosPAR_CIEMPR: TStringField;
    tbParametrosPAR_CEPEMP: TStringField;
    tbParametrosPAR_UFEMPR: TStringField;
    tbParametrosPAR_CGCEMP: TStringField;
    tbParametrosPAR_INSEST: TStringField;
    tbParametrosPAR_NRFONE: TStringField;
    tbParametrosPAR_NUMFAX: TStringField;
    tbParametrosPAR_CDCLIE: TFloatField;
    tbParametrosPAR_CDPROD: TFloatField;
    tbParametrosPAR_DTATUA: TDateField;
    tbParametrosPAR_ANOCON: TStringField;
    tbParametrosPAR_CDMODE: TFloatField;
    tbParametrosPAR_CDMATE: TFloatField;
    tbParametrosPAR_NRPEDI: TFloatField;
    tbParametrosPAR_CDVEND: TFloatField;
    tbParametrosPAR_IMLOGO: TGraphicField;
    qryMateriaPrima: TQuery;
    qryProduto: TQuery;
    tbModeloProdutoMDP_NMPROD: TStringField;
    tbItensMateriaITE_NMMATE: TStringField;
    dsModeloProduto: TDataSource;
    tbItensMateriaIMP_CDMODE: TStringField;
    tbModeloProdutoMDP_CDUSUA: TStringField;
    tbVendedores: TTable;
    tbClientes: TTable;
    tbPedidos: TTable;
    tbItensPedido: TTable;
    tbItensPedidoITP_NRPEDI: TStringField;
    tbItensPedidoITP_NRITEM: TStringField;
    tbItensPedidoITP_CDPROD: TStringField;
    tbItensPedidoITP_QTPROD: TFloatField;
    tbItensPedidoITP_VLUNIT: TCurrencyField;
    tbPedidosPED_NRPEDI: TStringField;
    tbPedidosPED_QTPEDI: TFloatField;
    tbPedidosPED_QTATEN: TFloatField;
    tbPedidosPED_DTPEDI: TDateField;
    tbPedidosPED_CDVEND: TStringField;
    tbPedidosPED_NRLOTE: TStringField;
    tbPedidosPED_CDCLIE: TStringField;
    tbClientesCLI_CDCLIE: TStringField;
    tbClientesCLI_NMCLIE: TStringField;
    tbClientesCLI_DTNASC: TStringField;
    tbClientesCLI_ENCLIE: TStringField;
    tbClientesCLI_CDBAIR: TStringField;
    tbClientesCLI_NMCONJ: TStringField;
    tbClientesCLI_NOMPAI: TStringField;
    tbClientesCLI_NOMMAE: TStringField;
    tbClientesCLI_NRFONE: TStringField;
    tbClientesCLI_NUMFAX: TStringField;
    tbClientesCLI_CDAVAL: TStringField;
    tbClientesCLI_CONT01: TStringField;
    tbClientesCLI_FONE01: TStringField;
    tbClientesCLI_CNPF01: TStringField;
    tbClientesCLI_CONT02: TStringField;
    tbClientesCLI_FONE02: TStringField;
    tbClientesCLI_CDCIDA: TStringField;
    tbClientesCLI_CEPCLI: TStringField;
    tbClientesCLI_ESTCIV: TStringField;
    tbClientesCLI_CPFCGC: TStringField;
    tbClientesCLI_IDEINS: TStringField;
    tbClientesCLI_OREMIS: TStringField;
    tbClientesCLI_UFEMIS: TStringField;
    tbClientesCLI_UFCLIE: TStringField;
    tbClientesCLI_CDUSUA: TStringField;
    tbVendedoresVEN_CDVEND: TStringField;
    tbVendedoresVEN_NMVEND: TStringField;
    tbVendedoresVEN_ENDVEN: TStringField;
    tbVendedoresVEN_BAVEND: TStringField;
    tbVendedoresVEN_CIVEND: TStringField;
    tbVendedoresVEN_UFVEND: TStringField;
    tbVendedoresVEN_CEPVEN: TStringField;
    tbVendedoresVEN_NRFONE: TStringField;
    tbVendedoresVEN_PECOMI: TFloatField;
    qryClientes: TQuery;
    qryVendedores: TQuery;
    tbPedidosPED_NMCLIE: TStringField;
    tbPedidosPED_NMVEND: TStringField;
    qryTamanho: TQuery;
    tbTamanho: TTable;
    tbTamanhoTAM_CDPROD: TStringField;
    tbTamanhoTAM_TAMANH: TStringField;
    tbTamanhoTAM_NMDESC: TStringField;
    tbItensPedidoITP_NMPROD: TStringField;
    tbItensPedidoITP_VLUNI2: TCurrencyField;
    tbItensPedidoITE_SUBTOT: TCurrencyField;
    qryTOTPEDIDO: TQuery;
    qryTOTPEDIDOITP_NRPEDI: TStringField;
    qryTOTPEDIDOITP_NRITEM: TStringField;
    qryTOTPEDIDOITP_CDPROD: TStringField;
    qryTOTPEDIDOITP_QTPROD: TFloatField;
    qryTOTPEDIDOITP_VLUNIT: TCurrencyField;
    qryTOTPEDIDOITE_VLUNI2: TCurrencyField;
    qryTOTPEDIDOITE_SUBTOT: TCurrencyField;
    tbPedidosPED_CDUSUA: TStringField;
    tbPedidosPED_HOPEDI: TStringField;
    tbItensPedidoITP_FLSITU: TStringField;
    tbItensPedidoITP_NMPRO2: TStringField;
    tbUsuarios: TTable;
    tbUsuariosSEN_CDUSUA: TStringField;
    tbUsuariosSEN_NMUSUA: TStringField;
    tbUsuariosSEN_SNATUA: TStringField;
    tbUsuariosSEN_NMCARG: TStringField;
    tbUsuariosSEN_NMTERM: TStringField;
    tbUsuariosSEN_FLSUPE: TBooleanField;
    tbUsuariosSEN_CDGRUP: TStringField;
    tbUsuariosSEN_DTATUA: TDateField;
    tbUsuariosSEN_FLEXCL: TBooleanField;
    tbParametrosPAR_CDUSUA: TFloatField;
    tbItensPedidoITP_TAMANH: TStringField;
    tbItensPedidoITP_DESTAM: TStringField;
    tbParametrosPAR_NRLOTE: TFloatField;
    qryPedido: TQuery;
    tbPedidosPED_FLLOTE: TStringField;
    qryPedidoPED_NRPEDI: TStringField;
    qryPedidoPED_QTPEDI: TFloatField;
    qryPedidoPED_QTATEN: TFloatField;
    qryPedidoPED_DTPEDI: TDateField;
    qryPedidoPED_HOPEDI: TStringField;
    qryPedidoPED_CDVEND: TStringField;
    qryPedidoPED_NRLOTE: TStringField;
    qryPedidoPED_FLLOTE: TStringField;
    qryPedidoPED_CDCLIE: TStringField;
    qryPedidoPED_NMCLIE: TStringField;
    qryPedidoPED_NMVEND: TStringField;
    qryModelo: TQuery;
    qryItensModelo: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    qryModeloMDP_CDMODE: TStringField;
    qryModeloMDP_CDPROD: TStringField;
    qryModeloMDP_DTPROD: TMemoField;
    qryModeloMDP_IMGFRE: TGraphicField;
    qryModeloMDP_NMMODE: TStringField;
    qryItensModeloIMP_NMDESC: TStringField;
    tbModeloProdutoMDP_FLMOLH: TBooleanField;
    tbModeloProdutoMDP_FLTRIA: TBooleanField;
    tbModeloProdutoMDP_FLETIQ: TBooleanField;
    tbModeloProdutoMDP_FLFERR: TBooleanField;
    tbModeloProdutoMDP_FLSOL: TBooleanField;
    tbGrade: TTable;
    tbGradeGRA_CDTAMA: TStringField;
    tbGradeGRA_TAMANH: TStringField;
    tbGradeGRA_QTTAMA: TFloatField;
    tbGradeTamanho: TTable;
    qryIncGrade: TQuery;
    qryItensPedidos: TQuery;
    qryItensPedidosGTM_NRPEDI: TStringField;
    qryItensPedidosGTM_CDPROD: TStringField;
    qryItensPedidosGTM_CDTAMA: TStringField;
    qryItensPedidosGTM_TAMANH: TStringField;
    qryItensPedidosGTM_QTPROD: TFloatField;
    qryItensPedidosGTM_NMPROD: TStringField;
    qryItensPedidosGTM_VLUNIT: TCurrencyField;
    qryItens: TQuery;
    qryGrade: TQuery;
    tbModeloProdutoMDP_NMMODE: TStringField;
    qryCidade: TQuery;
    qryCidadeCID_NMCIDA: TStringField;
    qryCidadeCID_CDCIDA: TStringField;
    qryCidadeCID_UFCIDA: TStringField;
    qryCidadeCID_CDZONA: TStringField;
    qryBairro: TQuery;
    qryBairroBAI_CDBAIR: TStringField;
    qryBairroBAI_NMBAIR: TStringField;
    qryBairroBAI_CDZONA: TStringField;
    tbPedidosPED_TOPEDI: TCurrencyField;
    qryPedidoPED_TOPEDI: TCurrencyField;
    qryProdutosLote: TQuery;
    qryIncLote: TQuery;
    qryItensLote: TQuery;
    tbLotes: TTable;
    qryItens2: TQuery;
    qryItens2GTM_NRPEDI: TStringField;
    qryItens2GTM_CDPROD: TStringField;
    qryItens2GTM_CDTAMA: TStringField;
    qryItens2GTM_TAMANH: TStringField;
    qryItens2GTM_QTPROD: TFloatField;
    qryItens2GTM_VLUNIT: TCurrencyField;
    qryCores: TQuery;
    qryCoresCOR_CODCOR: TStringField;
    qryCoresCOR_NOMCOR: TStringField;
    tbGradeTamanhoGTM_NRPEDI: TStringField;
    tbGradeTamanhoGTM_NRLOTE: TStringField;
    tbGradeTamanhoGTM_CDPROD: TStringField;
    tbGradeTamanhoGTM_CDTAMA: TStringField;
    tbGradeTamanhoGTM_CODCOR: TStringField;
    tbGradeTamanhoGTM_TAMANH: TStringField;
    tbGradeTamanhoGTM_QTPROD: TFloatField;
    tbGradeTamanhoGTM_FLSITU: TStringField;
    tbGradeTamanhoGTM_NOMCOR: TStringField;
    tbGradeGRA_CODCOR: TStringField;
    tbGradeGRA_NOMCOR: TStringField;
    qryItensPedidosGTM_CODCOR: TStringField;
    qryItensPedidosGTM_NOMCOR: TStringField;
    tbParametrosPAR_QTMINI: TFloatField;
    tbParametrosPAR_DIRIMG: TStringField;
    tbModeloProdutoMDP_IMGFRE: TGraphicField;
    tbGradeGRA_NMCOR2: TStringField;
    tbGradeGRA_CDCOR2: TStringField;
    qryExcluirItens: TQuery;
    tbItensMateriaIMP_CDPROD: TStringField;
    tbEtiquetas: TTable;
    tbEtiquetasEQT_CDPROD: TStringField;
    tbEtiquetasEQT_NMPROD: TStringField;
    tbEtiquetasEQT_VLVEND: TFloatField;
    tbParametrosPAR_TOETIQ: TFloatField;
    tbEtiquetasEQT_IMGBAR: TGraphicField;
    tbParametrosPAR_SCJEAN: TStringField;
    tbParametrosPAR_SCMALH: TStringField;
    tbProdutosPRO_CDBARR: TStringField;
    qryProdutoPRO_CDPROD: TStringField;
    qryProdutoPRO_CDBARR: TStringField;
    qryProdutoPRO_NMPROD: TStringField;
    qryProdutoPRO_VLVEND: TFloatField;
    qryPedidoPED_ORDSER: TStringField;
    tbPedidosPED_ORDSER: TStringField;
    tbPedidosPED_FLSITU: TStringField;
    tbGradeGRA_NRPEDI: TStringField;
    tbGrade2: TTable;
    tbGrade2GRD_NRPEDI: TStringField;
    tbGrade2GRD_CDPROD: TStringField;
    tbGrade2GRD_CODCOR: TStringField;
    tbGrade2GRD_TAMA34: TFloatField;
    tbGrade2GRD_TAMA36: TFloatField;
    tbGrade2GRD_TAMA38: TFloatField;
    tbGrade2GRD_TAMA40: TFloatField;
    tbGrade2GRD_TAMA42: TFloatField;
    tbGrade2GRD_TAMA44: TFloatField;
    tbGrade2GRD_TAMA46: TFloatField;
    tbGrade2GRD_TAMA48: TFloatField;
    tbGrade2GRD_TAMA50: TFloatField;
    tbGrade2GRD_NOMCOR: TStringField;
    tbGrade2GRD_TOPROD: TFloatField;
    tbParametrosPAR_NRSEQU: TFloatField;
    qryPlanos: TQuery;
    qryPlanosPLA_CDPLAN: TStringField;
    qryPlanosPLA_NMPLAN: TStringField;
    qryPlanosPLA_NRPARC: TFloatField;
    qryPlanosPLA_PEJURO: TFloatField;
    qryPlanosPLA_PEENTR: TFloatField;
    qryPlanosPLA_CDUSUA: TStringField;
    qryParcelaFatura: TQuery;
    tbParcelas: TTable;
    tbParcelasCTR_NRPARC: TStringField;
    tbParcelasCTR_VLPARC: TCurrencyField;
    tbParcelasCTR_DTFATU: TDateField;
    tbParcelasCTR_DTVENC: TDateField;
    tbParcelasCTR_NRAGEN: TStringField;
    tbParcelasCTR_NRCHEQ: TStringField;
    tbParcelasCTR_CLCLIE: TStringField;
    tbParcelasCTR_NRPEDI: TStringField;
    tbParcelasCTR_CDPLAN: TStringField;
    tbParcelasCTR_TOFATU: TCurrencyField;
    tbParcelasCTR_VLENTR: TCurrencyField;
    tbParcelasCTR_FLSITU: TStringField;
    tbParcelasCTR_CDUSUA: TStringField;
    qryBancos: TQuery;
    tbParcelasCTR_CDBANC: TStringField;
    tbParcelasCRT_NMBANC: TStringField;
    tbParametrosPAR_NRDUPL: TFloatField;
    tbParametrosPAR_NRFATU: TFloatField;
    tbPlanos: TTable;
    tbPlanosPLA_CDPLAN: TStringField;
    tbPlanosPLA_NMPLAN: TStringField;
    tbPlanosPLA_NRPARC: TFloatField;
    tbPlanosPLA_PEJURO: TFloatField;
    tbPlanosPLA_PEENTR: TFloatField;
    tbPlanosPLA_CDUSUA: TStringField;
    tbParametrosPAR_CDPLAN: TFloatField;
    procedure tbParametrosAfterPost(DataSet: TDataSet);
    procedure tbModeloProdutoAfterPost(DataSet: TDataSet);
    procedure tbItensMateriaAfterPost(DataSet: TDataSet);
    procedure tbMateriaPrimaAfterPost(DataSet: TDataSet);
    procedure tbProdutosAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure tbVendedoresAfterPost(DataSet: TDataSet);
    procedure tbClientesAfterPost(DataSet: TDataSet);
    procedure tbItensPedidoCalcFields(DataSet: TDataSet);
    procedure qryTOTPEDIDOCalcFields(DataSet: TDataSet);
    procedure tbGradeAfterPost(DataSet: TDataSet);
    procedure tbGradeTamanhoAfterPost(DataSet: TDataSet);
    procedure tbUsuariosAfterPost(DataSet: TDataSet);
    procedure tbLotesAfterPost(DataSet: TDataSet);
    procedure tbGrade2AfterPost(DataSet: TDataSet);
    procedure tbEtiquetasAfterPost(DataSet: TDataSet);
    procedure tbGrade2CalcFields(DataSet: TDataSet);
    procedure tbParcelasAfterInsert(DataSet: TDataSet);
    procedure tbParcelasAfterPost(DataSet: TDataSet);
    procedure tbPlanosAfterPost(DataSet: TDataSet);
  private
    Procedure FECHAR_LOTE;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmInfoModa: TdmInfoModa;

implementation

Uses uCadPedidos, uFuncoes;

{$R *.dfm}

procedure TdmInfoModa.tbParametrosAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbParametros.Handle);     //Evitando Perdas de Dados.
     tbParametros.FlushBuffers;
     tbParametros.Refresh;
end;

procedure TdmInfoModa.tbModeloProdutoAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbModeloProduto.Handle);     //Evitando Perdas de Dados.
     tbModeloProduto.FlushBuffers;
     tbModeloProduto.Refresh;
end;

procedure TdmInfoModa.tbItensMateriaAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbItensMateria.Handle);     //Evitando Perdas de Dados.
     tbItensMateria.FlushBuffers;
     tbItensMateria.Refresh;
end;

procedure TdmInfoModa.tbMateriaPrimaAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbMateriaPrima.Handle);     //Evitando Perdas de Dados.
     tbMateriaPrima.FlushBuffers;
     tbMateriaPrima.Refresh;
end;

procedure TdmInfoModa.tbProdutosAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbProdutos.Handle);     //Evitando Perdas de Dados.
     tbProdutos.FlushBuffers;
     tbProdutos.Refresh;
end;

procedure TdmInfoModa.DataModuleCreate(Sender: TObject);
begin
     If (tbParametros.Active = False) Then
        tbParametros.Open;
     //
     //FECHAR_LOTE;
end;

procedure TdmInfoModa.DataModuleDestroy(Sender: TObject);
begin
     tbParametros.Close;
     dbInfoModa.Close;
end;

procedure TdmInfoModa.tbVendedoresAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbVendedores.Handle);     //Evitando Perdas de Dados.
     tbVendedores.FlushBuffers;
     tbVendedores.Refresh;
end;

procedure TdmInfoModa.tbClientesAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbClientes.Handle);     //Evitando Perdas de Dados.
     tbClientes.FlushBuffers;
     tbClientes.Refresh;
end;

procedure TdmInfoModa.tbItensPedidoCalcFields(DataSet: TDataSet);
begin
     tbItensPedido.FieldByName('ITE_SUBTOT').AsCurrency :=
         tbItensPedido.FieldByName('ITP_VLUNI2').AsCurrency * tbItensPedido.FieldByName('ITP_QTPROD').AsCurrency;
end;

procedure TdmInfoModa.qryTOTPEDIDOCalcFields(DataSet: TDataSet);
begin
     qryTOTPEDIDO.FieldByName('ITE_SUBTOT').AsCurrency :=
         qryTOTPEDIDO.FieldByName('ITE_VLUNI2').AsCurrency * qryTOTPEDIDO.FieldByName('ITP_QTPROD').AsCurrency;
end;

procedure TdmInfoModa.FECHAR_LOTE;
Var
    M_NRLOTE, M_NRPEDI : String;
begin
     tbPedidos.Open;
     tbPedidos.First;
     //
     While not (tbPedidos.Eof) do
     begin
         M_NRLOTE := tbPedidosPED_NRLOTE.AsString;
         M_NRPEDI := tbPedidosPED_NRLOTE.AsString;
         //
         With dmInfoModa.qryItens2 do
         begin
              SQL.Clear;
              Close;
              SQL.Add('UPDATE SACGTM SET GTM_NRLOTE='+QuotedStr(M_NRLOTE));
              SQL.Add(', GTM_FLSITU=:pFLSITU');
              SQL.Add('WHERE (GTM_NRPEDI=:pNRPEDI) AND (GTM_FLSITU=:pFLLOTE)');
              //
              ParamByName('pNRPEDI').AsString := M_NRPEDI;
              ParamByName('pFLLOTE').AsString := 'A';
              ParamByName('pFLSITU').AsString := 'F';
              //
              Execsql;
         End;
         //
         tbPedidos.Next;
      End;
      //
      tbPedidos.Close; 
end;

procedure TdmInfoModa.tbGradeAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbGrade.Handle);     //Evitando Perdas de Dados.
     tbGrade.FlushBuffers;
     tbGrade.Refresh;
end;

procedure TdmInfoModa.tbGradeTamanhoAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbGradeTamanho.Handle);     //Evitando Perdas de Dados.
     tbGradeTamanho.FlushBuffers;
     tbGradeTamanho.Refresh;
end;

procedure TdmInfoModa.tbUsuariosAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbUsuarios.Handle);     //Evitando Perdas de Dados.
     tbUsuarios.FlushBuffers;
     tbUsuarios.Refresh;
end;

procedure TdmInfoModa.tbLotesAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbLotes.Handle);     //Evitando Perdas de Dados.
     tbLotes.FlushBuffers;
     tbLotes.Refresh;
end;

procedure TdmInfoModa.tbGrade2AfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbGrade2.Handle);     //Evitando Perdas de Dados.
     tbGrade2.FlushBuffers;
     tbGrade2.Refresh;
end;

procedure TdmInfoModa.tbEtiquetasAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbEtiquetas.Handle);     //Evitando Perdas de Dados.
     tbEtiquetas.FlushBuffers;
     tbEtiquetas.Refresh;
end;

procedure TdmInfoModa.tbGrade2CalcFields(DataSet: TDataSet);
begin
    tbGrade2.FieldByName('GRD_TOPROD').AsFloat :=
      tbGrade2.FieldByName('GRD_TAMA34').AsFloat+
      tbGrade2.FieldByName('GRD_TAMA36').AsFloat+
      tbGrade2.FieldByName('GRD_TAMA38').AsFloat+
      tbGrade2.FieldByName('GRD_TAMA40').AsFloat+
      tbGrade2.FieldByName('GRD_TAMA42').AsFloat+
      tbGrade2.FieldByName('GRD_TAMA44').AsFloat+
      tbGrade2.FieldByName('GRD_TAMA46').AsFloat+
      tbGrade2.FieldByName('GRD_TAMA48').AsFloat+
      tbGrade2.FieldByName('GRD_TAMA50').AsFloat;
end;


procedure TdmInfoModa.tbParcelasAfterInsert(DataSet: TDataSet);
begin
     If uFuncoes.Empty(dmInfoModa.tbParcelas.FieldByName('CTR_NRPARC').AsString) Then
         dmInfoModa.tbParcelas.Delete;
end;

procedure TdmInfoModa.tbParcelasAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbParcelas.Handle);     //Evitando Perdas de Dados.
     tbParcelas.FlushBuffers;
     tbParcelas.Refresh;
end;

procedure TdmInfoModa.tbPlanosAfterPost(DataSet: TDataSet);
begin
     DBISaveChanges(tbPlanos.Handle);     //Evitando Perdas de Dados.
     tbPlanos.FlushBuffers;
     tbPlanos.Refresh;
end;

end.
