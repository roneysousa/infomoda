object frmRelMPS: TfrmRelMPS
  Left = 192
  Top = 114
  Width = 544
  Height = 373
  Caption = 'frmRelMPS'
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
  object qrMPS: TQuickRep
    Left = 0
    Top = 0
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = frmImpMPS.qryProduto
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
    Page.PaperSize = Letter
    Page.Values = (
      100.000000000000000000
      2794.000000000000000000
      100.000000000000000000
      2159.000000000000000000
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
      Width = 740
      Height = 164
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
        433.916666666666800000
        1957.916666666667000000)
      BandType = rbPageHeader
      object QRDBImage1: TQRDBImage
        Left = 3
        Top = 4
        Width = 147
        Height = 97
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          256.645833333333300000
          7.937500000000000000
          10.583333333333330000
          388.937500000000000000)
        DataField = 'PAR_IMLOGO'
        DataSet = dmInfoModa.tbParametros
        Stretch = True
      end
      object QRLabel6: TQRLabel
        Left = 471
        Top = 4
        Width = 117
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1246.187500000000000000
          10.583333333333330000
          309.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RELAT'#211'RIO : MPS'
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
      object QRLabel1: TQRLabel
        Left = 7
        Top = 145
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          383.645833333333400000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DEMANDA'
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
      object txtTOTPRIM: TQRLabel
        Left = 182
        Top = 145
        Width = 22
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          481.541666666666700000
          383.645833333333400000
          58.208333333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '000'
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
      object txtTOTSEGU: TQRLabel
        Left = 292
        Top = 145
        Width = 22
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          772.583333333333400000
          383.645833333333400000
          58.208333333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '000'
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
      object txtTOTTERC: TQRLabel
        Left = 408
        Top = 145
        Width = 22
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1079.500000000000000000
          383.645833333333400000
          58.208333333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '000'
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
      object txtTOTQUAR: TQRLabel
        Left = 518
        Top = 145
        Width = 22
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1370.541666666667000000
          383.645833333333400000
          58.208333333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '000'
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
      object QRShape1: TQRShape
        Left = 0
        Top = 143
        Width = 739
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          378.354166666666700000
          1955.270833333333000000)
        Shape = qrsHorLine
      end
      object QRShape2: TQRShape
        Left = 150
        Top = 123
        Width = 1
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          396.875000000000000000
          325.437500000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Left = 255
        Top = 123
        Width = 1
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          674.687500000000000000
          325.437500000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape9: TQRShape
        Left = 359
        Top = 123
        Width = 1
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          949.854166666666800000
          325.437500000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape10: TQRShape
        Left = 474
        Top = 123
        Width = 1
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          1254.125000000000000000
          325.437500000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel2: TQRLabel
        Left = 471
        Top = 22
        Width = 64
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1246.187500000000000000
          58.208333333333340000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PER'#205'ODO:'
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
      object txtPERIODO: TQRLabel
        Left = 538
        Top = 22
        Width = 22
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1423.458333333333000000
          58.208333333333340000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '000'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 7
        Top = 104
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          18.520833333333330000
          275.166666666666700000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PRODUTO : '
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
      object txtNMPROD: TQRLabel
        Left = 89
        Top = 104
        Width = 13
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          235.479166666666700000
          275.166666666666700000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '...'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtUSUARIO: TQRLabel
        Left = 538
        Top = 40
        Width = 22
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1423.458333333333000000
          105.833333333333300000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '000'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 471
        Top = 40
        Width = 64
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1246.187500000000000000
          105.833333333333300000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'USU'#193'RIO:'
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
      object QRShape11: TQRShape
        Left = 581
        Top = 123
        Width = 1
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          1537.229166666667000000
          325.437500000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape12: TQRShape
        Left = 1
        Top = 123
        Width = 739
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          325.437500000000000000
          1955.270833333333000000)
        Shape = qrsHorLine
      end
      object QRLabel4: TQRLabel
        Left = 161
        Top = 125
        Width = 76
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          425.979166666666700000
          330.729166666666700000
          201.083333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '1'#170'. SEMANA'
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
        Left = 269
        Top = 125
        Width = 76
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          711.729166666666800000
          330.729166666666700000
          201.083333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '2'#170'. SEMANA'
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
      object QRLabel8: TQRLabel
        Left = 381
        Top = 125
        Width = 76
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1008.062500000000000000
          330.729166666666700000
          201.083333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '3'#170'. SEMANA'
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
      object QRLabel9: TQRLabel
        Left = 490
        Top = 125
        Width = 76
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1296.458333333333000000
          330.729166666666700000
          201.083333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '4'#170'. SEMANA'
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
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 202
      Width = 740
      Height = 20
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
        52.916666666666670000
        1957.916666666667000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 5
        Top = 1
        Width = 95
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          2.645833333333333000
          251.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmImpMPS.qryProduto
        DataField = 'MPS_NOMCOR'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 154
        Top = 1
        Width = 85
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          407.458333333333400000
          2.645833333333333000
          224.895833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmImpMPS.qryProduto
        DataField = 'MPS_DESPRI'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 259
        Top = 1
        Width = 92
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          685.270833333333400000
          2.645833333333333000
          243.416666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmImpMPS.qryProduto
        DataField = 'MPS_DESSEG'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 372
        Top = 1
        Width = 89
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          984.249999999999900000
          2.645833333333333000
          235.479166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmImpMPS.qryProduto
        DataField = 'MPS_DESTER'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 486
        Top = 1
        Width = 92
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1285.875000000000000000
          2.645833333333333000
          243.416666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = frmImpMPS.qryProduto
        DataField = 'MPS_DESQUA'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape3: TQRShape
        Left = 150
        Top = 0
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          396.875000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Left = 255
        Top = 0
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          674.687500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape5: TQRShape
        Left = 359
        Top = 0
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          949.854166666666800000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape6: TQRShape
        Left = 474
        Top = 0
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1254.125000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape7: TQRShape
        Left = 581
        Top = 0
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1537.229166666667000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 222
      Width = 740
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
        92.604166666666680000
        1957.916666666667000000)
      BandType = rbPageFooter
      object QRSysData1: TQRSysData
        Left = 532
        Top = 0
        Width = 185
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1407.583333333333000000
          0.000000000000000000
          489.479166666666600000)
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
        Width = 60
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1407.583333333333000000
          42.333333333333340000
          158.750000000000000000)
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
  end
end
