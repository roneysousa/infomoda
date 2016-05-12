object frmRelPedidosPediodo: TfrmRelPedidosPediodo
  Left = 199
  Top = 112
  Width = 609
  Height = 375
  VertScrollBar.Position = 8
  Caption = 'frmRelPedidosPediodo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object qrPedidos: TQuickRep
    Left = 0
    Top = -8
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qryPedidos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    ReportTitle = 'Visualizar Impress'#227'o'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        325.437500000000000000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 2
        Top = 104
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          5.291666666666667000
          275.166666666666700000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#186'. PEDIDO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 77
        Top = 104
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          203.729166666666700000
          275.166666666666700000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CLIENTE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 333
        Top = 104
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          881.062500000000000000
          275.166666666666700000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DT.PEDIDO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 418
        Top = 104
        Width = 83
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1105.958333333333000000
          275.166666666666700000
          219.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DT.ENTREGA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 516
        Top = 104
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1365.250000000000000000
          275.166666666666700000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QT.PE'#199'AS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 623
        Top = 104
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1648.354166666667000000
          275.166666666666700000
          121.708333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VALOR'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 684
        Top = 104
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1809.750000000000000000
          275.166666666666700000
          84.666666666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DIAS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 474
        Top = 5
        Width = 149
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          13.229166666666670000
          394.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RELAT'#211'RIO DE PEDIDO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtPeriodo: TQRLabel
        Left = 474
        Top = 22
        Width = 217
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          58.208333333333330000
          574.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PER'#205'ODO : 99/99/9999 '#192' 99/99/9999'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 1
        Top = 100
        Width = 718
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psDot
        Size.Values = (
          5.291666666666667000
          2.645833333333333000
          264.583333333333400000
          1899.708333333333000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object txtUSUARIO: TQRLabel
        Left = 474
        Top = 39
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          103.187500000000000000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'USU'#193'RIO :'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBImage1: TQRDBImage
        Left = 3
        Top = 2
        Width = 147
        Height = 97
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          256.645833333333400000
          7.937500000000000000
          5.291666666666667000
          388.937500000000000000)
        DataField = 'PAR_IMLOGO'
        DataSet = dmInfoModa.tbParametros
        Stretch = True
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 161
      Width = 718
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        52.916666666666670000
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 1
        Top = 2
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2.645833333333333000
          5.291666666666667000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryPedidos
        DataField = 'PED_ORDSER'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 77
        Top = 2
        Width = 252
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          203.729166666666700000
          5.291666666666667000
          666.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryPedidos
        DataField = 'PED_NMCLIE'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 332
        Top = 2
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          878.416666666666800000
          5.291666666666667000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryPedidos
        DataField = 'PED_DTPEDI'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 417
        Top = 2
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1103.312500000000000000
          5.291666666666667000
          224.895833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryPedidos
        DataField = 'PED_DTENTR'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 506
        Top = 2
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          5.291666666666667000
          216.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryPedidos
        DataField = 'PED_QTPEDI'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 589
        Top = 2
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1558.395833333333000000
          5.291666666666667000
          216.958333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryPedidos
        DataField = 'PED_TOPEDI'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 690
        Top = 2
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1825.625000000000000000
          5.291666666666667000
          216.958333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryPedidos
        DataField = 'PED_QTDIAS'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 221
      Width = 718
      Height = 35
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        92.604166666666670000
        1899.708333333333000000)
      BandType = rbPageFooter
      object QRSysData1: TQRSysData
        Left = 532
        Top = 0
        Width = 134
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1407.583333333333000000
          0.000000000000000000
          354.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDateTime
        Text = 'Data/Hora: '
        Transparent = True
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 532
        Top = 16
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1407.583333333333000000
          42.333333333333330000
          259.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Text = 'P'#225'gina : '
        Transparent = True
        FontSize = 10
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 181
      Width = 718
      Height = 40
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        1899.708333333333000000)
      BandType = rbSummary
      object QRLabel12: TQRLabel
        Left = 440
        Top = 21
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1164.166666666667000000
          55.562500000000000000
          148.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOTAL : '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRExpr1: TQRExpr
        Left = 572
        Top = 21
        Width = 99
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1513.416666666667000000
          55.562500000000000000
          261.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryPedidos.PED_TOPEDI)'
        Mask = '###,###,##0.#0'
        FontSize = 11
      end
      object QRSysData3: TQRSysData
        Left = 1
        Top = 1
        Width = 164
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2.645833333333333000
          2.645833333333333000
          433.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDetailCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Text = 'REGISTRO : '
        Transparent = False
        FontSize = 10
      end
      object QRExpr2: TQRExpr
        Left = 506
        Top = 2
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1338.791666666667000000
          5.291666666666667000
          216.958333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = True
        WordWrap = True
        Expression = 'SUM(qryPedidos.PED_QTPEDI)'
        Mask = '###,###'
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 440
        Top = 2
        Width = 58
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1164.166666666667000000
          5.291666666666667000
          153.458333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PE'#199'A(S):'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object qryPedidos: TQuery
    OnCalcFields = qryPedidosCalcFields
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      
        'Select * from SACPED Where (PED_FLSITU="A") and (PED_DTPEDI>=:pD' +
        'TINIC) '
      'and (PED_DTPEDI<=:pDTFINA) order by PED_DTPEDI')
    Left = 4
    Top = 8
    ParamData = <
      item
        DataType = ftDate
        Name = 'pDTINIC'
        ParamType = ptInput
        Value = 0d
      end
      item
        DataType = ftDate
        Name = 'pDTFINA'
        ParamType = ptInput
        Value = 0d
      end>
    object qryPedidosPED_NRPEDI: TStringField
      FieldName = 'PED_NRPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_NRPEDI'
      Size = 7
    end
    object qryPedidosPED_QTPEDI: TFloatField
      FieldName = 'PED_QTPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_QTPEDI'
    end
    object qryPedidosPED_ORDSER: TStringField
      FieldName = 'PED_ORDSER'
      Origin = 'INFOMODA."SACPED.DB".PED_ORDSER'
      Size = 6
    end
    object qryPedidosPED_QTATEN: TFloatField
      FieldName = 'PED_QTATEN'
      Origin = 'INFOMODA."SACPED.DB".PED_QTATEN'
    end
    object qryPedidosPED_DTPEDI: TDateField
      FieldName = 'PED_DTPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_DTPEDI'
    end
    object qryPedidosPED_HOPEDI: TStringField
      FieldName = 'PED_HOPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_HOPEDI'
      Size = 5
    end
    object qryPedidosPED_TOPEDI: TCurrencyField
      FieldName = 'PED_TOPEDI'
      Origin = 'INFOMODA."SACPED.DB".PED_TOPEDI'
    end
    object qryPedidosPED_CDVEND: TStringField
      FieldName = 'PED_CDVEND'
      Origin = 'INFOMODA."SACPED.DB".PED_CDVEND'
      Size = 6
    end
    object qryPedidosPED_NRLOTE: TStringField
      FieldName = 'PED_NRLOTE'
      Origin = 'INFOMODA."SACPED.DB".PED_NRLOTE'
      Size = 7
    end
    object qryPedidosPED_FLLOTE: TStringField
      FieldName = 'PED_FLLOTE'
      Origin = 'INFOMODA."SACPED.DB".PED_FLLOTE'
      Size = 1
    end
    object qryPedidosPED_FLSITU: TStringField
      FieldName = 'PED_FLSITU'
      Origin = 'INFOMODA."SACPED.DB".PED_FLSITU'
      Size = 1
    end
    object qryPedidosPED_CDCLIE: TStringField
      FieldName = 'PED_CDCLIE'
      Origin = 'INFOMODA."SACPED.DB".PED_CDCLIE'
      Size = 7
    end
    object qryPedidosPED_NMCLIE: TStringField
      FieldKind = fkLookup
      FieldName = 'PED_NMCLIE'
      LookupDataSet = qryCliente
      LookupKeyFields = 'CLI_CDCLIE'
      LookupResultField = 'CLI_NMCLIE'
      KeyFields = 'PED_CDCLIE'
      Size = 40
      Lookup = True
    end
    object qryPedidosPED_DTENTR: TDateField
      FieldKind = fkCalculated
      FieldName = 'PED_DTENTR'
      Calculated = True
    end
    object qryPedidosPED_QTDIAS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PED_QTDIAS'
      Calculated = True
    end
  end
  object qryCliente: TQuery
    Active = True
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select CLI_CDCLIE, CLI_NMCLIE from "SACCLI.DBF" '
      'order by CLI_NMCLIE')
    Left = 36
    Top = 8
    object qryClienteCLI_CDCLIE: TStringField
      FieldName = 'CLI_CDCLIE'
      Origin = 'INFOMODA."SACCLI.DBF".CLI_CDCLIE'
      Size = 7
    end
    object qryClienteCLI_NMCLIE: TStringField
      FieldName = 'CLI_NMCLIE'
      Origin = 'INFOMODA."SACCLI.DBF".CLI_NMCLIE'
      Size = 40
    end
  end
  object qryJeans: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACITP')
    Left = 112
    Top = 8
  end
  object qryMalha: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACITP')
    Left = 144
    Top = 8
  end
end
