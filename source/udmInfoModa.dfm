object dmInfoModa: TdmInfoModa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 196
  Top = 111
  Height = 495
  Width = 719
  object dbInfoModa: TDatabase
    AliasName = 'InfoModa'
    DatabaseName = 'InfoModa'
    LoginPrompt = False
    SessionName = 'Default'
    TransIsolation = tiDirtyRead
    Left = 408
    Top = 8
  end
  object tbParametros: TTable
    AfterPost = tbParametrosAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACPAR.DB'
    Left = 32
    Top = 16
    object tbParametrosPAR_NMEMPR: TStringField
      FieldName = 'PAR_NMEMPR'
      Size = 50
    end
    object tbParametrosPAR_ENEMPR: TStringField
      FieldName = 'PAR_ENEMPR'
      Size = 40
    end
    object tbParametrosPAR_BAEMPR: TStringField
      FieldName = 'PAR_BAEMPR'
    end
    object tbParametrosPAR_CIEMPR: TStringField
      FieldName = 'PAR_CIEMPR'
    end
    object tbParametrosPAR_CEPEMP: TStringField
      FieldName = 'PAR_CEPEMP'
      Size = 8
    end
    object tbParametrosPAR_UFEMPR: TStringField
      FieldName = 'PAR_UFEMPR'
      Size = 2
    end
    object tbParametrosPAR_CGCEMP: TStringField
      FieldName = 'PAR_CGCEMP'
      Size = 14
    end
    object tbParametrosPAR_INSEST: TStringField
      FieldName = 'PAR_INSEST'
      Size = 14
    end
    object tbParametrosPAR_NRFONE: TStringField
      FieldName = 'PAR_NRFONE'
      Size = 12
    end
    object tbParametrosPAR_NUMFAX: TStringField
      FieldName = 'PAR_NUMFAX'
      Size = 12
    end
    object tbParametrosPAR_CDCLIE: TFloatField
      FieldName = 'PAR_CDCLIE'
    end
    object tbParametrosPAR_CDPROD: TFloatField
      FieldName = 'PAR_CDPROD'
    end
    object tbParametrosPAR_DTATUA: TDateField
      FieldName = 'PAR_DTATUA'
    end
    object tbParametrosPAR_ANOCON: TStringField
      FieldName = 'PAR_ANOCON'
      Size = 4
    end
    object tbParametrosPAR_CDMODE: TFloatField
      FieldName = 'PAR_CDMODE'
    end
    object tbParametrosPAR_CDMATE: TFloatField
      FieldName = 'PAR_CDMATE'
    end
    object tbParametrosPAR_NRPEDI: TFloatField
      FieldName = 'PAR_NRPEDI'
    end
    object tbParametrosPAR_CDVEND: TFloatField
      FieldName = 'PAR_CDVEND'
    end
    object tbParametrosPAR_IMLOGO: TGraphicField
      FieldName = 'PAR_IMLOGO'
      BlobType = ftGraphic
    end
    object tbParametrosPAR_CDUSUA: TFloatField
      FieldName = 'PAR_CDUSUA'
    end
    object tbParametrosPAR_NRLOTE: TFloatField
      FieldName = 'PAR_NRLOTE'
    end
    object tbParametrosPAR_QTMINI: TFloatField
      FieldName = 'PAR_QTMINI'
    end
    object tbParametrosPAR_DIRIMG: TStringField
      FieldName = 'PAR_DIRIMG'
      Size = 30
    end
    object tbParametrosPAR_TOETIQ: TFloatField
      FieldName = 'PAR_TOETIQ'
    end
    object tbParametrosPAR_SCJEAN: TStringField
      FieldName = 'PAR_SCJEAN'
      Size = 3
    end
    object tbParametrosPAR_SCMALH: TStringField
      FieldName = 'PAR_SCMALH'
      Size = 3
    end
    object tbParametrosPAR_NRSEQU: TFloatField
      FieldName = 'PAR_NRSEQU'
    end
    object tbParametrosPAR_NRDUPL: TFloatField
      FieldName = 'PAR_NRDUPL'
    end
    object tbParametrosPAR_NRFATU: TFloatField
      FieldName = 'PAR_NRFATU'
    end
    object tbParametrosPAR_CDPLAN: TFloatField
      FieldName = 'PAR_CDPLAN'
    end
  end
  object tbModeloProduto: TTable
    AfterPost = tbModeloProdutoAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACMDP.DB'
    Left = 32
    Top = 72
    object tbModeloProdutoMDP_CDMODE: TStringField
      FieldName = 'MDP_CDMODE'
      Size = 10
    end
    object tbModeloProdutoMDP_CDPROD: TStringField
      FieldName = 'MDP_CDPROD'
      Size = 13
    end
    object tbModeloProdutoMDP_NMMODE: TStringField
      FieldName = 'MDP_NMMODE'
      Size = 40
    end
    object tbModeloProdutoMDP_NMPROD: TStringField
      FieldKind = fkLookup
      FieldName = 'MDP_NMPROD'
      LookupDataSet = qryProduto
      LookupKeyFields = 'PRO_CDBARR'
      LookupResultField = 'PRO_NMPROD'
      KeyFields = 'MDP_CDPROD'
      Size = 40
      Lookup = True
    end
    object tbModeloProdutoMDP_DTPROD: TMemoField
      FieldName = 'MDP_DTPROD'
      BlobType = ftMemo
      Size = 2
    end
    object tbModeloProdutoMDP_FLMOLH: TBooleanField
      FieldName = 'MDP_FLMOLH'
    end
    object tbModeloProdutoMDP_FLTRIA: TBooleanField
      FieldName = 'MDP_FLTRIA'
    end
    object tbModeloProdutoMDP_FLETIQ: TBooleanField
      FieldName = 'MDP_FLETIQ'
    end
    object tbModeloProdutoMDP_FLFERR: TBooleanField
      FieldName = 'MDP_FLFERR'
    end
    object tbModeloProdutoMDP_FLSOL: TBooleanField
      FieldName = 'MDP_FLSOL'
    end
    object tbModeloProdutoMDP_CDUSUA: TStringField
      FieldName = 'MDP_CDUSUA'
      Size = 3
    end
    object tbModeloProdutoMDP_IMGFRE: TGraphicField
      FieldName = 'MDP_IMGFRE'
      BlobType = ftGraphic
    end
  end
  object tbItensMateria: TTable
    AfterPost = tbItensMateriaAfterPost
    DatabaseName = 'InfoModa'
    MasterSource = dsModeloProduto
    TableName = 'SACIMP.db'
    Left = 32
    Top = 128
    object tbItensMateriaIMP_CDMODE: TStringField
      FieldName = 'IMP_CDMODE'
      Size = 10
    end
    object tbItensMateriaIMP_MTPRIM: TStringField
      FieldName = 'IMP_MTPRIM'
      Size = 6
    end
    object tbItensMateriaIMP_CDPROD: TStringField
      Alignment = taRightJustify
      FieldName = 'IMP_CDPROD'
      Size = 13
    end
    object tbItensMateriaITE_NMMATE: TStringField
      FieldKind = fkLookup
      FieldName = 'ITE_NMMATE'
      LookupDataSet = qryMateriaPrima
      LookupKeyFields = 'MAT_CDMATE'
      LookupResultField = 'MAT_NMMATE'
      KeyFields = 'IMP_MTPRIM'
      Size = 50
      Lookup = True
    end
    object tbItensMateriaIMP_NRITEM: TStringField
      FieldName = 'IMP_NRITEM'
      Size = 2
    end
    object tbItensMateriaIMP_QTMATE: TFloatField
      FieldName = 'IMP_QTMATE'
    end
  end
  object tbMateriaPrima: TTable
    AfterPost = tbMateriaPrimaAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACMAT.dbf'
    Left = 32
    Top = 184
    object tbMateriaPrimaMAT_CDMATE: TStringField
      FieldName = 'MAT_CDMATE'
      Size = 6
    end
    object tbMateriaPrimaMAT_NMMATE: TStringField
      FieldName = 'MAT_NMMATE'
      Size = 50
    end
    object tbMateriaPrimaMAT_CDFORN: TStringField
      FieldName = 'MAT_CDFORN'
      Size = 5
    end
    object tbMateriaPrimaMAT_VLCUST: TFloatField
      FieldName = 'MAT_VLCUST'
    end
    object tbMateriaPrimaMAT_CDUNID: TStringField
      FieldName = 'MAT_CDUNID'
      Size = 2
    end
    object tbMateriaPrimaMAT_NMFORN: TStringField
      FieldName = 'MAT_NMFORN'
      Size = 30
    end
    object tbMateriaPrimaMAT_QTMATE: TFloatField
      FieldName = 'MAT_QTMATE'
    end
    object tbMateriaPrimaMAT_QTENTR: TFloatField
      FieldName = 'MAT_QTENTR'
    end
    object tbMateriaPrimaMAT_DTENTR: TStringField
      FieldName = 'MAT_DTENTR'
      Size = 8
    end
    object tbMateriaPrimaMAT_QTSAID: TFloatField
      FieldName = 'MAT_QTSAID'
    end
    object tbMateriaPrimaMAT_DTSAID: TStringField
      FieldName = 'MAT_DTSAID'
      Size = 8
    end
  end
  object tbProdutos: TTable
    AfterPost = tbProdutosAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACPRO.DBF'
    Left = 32
    Top = 240
    object tbProdutosPRO_CDPROD: TStringField
      FieldName = 'PRO_CDPROD'
      Size = 13
    end
    object tbProdutosPRO_CDFORN: TStringField
      FieldName = 'PRO_CDFORN'
      Size = 5
    end
    object tbProdutosPRO_NMPROD: TStringField
      FieldName = 'PRO_NMPROD'
      Size = 40
    end
    object tbProdutosPRO_CDUNID: TStringField
      FieldName = 'PRO_CDUNID'
      Size = 2
    end
    object tbProdutosPRO_QTARMA: TSmallintField
      FieldName = 'PRO_QTARMA'
    end
    object tbProdutosPRO_VLCOMP: TFloatField
      FieldName = 'PRO_VLCOMP'
    end
    object tbProdutosPRO_VLCUST: TFloatField
      FieldName = 'PRO_VLCUST'
    end
    object tbProdutosPRO_VLVEND: TFloatField
      FieldName = 'PRO_VLVEND'
    end
    object tbProdutosPRO_VLATAC: TFloatField
      FieldName = 'PRO_VLATAC'
    end
    object tbProdutosPRO_VLATAP: TFloatField
      FieldName = 'PRO_VLATAP'
    end
    object tbProdutosPRO_FLPESA: TStringField
      FieldName = 'PRO_FLPESA'
      Size = 1
    end
    object tbProdutosPRO_CDBARR: TStringField
      FieldName = 'PRO_CDBARR'
      Size = 13
    end
  end
  object qryMateriaPrima: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACMAT order by MAT_NMMATE')
    Left = 112
    Top = 184
  end
  object qryProduto: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACPRO order by PRO_NMPROD')
    Left = 112
    Top = 240
    object qryProdutoPRO_CDPROD: TStringField
      FieldName = 'PRO_CDPROD'
      Origin = 'INFOMODA."SACPRO.DBF".PRO_CDPROD'
      Size = 13
    end
    object qryProdutoPRO_CDBARR: TStringField
      FieldName = 'PRO_CDBARR'
      Origin = 'INFOMODA."SACPRO.DBF".PRO_CDBARR'
      Size = 13
    end
    object qryProdutoPRO_NMPROD: TStringField
      FieldName = 'PRO_NMPROD'
      Origin = 'INFOMODA."SACPRO.DBF".PRO_NMPROD'
      Size = 40
    end
    object qryProdutoPRO_VLVEND: TFloatField
      FieldName = 'PRO_VLVEND'
      Origin = 'INFOMODA."SACPRO.DBF".PRO_VLVEND'
      DisplayFormat = '###,##0.#0'
    end
  end
  object dsModeloProduto: TDataSource
    DataSet = tbModeloProduto
    Left = 128
    Top = 72
  end
  object tbVendedores: TTable
    AfterPost = tbVendedoresAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACVEN.DBF'
    Left = 208
    Top = 56
    object tbVendedoresVEN_CDVEND: TStringField
      FieldName = 'VEN_CDVEND'
      Size = 6
    end
    object tbVendedoresVEN_NMVEND: TStringField
      FieldName = 'VEN_NMVEND'
      Size = 40
    end
    object tbVendedoresVEN_ENDVEN: TStringField
      FieldName = 'VEN_ENDVEN'
      Size = 40
    end
    object tbVendedoresVEN_BAVEND: TStringField
      FieldName = 'VEN_BAVEND'
    end
    object tbVendedoresVEN_CIVEND: TStringField
      FieldName = 'VEN_CIVEND'
    end
    object tbVendedoresVEN_UFVEND: TStringField
      FieldName = 'VEN_UFVEND'
      Size = 2
    end
    object tbVendedoresVEN_CEPVEN: TStringField
      Alignment = taRightJustify
      FieldName = 'VEN_CEPVEN'
      EditMask = '99999-99;0;_'
      Size = 8
    end
    object tbVendedoresVEN_NRFONE: TStringField
      Alignment = taRightJustify
      FieldName = 'VEN_NRFONE'
      EditMask = '(99)9999-9999;0;_'
      Size = 10
    end
    object tbVendedoresVEN_PECOMI: TFloatField
      FieldName = 'VEN_PECOMI'
    end
  end
  object tbClientes: TTable
    AfterPost = tbClientesAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACCLI.DBF'
    Left = 208
    Top = 112
    object tbClientesCLI_CDCLIE: TStringField
      FieldName = 'CLI_CDCLIE'
      Size = 7
    end
    object tbClientesCLI_NMCLIE: TStringField
      FieldName = 'CLI_NMCLIE'
      Size = 40
    end
    object tbClientesCLI_DTNASC: TStringField
      Alignment = taRightJustify
      DisplayWidth = 10
      FieldName = 'CLI_DTNASC'
      EditMask = '99/99/9999;1;_'
      Size = 10
    end
    object tbClientesCLI_ENCLIE: TStringField
      FieldName = 'CLI_ENCLIE'
      Size = 40
    end
    object tbClientesCLI_CDBAIR: TStringField
      FieldName = 'CLI_CDBAIR'
      Size = 3
    end
    object tbClientesCLI_NMCONJ: TStringField
      FieldName = 'CLI_NMCONJ'
      Size = 40
    end
    object tbClientesCLI_NOMPAI: TStringField
      FieldName = 'CLI_NOMPAI'
      Size = 40
    end
    object tbClientesCLI_NOMMAE: TStringField
      FieldName = 'CLI_NOMMAE'
      Size = 40
    end
    object tbClientesCLI_NRFONE: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_NRFONE'
      EditMask = '(99)9999-9999;0;_'
      Size = 10
    end
    object tbClientesCLI_NUMFAX: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_NUMFAX'
      EditMask = '(99)9999-9999;0;_'
      Size = 10
    end
    object tbClientesCLI_CDAVAL: TStringField
      FieldName = 'CLI_CDAVAL'
      Size = 7
    end
    object tbClientesCLI_CONT01: TStringField
      FieldName = 'CLI_CONT01'
    end
    object tbClientesCLI_FONE01: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_FONE01'
      EditMask = '(99)9999-9999;0;_'
      Size = 10
    end
    object tbClientesCLI_CNPF01: TStringField
      FieldName = 'CLI_CNPF01'
      Size = 11
    end
    object tbClientesCLI_CONT02: TStringField
      FieldName = 'CLI_CONT02'
    end
    object tbClientesCLI_FONE02: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_FONE02'
      EditMask = '(99)9999-9999;0;_'
      Size = 10
    end
    object tbClientesCLI_CDCIDA: TStringField
      FieldName = 'CLI_CDCIDA'
      Size = 3
    end
    object tbClientesCLI_CEPCLI: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_CEPCLI'
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object tbClientesCLI_ESTCIV: TStringField
      FieldName = 'CLI_ESTCIV'
      Size = 1
    end
    object tbClientesCLI_CPFCGC: TStringField
      Alignment = taRightJustify
      FieldName = 'CLI_CPFCGC'
      EditMask = '99.999.999-99;0;_'
      Size = 14
    end
    object tbClientesCLI_IDEINS: TStringField
      FieldName = 'CLI_IDEINS'
      Size = 15
    end
    object tbClientesCLI_OREMIS: TStringField
      FieldName = 'CLI_OREMIS'
      Size = 5
    end
    object tbClientesCLI_UFEMIS: TStringField
      FieldName = 'CLI_UFEMIS'
      Size = 2
    end
    object tbClientesCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      Size = 2
    end
    object tbClientesCLI_CDUSUA: TStringField
      FieldName = 'CLI_CDUSUA'
      Size = 3
    end
  end
  object tbPedidos: TTable
    DatabaseName = 'InfoModa'
    TableName = 'SACPED.db'
    Left = 208
    Top = 168
    object tbPedidosPED_NRPEDI: TStringField
      Alignment = taRightJustify
      FieldName = 'PED_NRPEDI'
      Size = 7
    end
    object tbPedidosPED_ORDSER: TStringField
      Alignment = taRightJustify
      FieldName = 'PED_ORDSER'
      Size = 6
    end
    object tbPedidosPED_QTPEDI: TFloatField
      FieldName = 'PED_QTPEDI'
    end
    object tbPedidosPED_QTATEN: TFloatField
      FieldName = 'PED_QTATEN'
    end
    object tbPedidosPED_DTPEDI: TDateField
      Alignment = taRightJustify
      FieldName = 'PED_DTPEDI'
    end
    object tbPedidosPED_HOPEDI: TStringField
      Alignment = taRightJustify
      FieldName = 'PED_HOPEDI'
      EditMask = '99:99;1;_'
      Size = 5
    end
    object tbPedidosPED_CDVEND: TStringField
      FieldName = 'PED_CDVEND'
      Size = 6
    end
    object tbPedidosPED_NMVEND: TStringField
      FieldKind = fkLookup
      FieldName = 'PED_NMVEND'
      LookupDataSet = qryVendedores
      LookupKeyFields = 'VEN_CDVEND'
      LookupResultField = 'VEN_NMVEND'
      KeyFields = 'PED_CDVEND'
      Size = 40
      Lookup = True
    end
    object tbPedidosPED_NRLOTE: TStringField
      FieldName = 'PED_NRLOTE'
      Size = 7
    end
    object tbPedidosPED_CDCLIE: TStringField
      FieldName = 'PED_CDCLIE'
      Size = 7
    end
    object tbPedidosPED_NMCLIE: TStringField
      FieldKind = fkLookup
      FieldName = 'PED_NMCLIE'
      LookupDataSet = qryClientes
      LookupKeyFields = 'CLI_CDCLIE'
      LookupResultField = 'CLI_NMCLIE'
      KeyFields = 'PED_CDCLIE'
      Size = 40
      Lookup = True
    end
    object tbPedidosPED_CDUSUA: TStringField
      FieldName = 'PED_CDUSUA'
      Size = 3
    end
    object tbPedidosPED_FLLOTE: TStringField
      FieldName = 'PED_FLLOTE'
      Size = 1
    end
    object tbPedidosPED_TOPEDI: TCurrencyField
      FieldName = 'PED_TOPEDI'
      DisplayFormat = '###,###,##0.#0'
      EditFormat = '###,###,##0.#0'
      currency = False
    end
    object tbPedidosPED_FLSITU: TStringField
      FieldName = 'PED_FLSITU'
      Size = 1
    end
  end
  object tbItensPedido: TTable
    OnCalcFields = tbItensPedidoCalcFields
    DatabaseName = 'InfoModa'
    MasterSource = frmCadPedidos.dsPedido
    TableName = 'SACITP.db'
    Left = 208
    Top = 224
    object tbItensPedidoITP_NRPEDI: TStringField
      FieldName = 'ITP_NRPEDI'
      Size = 7
    end
    object tbItensPedidoITP_NRITEM: TStringField
      FieldName = 'ITP_NRITEM'
      Size = 3
    end
    object tbItensPedidoITP_CDPROD: TStringField
      FieldName = 'ITP_CDPROD'
      Size = 13
    end
    object tbItensPedidoITP_NMPROD: TStringField
      FieldKind = fkLookup
      FieldName = 'ITP_NMPROD'
      LookupDataSet = qryProduto
      LookupKeyFields = 'PRO_CDPROD'
      LookupResultField = 'PRO_NMPROD'
      KeyFields = 'ITP_CDPROD'
      Size = 40
      Lookup = True
    end
    object tbItensPedidoITP_TAMANH: TStringField
      FieldName = 'ITP_TAMANH'
      Size = 2
    end
    object tbItensPedidoITP_QTPROD: TFloatField
      FieldName = 'ITP_QTPROD'
    end
    object tbItensPedidoITP_VLUNIT: TCurrencyField
      FieldName = 'ITP_VLUNIT'
    end
    object tbItensPedidoITP_VLUNI2: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'ITP_VLUNI2'
      LookupDataSet = qryProduto
      LookupKeyFields = 'PRO_CDPROD'
      LookupResultField = 'PRO_VLVEND'
      KeyFields = 'ITP_CDPROD'
      Lookup = True
    end
    object tbItensPedidoITE_SUBTOT: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ITE_SUBTOT'
      Calculated = True
    end
    object tbItensPedidoITP_FLSITU: TStringField
      FieldName = 'ITP_FLSITU'
      Size = 1
    end
    object tbItensPedidoITP_NMPRO2: TStringField
      FieldKind = fkLookup
      FieldName = 'ITP_NMPRO2'
      LookupDataSet = qryProduto
      LookupKeyFields = 'PRO_CDPROD'
      LookupResultField = 'PRO_NMPROD'
      KeyFields = 'ITP_CDPROD'
      Size = 40
      Lookup = True
    end
    object tbItensPedidoITP_DESTAM: TStringField
      FieldKind = fkLookup
      FieldName = 'ITP_DESTAM'
      LookupDataSet = qryTamanho
      LookupKeyFields = 'TAM_TAMANH'
      LookupResultField = 'TAM_TAMANH'
      KeyFields = 'ITP_TAMANH'
      Size = 2
      Lookup = True
    end
  end
  object qryClientes: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACCLI order by CLI_NMCLIE')
    Left = 280
    Top = 112
  end
  object qryVendedores: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACVEN order by VEN_NMVEND')
    Left = 280
    Top = 56
  end
  object qryTamanho: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACTAM order by TAM_NMDESC')
    Left = 352
    Top = 168
  end
  object tbTamanho: TTable
    DatabaseName = 'InfoModa'
    TableName = 'SACTAM.DBF'
    Left = 352
    Top = 112
    object tbTamanhoTAM_CDPROD: TStringField
      FieldName = 'TAM_CDPROD'
      Size = 13
    end
    object tbTamanhoTAM_TAMANH: TStringField
      FieldName = 'TAM_TAMANH'
      Size = 2
    end
    object tbTamanhoTAM_NMDESC: TStringField
      FieldName = 'TAM_NMDESC'
      Size = 25
    end
  end
  object qryTOTPEDIDO: TQuery
    OnCalcFields = qryTOTPEDIDOCalcFields
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACITP  Where ITP_NRPEDI=:pNRPEDI'
      '')
    Left = 288
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
        ParamType = ptInput
        Value = ''
      end>
    object qryTOTPEDIDOITP_NRPEDI: TStringField
      FieldName = 'ITP_NRPEDI'
      Origin = 'INFOMODA."SACITP.DB".ITP_NRPEDI'
      Size = 7
    end
    object qryTOTPEDIDOITP_NRITEM: TStringField
      FieldName = 'ITP_NRITEM'
      Origin = 'INFOMODA."SACITP.DB".ITP_NRITEM'
      Size = 3
    end
    object qryTOTPEDIDOITP_CDPROD: TStringField
      FieldName = 'ITP_CDPROD'
      Origin = 'INFOMODA."SACITP.DB".ITP_CDPROD'
      Size = 13
    end
    object qryTOTPEDIDOITP_QTPROD: TFloatField
      FieldName = 'ITP_QTPROD'
      Origin = 'INFOMODA."SACITP.DB".ITP_QTPROD'
    end
    object qryTOTPEDIDOITP_VLUNIT: TCurrencyField
      FieldName = 'ITP_VLUNIT'
      Origin = 'INFOMODA."SACITP.DB".ITP_VLUNIT'
    end
    object qryTOTPEDIDOITE_VLUNI2: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'ITE_VLUNI2'
      LookupDataSet = qryProduto
      LookupKeyFields = 'PRO_CDBARR'
      LookupResultField = 'PRO_VLVEND'
      KeyFields = 'ITP_CDPROD'
      Lookup = True
    end
    object qryTOTPEDIDOITE_SUBTOT: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'ITE_SUBTOT'
      Calculated = True
    end
  end
  object tbUsuarios: TTable
    AfterPost = tbUsuariosAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACSEN.db'
    Left = 344
    Top = 64
    object tbUsuariosSEN_CDUSUA: TStringField
      FieldName = 'SEN_CDUSUA'
      Size = 3
    end
    object tbUsuariosSEN_NMUSUA: TStringField
      FieldName = 'SEN_NMUSUA'
      Size = 40
    end
    object tbUsuariosSEN_SNATUA: TStringField
      FieldName = 'SEN_SNATUA'
      Size = 6
    end
    object tbUsuariosSEN_NMCARG: TStringField
      FieldName = 'SEN_NMCARG'
      Size = 30
    end
    object tbUsuariosSEN_NMTERM: TStringField
      FieldName = 'SEN_NMTERM'
    end
    object tbUsuariosSEN_FLSUPE: TBooleanField
      FieldName = 'SEN_FLSUPE'
    end
    object tbUsuariosSEN_CDGRUP: TStringField
      FieldName = 'SEN_CDGRUP'
      Size = 2
    end
    object tbUsuariosSEN_DTATUA: TDateField
      Alignment = taRightJustify
      FieldName = 'SEN_DTATUA'
      EditMask = '99/99/9999;1;_'
    end
    object tbUsuariosSEN_FLEXCL: TBooleanField
      FieldName = 'SEN_FLEXCL'
    end
  end
  object qryPedido: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACPED ')
    Left = 280
    Top = 168
    object qryPedidoPED_NRPEDI: TStringField
      FieldName = 'PED_NRPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_NRPEDI'
      Size = 7
    end
    object qryPedidoPED_ORDSER: TStringField
      FieldName = 'PED_ORDSER'
      Origin = 'INFOMODA."SACPED.DB".PED_ORDSER'
      Size = 6
    end
    object qryPedidoPED_QTPEDI: TFloatField
      FieldName = 'PED_QTPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_QTPEDI'
    end
    object qryPedidoPED_QTATEN: TFloatField
      FieldName = 'PED_QTATEN'
      Origin = 'INFOMODA."SACPED.DB".PED_QTATEN'
    end
    object qryPedidoPED_DTPEDI: TDateField
      FieldName = 'PED_DTPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_DTPEDI'
    end
    object qryPedidoPED_HOPEDI: TStringField
      FieldName = 'PED_HOPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_HOPEDI'
      Size = 5
    end
    object qryPedidoPED_CDVEND: TStringField
      FieldName = 'PED_CDVEND'
      Origin = 'INFOMODA."SACPED.DB".PED_CDVEND'
      Size = 6
    end
    object qryPedidoPED_NRLOTE: TStringField
      Alignment = taRightJustify
      FieldName = 'PED_NRLOTE'
      Origin = 'INFOMODA."SACPED.DB".PED_NRLOTE'
      Size = 7
    end
    object qryPedidoPED_FLLOTE: TStringField
      FieldName = 'PED_FLLOTE'
      Origin = 'INFOMODA."SACPED.DB".PED_FLLOTE'
      Size = 1
    end
    object qryPedidoPED_CDCLIE: TStringField
      FieldName = 'PED_CDCLIE'
      Origin = 'INFOMODA."SACPED.DB".PED_CDCLIE'
      Size = 7
    end
    object qryPedidoPED_NMCLIE: TStringField
      FieldKind = fkLookup
      FieldName = 'PED_NMCLIE'
      LookupDataSet = qryClientes
      LookupKeyFields = 'CLI_CDCLIE'
      LookupResultField = 'CLI_NMCLIE'
      KeyFields = 'PED_CDCLIE'
      Size = 40
      Lookup = True
    end
    object qryPedidoPED_NMVEND: TStringField
      FieldKind = fkLookup
      FieldName = 'PED_NMVEND'
      LookupDataSet = qryVendedores
      LookupKeyFields = 'VEN_CDVEND'
      LookupResultField = 'VEN_NMVEND'
      KeyFields = 'PED_CDVEND'
      Size = 40
      Lookup = True
    end
    object qryPedidoPED_TOPEDI: TCurrencyField
      FieldName = 'PED_TOPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_TOPEDI'
    end
  end
  object qryModelo: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACMDP')
    Left = 128
    Top = 16
    object qryModeloMDP_CDMODE: TStringField
      FieldName = 'MDP_CDMODE'
      Origin = 'INFOMODA."SACMDP.DB".MDP_CDMODE'
      Size = 10
    end
    object qryModeloMDP_CDPROD: TStringField
      FieldName = 'MDP_CDPROD'
      Origin = 'INFOMODA."SACMDP.DB".MDP_CDPROD'
      Size = 13
    end
    object qryModeloMDP_DTPROD: TMemoField
      FieldName = 'MDP_DTPROD'
      Origin = 'INFOMODA."SACMDP.DB".MDP_DTPROD'
      BlobType = ftMemo
      Size = 2
    end
    object qryModeloMDP_IMGFRE: TGraphicField
      FieldName = 'MDP_IMGFRE'
      Origin = 'INFOMODA."SACMDP.DB".MDP_IMGFRE'
      BlobType = ftGraphic
    end
    object qryModeloMDP_NMMODE: TStringField
      FieldKind = fkLookup
      FieldName = 'MDP_NMMODE'
      LookupDataSet = qryProduto
      LookupKeyFields = 'PRO_CDPROD'
      LookupResultField = 'PRO_NMPROD'
      KeyFields = 'MDP_CDPROD'
      Size = 40
      Lookup = True
    end
  end
  object qryItensModelo: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACIMP')
    Left = 112
    Top = 128
    object StringField1: TStringField
      FieldName = 'IMP_CDMODE'
      Origin = 'INFOMODA."SACIMP.DB".IMP_CDMODE'
      Size = 10
    end
    object StringField2: TStringField
      FieldName = 'IMP_NRITEM'
      Origin = 'INFOMODA."SACIMP.DB".IMP_NRITEM'
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'IMP_MTPRIM'
      Origin = 'INFOMODA."SACIMP.DB".IMP_MTPRIM'
      Size = 6
    end
    object qryItensModeloIMP_NMDESC: TStringField
      FieldKind = fkLookup
      FieldName = 'IMP_NMDESC'
      LookupDataSet = qryMateriaPrima
      LookupKeyFields = 'MAT_CDMATE'
      LookupResultField = 'MAT_NMMATE'
      KeyFields = 'IMP_MTPRIM'
      Size = 40
      Lookup = True
    end
    object FloatField1: TFloatField
      FieldName = 'IMP_QTMATE'
      Origin = 'INFOMODA."SACIMP.DB".IMP_QTMATE'
    end
  end
  object tbGrade: TTable
    AfterPost = tbGradeAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACGRA.db'
    Left = 368
    Top = 224
    object tbGradeGRA_NRPEDI: TStringField
      FieldName = 'GRA_NRPEDI'
      Size = 7
    end
    object tbGradeGRA_CDTAMA: TStringField
      FieldName = 'GRA_CDTAMA'
      Size = 2
    end
    object tbGradeGRA_TAMANH: TStringField
      FieldName = 'GRA_TAMANH'
      Size = 2
    end
    object tbGradeGRA_QTTAMA: TFloatField
      FieldName = 'GRA_QTTAMA'
    end
    object tbGradeGRA_CODCOR: TStringField
      FieldName = 'GRA_CODCOR'
      Visible = False
      Size = 3
    end
    object tbGradeGRA_NOMCOR: TStringField
      FieldKind = fkLookup
      FieldName = 'GRA_NOMCOR'
      LookupDataSet = qryCores
      LookupKeyFields = 'COR_CODCOR'
      LookupResultField = 'COR_NOMCOR'
      KeyFields = 'GRA_CODCOR'
      Size = 40
      Lookup = True
    end
    object tbGradeGRA_NMCOR2: TStringField
      FieldName = 'GRA_NMCOR2'
      Size = 40
    end
    object tbGradeGRA_CDCOR2: TStringField
      FieldKind = fkLookup
      FieldName = 'GRA_CDCOR2'
      LookupDataSet = qryCores
      LookupKeyFields = 'COR_NOMCOR'
      LookupResultField = 'COR_CODCOR'
      KeyFields = 'GRA_NMCOR2'
      Size = 3
      Lookup = True
    end
  end
  object tbGradeTamanho: TTable
    AfterPost = tbGradeTamanhoAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACGTM.DB'
    Left = 376
    Top = 272
    object tbGradeTamanhoGTM_NRPEDI: TStringField
      FieldName = 'GTM_NRPEDI'
      Size = 7
    end
    object tbGradeTamanhoGTM_NRLOTE: TStringField
      FieldName = 'GTM_NRLOTE'
      Size = 7
    end
    object tbGradeTamanhoGTM_CDPROD: TStringField
      FieldName = 'GTM_CDPROD'
      Size = 13
    end
    object tbGradeTamanhoGTM_CDTAMA: TStringField
      FieldName = 'GTM_CDTAMA'
      Size = 2
    end
    object tbGradeTamanhoGTM_CODCOR: TStringField
      FieldName = 'GTM_CODCOR'
      Size = 3
    end
    object tbGradeTamanhoGTM_NOMCOR: TStringField
      FieldKind = fkLookup
      FieldName = 'GTM_NOMCOR'
      LookupDataSet = qryCores
      LookupKeyFields = 'COR_CODCOR'
      LookupResultField = 'COR_NOMCOR'
      KeyFields = 'GTM_CODCOR'
      Size = 40
      Lookup = True
    end
    object tbGradeTamanhoGTM_TAMANH: TStringField
      FieldName = 'GTM_TAMANH'
      Size = 2
    end
    object tbGradeTamanhoGTM_QTPROD: TFloatField
      FieldName = 'GTM_QTPROD'
    end
    object tbGradeTamanhoGTM_FLSITU: TStringField
      FieldName = 'GTM_FLSITU'
      Size = 1
    end
  end
  object qryIncGrade: TQuery
    DatabaseName = 'InfoModa'
    Left = 424
    Top = 120
  end
  object qryItensPedidos: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACGTM Where GTM_NRPEDI=:pNRPEDI')
    Left = 429
    Top = 177
    ParamData = <
      item
        DataType = ftString
        Name = 'pNRPEDI'
        ParamType = ptInput
        Value = ''
      end>
    object qryItensPedidosGTM_NRPEDI: TStringField
      FieldName = 'GTM_NRPEDI'
      Origin = 'INFOMODA."SACGTM.DB".GTM_NRPEDI'
      Size = 7
    end
    object qryItensPedidosGTM_CDPROD: TStringField
      FieldName = 'GTM_CDPROD'
      Origin = 'INFOMODA."SACGTM.DB".GTM_CDPROD'
      Size = 13
    end
    object qryItensPedidosGTM_NMPROD: TStringField
      FieldKind = fkLookup
      FieldName = 'GTM_NMPROD'
      LookupDataSet = qryProduto
      LookupKeyFields = 'PRO_CDPROD'
      LookupResultField = 'PRO_NMPROD'
      KeyFields = 'GTM_CDPROD'
      Size = 40
      Lookup = True
    end
    object qryItensPedidosGTM_CDTAMA: TStringField
      FieldName = 'GTM_CDTAMA'
      Origin = 'INFOMODA."SACGTM.DB".GTM_CDTAMA'
      Size = 2
    end
    object qryItensPedidosGTM_TAMANH: TStringField
      FieldName = 'GTM_TAMANH'
      Origin = 'INFOMODA."SACGTM.DB".GTM_TAMANH'
      Size = 2
    end
    object qryItensPedidosGTM_QTPROD: TFloatField
      FieldName = 'GTM_QTPROD'
      Origin = 'INFOMODA."SACGTM.DB".GTM_QTPROD'
    end
    object qryItensPedidosGTM_VLUNIT: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'GTM_VLUNIT'
      LookupDataSet = qryProduto
      LookupKeyFields = 'PRO_CDPROD'
      LookupResultField = 'PRO_VLVEND'
      KeyFields = 'GTM_CDPROD'
      currency = False
      Lookup = True
    end
    object qryItensPedidosGTM_CODCOR: TStringField
      FieldName = 'GTM_CODCOR'
      Origin = 'INFOMODA."SACGTM.DB".GTM_CODCOR'
      Size = 3
    end
    object qryItensPedidosGTM_NOMCOR: TStringField
      FieldKind = fkLookup
      FieldName = 'GTM_NOMCOR'
      LookupDataSet = qryCores
      LookupKeyFields = 'COR_CODCOR'
      LookupResultField = 'COR_NOMCOR'
      KeyFields = 'GTM_CODCOR'
      Size = 40
      Lookup = True
    end
  end
  object qryItens: TQuery
    DatabaseName = 'InfoModa'
    Left = 208
    Top = 272
  end
  object qryGrade: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACGRA')
    Left = 432
    Top = 232
  end
  object qryCidade: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACCID order by CID_NMCIDA')
    Left = 488
    Top = 16
    object qryCidadeCID_CDCIDA: TStringField
      FieldName = 'CID_CDCIDA'
      Origin = 'INFOMODA."SACCID.DBF".CID_CDCIDA'
      Size = 3
    end
    object qryCidadeCID_NMCIDA: TStringField
      FieldName = 'CID_NMCIDA'
      Origin = 'INFOMODA."SACCID.DBF".CID_NMCIDA'
      Size = 30
    end
    object qryCidadeCID_UFCIDA: TStringField
      FieldName = 'CID_UFCIDA'
      Origin = 'INFOMODA."SACCID.DBF".CID_UFCIDA'
      Size = 2
    end
    object qryCidadeCID_CDZONA: TStringField
      FieldName = 'CID_CDZONA'
      Origin = 'INFOMODA."SACCID.DBF".CID_CDZONA'
      Size = 2
    end
  end
  object qryBairro: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACBAI order by BAI_NMBAIR')
    Left = 496
    Top = 72
    object qryBairroBAI_CDBAIR: TStringField
      FieldName = 'BAI_CDBAIR'
      Origin = 'INFOMODA."SACBAI.DBF".BAI_CDBAIR'
      Size = 3
    end
    object qryBairroBAI_NMBAIR: TStringField
      FieldName = 'BAI_NMBAIR'
      Origin = 'INFOMODA."SACBAI.DBF".BAI_NMBAIR'
    end
    object qryBairroBAI_CDZONA: TStringField
      FieldName = 'BAI_CDZONA'
      Origin = 'INFOMODA."SACBAI.DBF".BAI_CDZONA'
      Size = 2
    end
  end
  object qryProdutosLote: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACGTM')
    Left = 512
    Top = 120
  end
  object qryIncLote: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACLOT')
    Left = 520
    Top = 176
  end
  object qryItensLote: TQuery
    DatabaseName = 'InfoModa'
    Left = 520
    Top = 232
  end
  object tbLotes: TTable
    AfterPost = tbLotesAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACLOT.db'
    Left = 512
    Top = 280
  end
  object qryItens2: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACGTM')
    Left = 264
    Top = 296
    object qryItens2GTM_NRPEDI: TStringField
      FieldName = 'GTM_NRPEDI'
      Origin = 'INFOMODA."SACGTM.DB".GTM_NRPEDI'
      Size = 7
    end
    object qryItens2GTM_CDPROD: TStringField
      FieldName = 'GTM_CDPROD'
      Origin = 'INFOMODA."SACGTM.DB".GTM_CDPROD'
      Size = 13
    end
    object qryItens2GTM_CDTAMA: TStringField
      FieldName = 'GTM_CDTAMA'
      Origin = 'INFOMODA."SACGTM.DB".GTM_CDTAMA'
      Size = 2
    end
    object qryItens2GTM_TAMANH: TStringField
      FieldName = 'GTM_TAMANH'
      Origin = 'INFOMODA."SACGTM.DB".GTM_TAMANH'
      Size = 2
    end
    object qryItens2GTM_QTPROD: TFloatField
      FieldName = 'GTM_QTPROD'
      Origin = 'INFOMODA."SACGTM.DB".GTM_QTPROD'
    end
    object qryItens2GTM_VLUNIT: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'GTM_VLUNIT'
      LookupDataSet = tbItensPedido
      LookupKeyFields = 'ITP_CDPROD'
      LookupResultField = 'ITP_VLUNIT'
      KeyFields = 'GTM_CDPROD'
      Lookup = True
    end
  end
  object qryCores: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACCOR order by COR_NOMCOR')
    Left = 440
    Top = 288
    object qryCoresCOR_CODCOR: TStringField
      FieldName = 'COR_CODCOR'
      Origin = 'INFOMODA."SACCOR.DBF".COR_CODCOR'
      Size = 3
    end
    object qryCoresCOR_NOMCOR: TStringField
      FieldName = 'COR_NOMCOR'
      Origin = 'INFOMODA."SACCOR.DBF".COR_NOMCOR'
      Size = 40
    end
  end
  object qryExcluirItens: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Delete  from SACIMP Where (IMP_CDMODE = :pCDMODE)')
    Left = 368
    Top = 328
    ParamData = <
      item
        DataType = ftString
        Name = 'pCDMODE'
        ParamType = ptInput
        Value = ''
      end>
  end
  object tbEtiquetas: TTable
    AfterPost = tbEtiquetasAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACEQT.db'
    Left = 24
    Top = 304
    object tbEtiquetasEQT_CDPROD: TStringField
      FieldName = 'EQT_CDPROD'
      Size = 13
    end
    object tbEtiquetasEQT_NMPROD: TStringField
      FieldName = 'EQT_NMPROD'
      Size = 50
    end
    object tbEtiquetasEQT_VLVEND: TFloatField
      FieldName = 'EQT_VLVEND'
    end
    object tbEtiquetasEQT_IMGBAR: TGraphicField
      FieldName = 'EQT_IMGBAR'
      BlobType = ftGraphic
    end
  end
  object tbGrade2: TTable
    AfterPost = tbGrade2AfterPost
    OnCalcFields = tbGrade2CalcFields
    DatabaseName = 'InfoModa'
    TableName = 'SACGRD.DB'
    Left = 440
    Top = 344
    object tbGrade2GRD_NRPEDI: TStringField
      FieldName = 'GRD_NRPEDI'
      Size = 7
    end
    object tbGrade2GRD_CDPROD: TStringField
      FieldName = 'GRD_CDPROD'
      Size = 13
    end
    object tbGrade2GRD_CODCOR: TStringField
      FieldName = 'GRD_CODCOR'
      Size = 3
    end
    object tbGrade2GRD_NOMCOR: TStringField
      FieldKind = fkLookup
      FieldName = 'GRD_NOMCOR'
      LookupDataSet = qryCores
      LookupKeyFields = 'COR_CODCOR'
      LookupResultField = 'COR_NOMCOR'
      KeyFields = 'GRD_CODCOR'
      Size = 30
      Lookup = True
    end
    object tbGrade2GRD_TAMA34: TFloatField
      FieldName = 'GRD_TAMA34'
    end
    object tbGrade2GRD_TAMA36: TFloatField
      FieldName = 'GRD_TAMA36'
    end
    object tbGrade2GRD_TAMA38: TFloatField
      FieldName = 'GRD_TAMA38'
    end
    object tbGrade2GRD_TAMA40: TFloatField
      FieldName = 'GRD_TAMA40'
    end
    object tbGrade2GRD_TAMA42: TFloatField
      FieldName = 'GRD_TAMA42'
    end
    object tbGrade2GRD_TAMA44: TFloatField
      FieldName = 'GRD_TAMA44'
    end
    object tbGrade2GRD_TAMA46: TFloatField
      FieldName = 'GRD_TAMA46'
    end
    object tbGrade2GRD_TAMA48: TFloatField
      FieldName = 'GRD_TAMA48'
    end
    object tbGrade2GRD_TAMA50: TFloatField
      FieldName = 'GRD_TAMA50'
    end
    object tbGrade2GRD_TOPROD: TFloatField
      FieldKind = fkCalculated
      FieldName = 'GRD_TOPROD'
      Calculated = True
    end
  end
  object qryPlanos: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from "SACPLA.DB" order by PLA_NMPLAN')
    Left = 104
    Top = 312
    object qryPlanosPLA_CDPLAN: TStringField
      FieldName = 'PLA_CDPLAN'
      Origin = 'INFOMODA."SACPLA.DB".PLA_CDPLAN'
      Size = 2
    end
    object qryPlanosPLA_NMPLAN: TStringField
      FieldName = 'PLA_NMPLAN'
      Origin = 'INFOMODA."SACPLA.DB".PLA_NMPLAN'
      Size = 30
    end
    object qryPlanosPLA_NRPARC: TFloatField
      FieldName = 'PLA_NRPARC'
      Origin = 'INFOMODA."SACPLA.DB".PLA_NRPARC'
    end
    object qryPlanosPLA_PEJURO: TFloatField
      FieldName = 'PLA_PEJURO'
      Origin = 'INFOMODA."SACPLA.DB".PLA_PEJURO'
    end
    object qryPlanosPLA_PEENTR: TFloatField
      FieldName = 'PLA_PEENTR'
      Origin = 'INFOMODA."SACPLA.DB".PLA_PEENTR'
    end
    object qryPlanosPLA_CDUSUA: TStringField
      FieldName = 'PLA_CDUSUA'
      Origin = 'INFOMODA."SACPLA.DB".PLA_CDUSUA'
      Size = 3
    end
  end
  object qryParcelaFatura: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from "SACCTR.DB"')
    Left = 160
    Top = 344
  end
  object tbParcelas: TTable
    AfterInsert = tbParcelasAfterInsert
    AfterPost = tbParcelasAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACCRT.DB'
    Left = 232
    Top = 336
    object tbParcelasCTR_NRPARC: TStringField
      FieldName = 'CTR_NRPARC'
      Size = 3
    end
    object tbParcelasCTR_VLPARC: TCurrencyField
      FieldName = 'CTR_VLPARC'
    end
    object tbParcelasCTR_DTFATU: TDateField
      Alignment = taRightJustify
      FieldName = 'CTR_DTFATU'
      EditMask = '99/99/9999;1;_'
    end
    object tbParcelasCTR_DTVENC: TDateField
      Alignment = taRightJustify
      FieldName = 'CTR_DTVENC'
      EditMask = '99/99/9999;1;_'
    end
    object tbParcelasCTR_CDBANC: TStringField
      FieldName = 'CTR_CDBANC'
      Size = 3
    end
    object tbParcelasCTR_NRAGEN: TStringField
      FieldName = 'CTR_NRAGEN'
      EditMask = '99999;1;_'
      Size = 5
    end
    object tbParcelasCTR_NRCHEQ: TStringField
      FieldName = 'CTR_NRCHEQ'
      EditMask = '9999999999;1;_'
      Size = 10
    end
    object tbParcelasCTR_CLCLIE: TStringField
      FieldName = 'CTR_CLCLIE'
      Size = 7
    end
    object tbParcelasCTR_NRPEDI: TStringField
      FieldName = 'CTR_NRPEDI'
      Size = 7
    end
    object tbParcelasCTR_CDPLAN: TStringField
      FieldName = 'CTR_CDPLAN'
      Size = 2
    end
    object tbParcelasCTR_TOFATU: TCurrencyField
      FieldName = 'CTR_TOFATU'
    end
    object tbParcelasCTR_VLENTR: TCurrencyField
      FieldName = 'CTR_VLENTR'
    end
    object tbParcelasCTR_FLSITU: TStringField
      FieldName = 'CTR_FLSITU'
      Size = 1
    end
    object tbParcelasCTR_CDUSUA: TStringField
      FieldName = 'CTR_CDUSUA'
      Size = 3
    end
    object tbParcelasCRT_NMBANC: TStringField
      FieldKind = fkLookup
      FieldName = 'CRT_NMBANC'
      LookupDataSet = qryBancos
      LookupKeyFields = 'BAN_CDBANC'
      LookupResultField = 'BAN_NMBANC'
      KeyFields = 'CTR_CDBANC'
      Size = 30
      Lookup = True
    end
  end
  object qryBancos: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from "SACBAN.DBF"')
    Left = 320
    Top = 16
  end
  object tbPlanos: TTable
    AfterPost = tbPlanosAfterPost
    DatabaseName = 'InfoModa'
    TableName = 'SACPLA.db'
    Left = 416
    Top = 64
    object tbPlanosPLA_CDPLAN: TStringField
      Alignment = taRightJustify
      FieldName = 'PLA_CDPLAN'
      Size = 2
    end
    object tbPlanosPLA_NMPLAN: TStringField
      FieldName = 'PLA_NMPLAN'
      Size = 30
    end
    object tbPlanosPLA_NRPARC: TFloatField
      FieldName = 'PLA_NRPARC'
    end
    object tbPlanosPLA_PEJURO: TFloatField
      FieldName = 'PLA_PEJURO'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
    end
    object tbPlanosPLA_PEENTR: TFloatField
      FieldName = 'PLA_PEENTR'
      DisplayFormat = '##0.#0'
      EditFormat = '##0.#0'
    end
    object tbPlanosPLA_CDUSUA: TStringField
      Alignment = taRightJustify
      FieldName = 'PLA_CDUSUA'
      Size = 3
    end
  end
end
