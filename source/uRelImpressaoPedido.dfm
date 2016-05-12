object frmRelModelo: TfrmRelModelo
  Left = 215
  Top = 123
  Width = 546
  Height = 373
  VertScrollBar.Position = 271
  Caption = 'frmRelModelo'
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
  object qrImpressaoPedido: TQuickRep
    Left = 0
    Top = -270
    Width = 816
    Height = 1344
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qryRelModelo
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
    Page.PaperSize = Legal
    Page.Values = (
      50.000000000000000000
      3556.000000000000000000
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
    ReportTitle = 'Visualiza Impress'#227'o'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 740
      Height = 144
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
        381.000000000000000000
        1957.916666666667000000)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = 2
        Top = 41
        Width = 98
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          5.291666666666667000
          108.479166666666700000
          259.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'd.__________'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 2
        Top = 76
        Width = 98
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          5.291666666666667000
          201.083333333333300000
          259.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'd.__________'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 2
        Top = 111
        Width = 98
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          5.291666666666667000
          293.687500000000000000
          259.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'd.__________'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 104
        Top = 111
        Width = 143
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          275.166666666666700000
          293.687500000000000000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Forn.__________ Comp.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 104
        Top = 76
        Width = 143
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          275.166666666666700000
          201.083333333333300000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Forn.__________ Comp.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 104
        Top = 41
        Width = 143
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          275.166666666666700000
          108.479166666666700000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Forn.__________ Comp.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 3
        Top = 2
        Width = 130
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666680000
          7.937500000000000000
          5.291666666666667000
          343.958333333333300000)
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 154
        Top = 2
        Width = 92
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          407.458333333333300000
          5.291666666666667000
          243.416666666666700000)
        Shape = qrsRectangle
      end
      object QRLabel7: TQRLabel
        Left = 160
        Top = 6
        Width = 78
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          423.333333333333300000
          15.875000000000000000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Setor JEANS'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 11
        Top = 4
        Width = 112
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          29.104166666666670000
          10.583333333333330000
          296.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Todaa Jovem'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 14
      end
      object QRShape3: TQRShape
        Left = 250
        Top = 2
        Width = 485
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          661.458333333333200000
          5.291666666666667000
          1283.229166666667000000)
        Shape = qrsRectangle
      end
      object QRLabel9: TQRLabel
        Left = 253
        Top = 6
        Width = 454
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          669.395833333333300000
          15.875000000000000000
          1201.208333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Ref. ____________  C'#243'digo: ______________ Data __/__/____   O.S.' +
          ' N'#186' ____'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 250
        Top = 27
        Width = 109
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          661.458333333333200000
          71.437500000000000000
          288.395833333333300000)
        Shape = qrsRectangle
      end
      object QRLabel10: TQRLabel
        Left = 253
        Top = 28
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          669.395833333333300000
          74.083333333333330000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 251
        Top = 42
        Width = 108
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          664.104166666666800000
          111.125000000000000000
          285.750000000000000000)
        Shape = qrsHorLine
      end
      object QRLabel11: TQRLabel
        Left = 344
        Top = 44
        Width = 13
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          910.166666666666700000
          116.416666666666700000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 253
        Top = 62
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          669.395833333333300000
          164.041666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 250
        Top = 62
        Width = 109
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          661.458333333333200000
          164.041666666666700000
          288.395833333333300000)
        Shape = qrsRectangle
      end
      object QRShape7: TQRShape
        Left = 251
        Top = 77
        Width = 108
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          664.104166666666800000
          203.729166666666700000
          285.750000000000000000)
        Shape = qrsHorLine
      end
      object QRLabel13: TQRLabel
        Left = 344
        Top = 79
        Width = 13
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          910.166666666666700000
          209.020833333333300000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 253
        Top = 62
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          669.395833333333300000
          164.041666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape8: TQRShape
        Left = 250
        Top = 97
        Width = 109
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          661.458333333333200000
          256.645833333333300000
          288.395833333333300000)
        Shape = qrsRectangle
      end
      object QRLabel15: TQRLabel
        Left = 253
        Top = 98
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          669.395833333333300000
          259.291666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 251
        Top = 112
        Width = 108
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          664.104166666666800000
          296.333333333333300000
          285.750000000000000000)
        Shape = qrsHorLine
      end
      object QRLabel16: TQRLabel
        Left = 344
        Top = 114
        Width = 13
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          910.166666666666700000
          301.625000000000000000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape10: TQRShape
        Left = 376
        Top = 27
        Width = 109
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          994.833333333333200000
          71.437500000000000000
          288.395833333333300000)
        Shape = qrsRectangle
      end
      object QRLabel18: TQRLabel
        Left = 469
        Top = 44
        Width = 13
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1240.895833333333000000
          116.416666666666700000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape11: TQRShape
        Left = 376
        Top = 42
        Width = 108
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          994.833333333333200000
          111.125000000000000000
          285.750000000000000000)
        Shape = qrsHorLine
      end
      object QRShape12: TQRShape
        Left = 376
        Top = 62
        Width = 109
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          994.833333333333200000
          164.041666666666700000
          288.395833333333300000)
        Shape = qrsRectangle
      end
      object QRLabel20: TQRLabel
        Left = 469
        Top = 79
        Width = 13
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1240.895833333333000000
          209.020833333333300000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape13: TQRShape
        Left = 376
        Top = 77
        Width = 108
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          994.833333333333200000
          203.729166666666700000
          285.750000000000000000)
        Shape = qrsHorLine
      end
      object QRShape15: TQRShape
        Left = 376
        Top = 97
        Width = 109
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          994.833333333333200000
          256.645833333333300000
          288.395833333333300000)
        Shape = qrsRectangle
      end
      object QRLabel21: TQRLabel
        Left = 470
        Top = 114
        Width = 13
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1243.541666666667000000
          301.625000000000000000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 378
        Top = 98
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1000.125000000000000000
          259.291666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape14: TQRShape
        Left = 376
        Top = 112
        Width = 108
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          994.833333333333200000
          296.333333333333300000
          285.750000000000000000)
        Shape = qrsHorLine
      end
      object QRLabel19: TQRLabel
        Left = 378
        Top = 62
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1000.125000000000000000
          164.041666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 378
        Top = 28
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1000.125000000000000000
          74.083333333333330000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape16: TQRShape
        Left = 501
        Top = 27
        Width = 109
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1325.562500000000000000
          71.437500000000000000
          288.395833333333300000)
        Shape = qrsRectangle
      end
      object QRShape17: TQRShape
        Left = 501
        Top = 62
        Width = 109
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1325.562500000000000000
          164.041666666666700000
          288.395833333333300000)
        Shape = qrsRectangle
      end
      object QRShape18: TQRShape
        Left = 501
        Top = 97
        Width = 109
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1325.562500000000000000
          256.645833333333300000
          288.395833333333300000)
        Shape = qrsRectangle
      end
      object QRShape19: TQRShape
        Left = 501
        Top = 112
        Width = 108
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          1325.562500000000000000
          296.333333333333300000
          285.750000000000000000)
        Shape = qrsHorLine
      end
      object QRShape20: TQRShape
        Left = 501
        Top = 77
        Width = 108
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          1325.562500000000000000
          203.729166666666700000
          285.750000000000000000)
        Shape = qrsHorLine
      end
      object QRShape21: TQRShape
        Left = 501
        Top = 42
        Width = 108
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          1325.562500000000000000
          111.125000000000000000
          285.750000000000000000)
        Shape = qrsHorLine
      end
      object QRLabel23: TQRLabel
        Left = 502
        Top = 28
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1328.208333333333000000
          74.083333333333340000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 502
        Top = 62
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1328.208333333333000000
          164.041666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 502
        Top = 98
        Width = 36
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1328.208333333333000000
          259.291666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 595
        Top = 114
        Width = 13
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1574.270833333333000000
          301.625000000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 594
        Top = 79
        Width = 13
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1571.625000000000000000
          209.020833333333300000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 594
        Top = 44
        Width = 13
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1571.625000000000000000
          116.416666666666700000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape22: TQRShape
        Left = 625
        Top = 27
        Width = 109
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1653.645833333333000000
          71.437500000000000000
          288.395833333333300000)
        Shape = qrsRectangle
      end
      object QRShape23: TQRShape
        Left = 625
        Top = 62
        Width = 109
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1653.645833333333000000
          164.041666666666700000
          288.395833333333300000)
        Shape = qrsRectangle
      end
      object QRShape24: TQRShape
        Left = 625
        Top = 97
        Width = 109
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1653.645833333333000000
          256.645833333333300000
          288.395833333333300000)
        Shape = qrsRectangle
      end
      object QRShape25: TQRShape
        Left = 625
        Top = 112
        Width = 108
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          1653.645833333333000000
          296.333333333333300000
          285.750000000000000000)
        Shape = qrsHorLine
      end
      object QRShape26: TQRShape
        Left = 625
        Top = 77
        Width = 108
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          1653.645833333333000000
          203.729166666666700000
          285.750000000000000000)
        Shape = qrsHorLine
      end
      object QRShape27: TQRShape
        Left = 625
        Top = 42
        Width = 108
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          1653.645833333333000000
          111.125000000000000000
          285.750000000000000000)
        Shape = qrsHorLine
      end
      object QRLabel29: TQRLabel
        Left = 627
        Top = 27
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1658.937500000000000000
          71.437500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 627
        Top = 62
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1658.937500000000000000
          164.041666666666700000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 627
        Top = 97
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1658.937500000000000000
          256.645833333333400000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Parte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 719
        Top = 114
        Width = 13
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1902.354166666667000000
          301.625000000000000000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 718
        Top = 79
        Width = 13
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1899.708333333333000000
          209.020833333333300000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 718
        Top = 44
        Width = 13
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1899.708333333333000000
          116.416666666666700000
          34.395833333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '%'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 182
      Width = 740
      Height = 1122
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
        2968.625000000000000000
        1957.916666666667000000)
      BandType = rbDetail
      object QRShape81: TQRShape
        Left = 5
        Top = 4
        Width = 275
        Height = 326
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          862.541666666666800000
          13.229166666666670000
          10.583333333333330000
          727.604166666666800000)
        Shape = qrsRectangle
      end
      object QRShape82: TQRShape
        Left = 5
        Top = 40
        Width = 275
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          13.229166666666670000
          105.833333333333300000
          727.604166666666800000)
        Shape = qrsHorLine
      end
      object QRShape83: TQRShape
        Left = 39
        Top = 22
        Width = 204
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          103.187500000000000000
          58.208333333333320000
          539.750000000000000000)
        Shape = qrsHorLine
      end
      object QRLabel44: TQRLabel
        Left = 8
        Top = 13
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          21.166666666666670000
          34.395833333333330000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cor'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel52: TQRLabel
        Left = 246
        Top = 13
        Width = 33
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          650.875000000000000000
          34.395833333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total'
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
      object QRShape84: TQRShape
        Left = 39
        Top = 5
        Width = 1
        Height = 325
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          859.895833333333200000
          103.187500000000000000
          13.229166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape85: TQRShape
        Left = 243
        Top = 5
        Width = 1
        Height = 325
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          859.895833333333200000
          642.937500000000000000
          13.229166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape86: TQRShape
        Left = 62
        Top = 4
        Width = 1
        Height = 325
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          859.895833333333400000
          164.041666666666700000
          10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape87: TQRShape
        Left = 85
        Top = 4
        Width = 1
        Height = 325
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          859.895833333333400000
          224.895833333333300000
          10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape88: TQRShape
        Left = 107
        Top = 4
        Width = 1
        Height = 325
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          859.895833333333400000
          283.104166666666700000
          10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape89: TQRShape
        Left = 129
        Top = 4
        Width = 1
        Height = 325
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          859.895833333333400000
          341.312500000000000000
          10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape90: TQRShape
        Left = 152
        Top = 4
        Width = 1
        Height = 325
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          859.895833333333400000
          402.166666666666700000
          10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape91: TQRShape
        Left = 175
        Top = 4
        Width = 1
        Height = 325
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          859.895833333333400000
          463.020833333333400000
          10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape103: TQRShape
        Left = 5
        Top = 310
        Width = 275
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          13.229166666666670000
          820.208333333333300000
          727.604166666666700000)
        Shape = qrsHorLine
      end
      object QRLabel54: TQRLabel
        Left = 6
        Top = 312
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          825.500000000000000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total'
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
      object QRShape104: TQRShape
        Left = 286
        Top = 4
        Width = 452
        Height = 326
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          862.541666666666800000
          756.708333333333200000
          10.583333333333330000
          1195.916666666667000000)
        Shape = qrsRectangle
      end
      object QRShape105: TQRShape
        Left = 335
        Top = 4
        Width = 1
        Height = 307
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          812.270833333333200000
          886.354166666666800000
          10.583333333333330000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape106: TQRShape
        Left = 589
        Top = 5
        Width = 1
        Height = 325
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          859.895833333333200000
          1558.395833333333000000
          13.229166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape107: TQRShape
        Left = 687
        Top = 5
        Width = 1
        Height = 325
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          859.895833333333200000
          1817.687500000000000000
          13.229166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape108: TQRShape
        Left = 641
        Top = 5
        Width = 1
        Height = 325
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          859.895833333333200000
          1695.979166666667000000
          13.229166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape109: TQRShape
        Left = 286
        Top = 22
        Width = 452
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          756.708333333333200000
          58.208333333333320000
          1195.916666666667000000)
        Shape = qrsHorLine
      end
      object QRShape124: TQRShape
        Left = 286
        Top = 310
        Width = 452
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          756.708333333333200000
          820.208333333333200000
          1195.916666666667000000)
        Shape = qrsHorLine
      end
      object QRLabel55: TQRLabel
        Left = 287
        Top = 312
        Width = 288
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          759.354166666666700000
          825.500000000000000000
          762.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'TOTAL  .........................................................' +
          '..'
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
      object QRShape125: TQRShape
        Left = 5
        Top = 333
        Width = 556
        Height = 80
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          211.666666666666700000
          13.229166666666670000
          881.062500000000000000
          1471.083333333333000000)
        Shape = qrsRectangle
      end
      object QRLabel56: TQRLabel
        Left = 8
        Top = 354
        Width = 50
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          21.166666666666670000
          936.625000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produto:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel57: TQRLabel
        Left = 8
        Top = 336
        Width = 253
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          889.000000000000000000
          669.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Espa'#231'o Destinado ao Setor Desevolvimento'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel58: TQRLabel
        Left = 567
        Top = 343
        Width = 35
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1500.187500000000000000
          907.520833333333400000
          92.604166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pre'#231'o'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape129: TQRShape
        Left = 604
        Top = 333
        Width = 135
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1598.083333333333000000
          881.062500000000000000
          357.187500000000000000)
        Shape = qrsRectangle
      end
      object QRLabel59: TQRLabel
        Left = 612
        Top = 343
        Width = 125
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1619.250000000000000000
          907.520833333333400000
          330.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'R$ ..........................'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape130: TQRShape
        Left = 568
        Top = 370
        Width = 171
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125000000000000000
          1502.833333333333000000
          978.958333333333200000
          452.437500000000000000)
        Shape = qrsRectangle
      end
      object QRShape131: TQRShape
        Left = 5
        Top = 419
        Width = 672
        Height = 270
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          714.375000000000000000
          13.229166666666670000
          1108.604166666667000000
          1778.000000000000000000)
        Shape = qrsRectangle
      end
      object QRShape132: TQRShape
        Left = 686
        Top = 420
        Width = 49
        Height = 269
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          711.729166666666800000
          1815.041666666667000000
          1111.250000000000000000
          129.645833333333300000)
        Shape = qrsRectangle
      end
      object QRLabel60: TQRLabel
        Left = 41
        Top = 423
        Width = 38
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          108.479166666666700000
          1119.187500000000000000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Frente'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel61: TQRLabel
        Left = 360
        Top = 423
        Width = 35
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          952.500000000000000000
          1119.187500000000000000
          92.604166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Costa'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel62: TQRLabel
        Left = 288
        Top = 5
        Width = 48
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          762.000000000000000000
          13.229166666666670000
          127.000000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ORIGEM'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel63: TQRLabel
        Left = 410
        Top = 5
        Width = 106
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1084.791666666667000000
          13.229166666666670000
          280.458333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'MATERIAL DIRETO'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel64: TQRLabel
        Left = 591
        Top = 9
        Width = 47
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          1563.687500000000000000
          23.812500000000000000
          124.354166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pre'#231'.:un,m,kg'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRLabel65: TQRLabel
        Left = 645
        Top = 9
        Width = 40
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          1706.562500000000000000
          23.812500000000000000
          105.833333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CONS.UN.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRLabel66: TQRLabel
        Left = 691
        Top = 9
        Width = 45
        Height = 11
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          29.104166666666670000
          1828.270833333333000000
          23.812500000000000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CUSTO UN.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 6
      end
      object QRLabel67: TQRLabel
        Left = 6
        Top = 711
        Width = 162
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          15.875000000000000000
          1881.187500000000000000
          428.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Responsavel a Aprov. Inicial'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape134: TQRShape
        Left = 5
        Top = 710
        Width = 194
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          13.229166666666670000
          1878.541666666667000000
          513.291666666666700000)
        Shape = qrsHorLine
      end
      object QRLabel69: TQRLabel
        Left = 219
        Top = 711
        Width = 117
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          579.437500000000000000
          1881.187500000000000000
          309.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Revisado e Liberado'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape136: TQRShape
        Left = 216
        Top = 710
        Width = 194
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          571.500000000000000000
          1878.541666666667000000
          513.291666666666700000)
        Shape = qrsHorLine
      end
      object QRShape28: TQRShape
        Left = 5
        Top = 734
        Width = 426
        Height = 365
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          965.729166666666800000
          13.229166666666670000
          1942.041666666667000000
          1127.125000000000000000)
        Shape = qrsRectangle
      end
      object QRShape29: TQRShape
        Left = 14
        Top = 739
        Width = 106
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1.889880952380952000
          37.797619047619050000
          1956.026785714286000000
          279.702380952381000000)
        Shape = qrsHorLine
      end
      object QRShape30: TQRShape
        Left = 119
        Top = 759
        Width = 306
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.779761904761905000
          315.610119047619000000
          2008.943452380953000000
          808.869047619047700000)
        Shape = qrsHorLine
      end
      object QRShape31: TQRShape
        Left = 15
        Top = 833
        Width = 410
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.779761904761905000
          39.687500000000000000
          2203.601190476191000000
          1084.791666666667000000)
        Shape = qrsHorLine
      end
      object QRShape32: TQRShape
        Left = 14
        Top = 739
        Width = 1
        Height = 95
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          251.354166666666700000
          37.041666666666670000
          1955.270833333333000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRShape33: TQRShape
        Left = 424
        Top = 760
        Width = 1
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          1121.833333333333000000
          2010.833333333333000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel35: TQRLabel
        Left = 16
        Top = 744
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333330000
          1968.500000000000000000
          261.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Risco / Enfesto'
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
      object QRShape34: TQRShape
        Left = 119
        Top = 739
        Width = 1
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          314.854166666666700000
          1955.270833333333000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRLabel36: TQRLabel
        Left = 121
        Top = 741
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          320.145833333333400000
          1960.562500000000000000
          264.583333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Entrada __/__/__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 225
        Top = 741
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          595.312500000000000000
          1960.562500000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hr. __:__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 16
        Top = 766
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2026.708333333333000000
          296.333333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cons. M'#233'dio Pe'#231'a:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 16
        Top = 786
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2079.625000000000000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#186' de Folhas:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 16
        Top = 806
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2132.541666666667000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Comp:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 206
        Top = 766
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          545.041666666666700000
          2026.708333333333000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tamanhos:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel43: TQRLabel
        Left = 206
        Top = 786
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          545.041666666666700000
          2079.625000000000000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'In'#237'cio: __:__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 206
        Top = 806
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          545.041666666666700000
          2132.541666666667000000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Respons'#225'vel:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 374
        Top = 741
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          989.541666666666700000
          1960.562500000000000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hr. __:__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Left = 281
        Top = 741
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          743.479166666666700000
          1960.562500000000000000
          232.833333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Sa'#237'da __/__/__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape35: TQRShape
        Left = 275
        Top = 765
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          727.604166666666800000
          2024.062500000000000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape36: TQRShape
        Left = 133
        Top = 766
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          351.895833333333300000
          2026.708333333333000000
          87.312500000000000000)
        Shape = qrsRectangle
      end
      object QRShape37: TQRShape
        Left = 299
        Top = 765
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          791.104166666666800000
          2024.062500000000000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape38: TQRShape
        Left = 323
        Top = 765
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          854.604166666666800000
          2024.062500000000000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape39: TQRShape
        Left = 347
        Top = 765
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          918.104166666666800000
          2024.062500000000000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape40: TQRShape
        Left = 371
        Top = 765
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          981.604166666666800000
          2024.062500000000000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape41: TQRShape
        Left = 395
        Top = 765
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1045.104166666667000000
          2024.062500000000000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape42: TQRShape
        Left = 133
        Top = 786
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          351.895833333333300000
          2079.625000000000000000
          87.312500000000000000)
        Shape = qrsRectangle
      end
      object QRShape43: TQRShape
        Left = 61
        Top = 806
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          161.395833333333300000
          2132.541666666667000000
          87.312500000000000000)
        Shape = qrsRectangle
      end
      object QRShape44: TQRShape
        Left = 133
        Top = 806
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          351.895833333333300000
          2132.541666666667000000
          87.312500000000000000)
        Shape = qrsRectangle
      end
      object QRLabel48: TQRLabel
        Left = 96
        Top = 806
        Width = 30
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          2132.541666666667000000
          79.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Larg:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel50: TQRLabel
        Left = 280
        Top = 786
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          740.833333333333400000
          2079.625000000000000000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fim: __:__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel68: TQRLabel
        Left = 346
        Top = 786
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          915.458333333333300000
          2079.625000000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total: __:__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape45: TQRShape
        Left = 287
        Top = 821
        Width = 130
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          759.354166666666800000
          2172.229166666667000000
          343.958333333333300000)
        Shape = qrsHorLine
      end
      object QRShape46: TQRShape
        Left = 14
        Top = 839
        Width = 116
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          37.041666666666670000
          2219.854166666667000000
          306.916666666666700000)
        Shape = qrsHorLine
      end
      object QRShape47: TQRShape
        Left = 129
        Top = 859
        Width = 296
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1.889880952380953000
          340.178571428571400000
          2273.526785714286000000
          784.300595238095400000)
        Shape = qrsHorLine
      end
      object QRShape48: TQRShape
        Left = 15
        Top = 934
        Width = 410
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1.889880952380953000
          39.687500000000000000
          2470.074404761905000000
          1084.791666666667000000)
        Shape = qrsHorLine
      end
      object QRShape49: TQRShape
        Left = 14
        Top = 938
        Width = 116
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          37.041666666666670000
          2481.791666666667000000
          306.916666666666700000)
        Shape = qrsHorLine
      end
      object QRShape50: TQRShape
        Left = 130
        Top = 958
        Width = 295
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          343.958333333333400000
          2534.708333333333000000
          780.520833333333400000)
        Shape = qrsHorLine
      end
      object QRShape51: TQRShape
        Left = 15
        Top = 1010
        Width = 410
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          39.687500000000000000
          2672.291666666667000000
          1084.791666666667000000)
        Shape = qrsHorLine
      end
      object QRShape52: TQRShape
        Left = 15
        Top = 1015
        Width = 115
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          39.687500000000000000
          2685.520833333333000000
          304.270833333333400000)
        Shape = qrsHorLine
      end
      object QRShape53: TQRShape
        Left = 130
        Top = 1035
        Width = 294
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          343.958333333333400000
          2738.437500000000000000
          777.875000000000000000)
        Shape = qrsHorLine
      end
      object QRShape54: TQRShape
        Left = 15
        Top = 1088
        Width = 410
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1.889880952380953000
          39.687500000000000000
          2878.288690476190000000
          1084.791666666667000000)
        Shape = qrsHorLine
      end
      object QRShape55: TQRShape
        Left = 424
        Top = 859
        Width = 1
        Height = 75
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          198.437500000000000000
          1122.589285714286000000
          2273.526785714286000000
          1.889880952380952000)
        Shape = qrsVertLine
      end
      object QRShape56: TQRShape
        Left = 14
        Top = 839
        Width = 1
        Height = 95
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          251.354166666666700000
          37.041666666666670000
          2219.854166666667000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRShape57: TQRShape
        Left = 129
        Top = 840
        Width = 1
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          341.312500000000000000
          2222.500000000000000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRLabel71: TQRLabel
        Left = 16
        Top = 841
        Width = 108
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2225.145833333333000000
          285.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Corte/Separa'#231#227'o'
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
      object QRLabel72: TQRLabel
        Left = 139
        Top = 839
        Width = 131
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          367.770833333333400000
          2219.854166666667000000
          346.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data Entrada __/__/__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel74: TQRLabel
        Left = 306
        Top = 839
        Width = 119
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          809.625000000000000000
          2219.854166666667000000
          314.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data Sa'#237'da __/__/__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel73: TQRLabel
        Left = 16
        Top = 866
        Width = 112
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2291.291666666667000000
          296.333333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cons. M'#233'dio Pe'#231'a:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel75: TQRLabel
        Left = 16
        Top = 886
        Width = 80
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2344.208333333333000000
          211.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N'#186' de Folhas:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel76: TQRLabel
        Left = 16
        Top = 906
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2397.125000000000000000
          148.166666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'N.'#186' corte:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape58: TQRShape
        Left = 133
        Top = 867
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          351.895833333333300000
          2293.937500000000000000
          87.312500000000000000)
        Shape = qrsRectangle
      end
      object QRShape59: TQRShape
        Left = 133
        Top = 887
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          351.895833333333300000
          2346.854166666667000000
          87.312500000000000000)
        Shape = qrsRectangle
      end
      object QRShape60: TQRShape
        Left = 133
        Top = 907
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          351.895833333333300000
          2399.770833333333000000
          87.312500000000000000)
        Shape = qrsRectangle
      end
      object QRLabel77: TQRLabel
        Left = 206
        Top = 866
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          545.041666666666700000
          2291.291666666667000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tamanhos:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel78: TQRLabel
        Left = 206
        Top = 886
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          545.041666666666700000
          2344.208333333333000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'In'#237'cio: __:__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel79: TQRLabel
        Left = 206
        Top = 906
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          545.041666666666700000
          2397.125000000000000000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Respons'#225'vel:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape61: TQRShape
        Left = 287
        Top = 921
        Width = 130
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          759.354166666666800000
          2436.812500000000000000
          343.958333333333300000)
        Shape = qrsHorLine
      end
      object QRLabel81: TQRLabel
        Left = 280
        Top = 886
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          740.833333333333400000
          2344.208333333333000000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fim: __:__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel83: TQRLabel
        Left = 346
        Top = 886
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          915.458333333333300000
          2344.208333333333000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total: __:__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape62: TQRShape
        Left = 275
        Top = 865
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          727.604166666666800000
          2288.645833333333000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape63: TQRShape
        Left = 299
        Top = 865
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          791.104166666666800000
          2288.645833333333000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape64: TQRShape
        Left = 323
        Top = 865
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          854.604166666666800000
          2288.645833333333000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape65: TQRShape
        Left = 395
        Top = 865
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1045.104166666667000000
          2288.645833333333000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape66: TQRShape
        Left = 371
        Top = 865
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          981.604166666666800000
          2288.645833333333000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape67: TQRShape
        Left = 347
        Top = 865
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          918.104166666666800000
          2288.645833333333000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRLabel85: TQRLabel
        Left = 16
        Top = 966
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2555.875000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total de Pe'#231'as:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel87: TQRLabel
        Left = 206
        Top = 966
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          545.041666666666700000
          2555.875000000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tamanhos:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape69: TQRShape
        Left = 275
        Top = 965
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          727.604166666666800000
          2553.229166666667000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape70: TQRShape
        Left = 299
        Top = 965
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          791.104166666666800000
          2553.229166666667000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape71: TQRShape
        Left = 323
        Top = 965
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          854.604166666666800000
          2553.229166666667000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape72: TQRShape
        Left = 347
        Top = 965
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          918.104166666666800000
          2553.229166666667000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape73: TQRShape
        Left = 371
        Top = 965
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          981.604166666666800000
          2553.229166666667000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape74: TQRShape
        Left = 395
        Top = 965
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1045.104166666667000000
          2553.229166666667000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape75: TQRShape
        Left = 133
        Top = 967
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          351.895833333333300000
          2558.520833333333000000
          87.312500000000000000)
        Shape = qrsRectangle
      end
      object QRShape76: TQRShape
        Left = 14
        Top = 937
        Width = 1
        Height = 74
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          195.791666666666700000
          37.041666666666670000
          2479.145833333333000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRShape77: TQRShape
        Left = 424
        Top = 959
        Width = 1
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          139.851190476190500000
          1122.589285714286000000
          2536.220238095238000000
          1.889880952380952000)
        Shape = qrsVertLine
      end
      object QRShape78: TQRShape
        Left = 129
        Top = 938
        Width = 1
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          341.312500000000000000
          2481.791666666667000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRLabel89: TQRLabel
        Left = 16
        Top = 940
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2487.083333333333000000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Produ'#231#227'o'
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
      object QRShape79: TQRShape
        Left = 287
        Top = 1002
        Width = 130
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          759.354166666666800000
          2651.125000000000000000
          343.958333333333300000)
        Shape = qrsHorLine
      end
      object QRLabel93: TQRLabel
        Left = 206
        Top = 986
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          545.041666666666700000
          2608.791666666667000000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Respons'#225'vel:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel94: TQRLabel
        Left = 16
        Top = 1019
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2696.104166666667000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Acabamento'
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
      object QRLabel95: TQRLabel
        Left = 16
        Top = 1046
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2767.541666666667000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total de Pe'#231'as:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape80: TQRShape
        Left = 133
        Top = 1046
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          351.895833333333400000
          2767.541666666667000000
          87.312500000000000000)
        Shape = qrsRectangle
      end
      object QRLabel96: TQRLabel
        Left = 206
        Top = 1045
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          545.041666666666700000
          2764.895833333333000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tamanhos:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape135: TQRShape
        Left = 275
        Top = 1044
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          727.604166666666800000
          2762.250000000000000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape137: TQRShape
        Left = 299
        Top = 1044
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          791.104166666666800000
          2762.250000000000000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape138: TQRShape
        Left = 323
        Top = 1044
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          854.604166666666800000
          2762.250000000000000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape139: TQRShape
        Left = 347
        Top = 1044
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          918.104166666666800000
          2762.250000000000000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape140: TQRShape
        Left = 371
        Top = 1044
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          981.604166666666800000
          2762.250000000000000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRShape141: TQRShape
        Left = 395
        Top = 1044
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1045.104166666667000000
          2762.250000000000000000
          55.562500000000000000)
        Shape = qrsRectangle
      end
      object QRLabel97: TQRLabel
        Left = 206
        Top = 1066
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          545.041666666666700000
          2820.458333333333000000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Respons'#225'vel:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape142: TQRShape
        Left = 287
        Top = 1081
        Width = 130
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          759.354166666666800000
          2860.145833333333000000
          343.958333333333400000)
        Shape = qrsHorLine
      end
      object QRLabel98: TQRLabel
        Left = 136
        Top = 939
        Width = 131
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          359.833333333333400000
          2484.437500000000000000
          346.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data Entrada __/__/__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel99: TQRLabel
        Left = 304
        Top = 939
        Width = 119
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          804.333333333333300000
          2484.437500000000000000
          314.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data Sa'#237'da __/__/__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel100: TQRLabel
        Left = 136
        Top = 1016
        Width = 131
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          359.833333333333400000
          2688.166666666667000000
          346.604166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data Entrada __/__/__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel101: TQRLabel
        Left = 304
        Top = 1016
        Width = 119
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          804.333333333333300000
          2688.166666666667000000
          314.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data Sa'#237'da __/__/__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape143: TQRShape
        Left = 129
        Top = 1015
        Width = 1
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          341.312500000000000000
          2685.520833333333000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRShape144: TQRShape
        Left = 14
        Top = 1015
        Width = 1
        Height = 75
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          198.437500000000000000
          37.041666666666670000
          2685.520833333333000000
          2.645833333333333000)
        Shape = qrsRectangle
      end
      object QRShape145: TQRShape
        Left = 424
        Top = 1035
        Width = 1
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          139.851190476190500000
          1122.589285714286000000
          2738.437500000000000000
          1.889880952380952000)
        Shape = qrsVertLine
      end
      object QRLabel102: TQRLabel
        Left = 16
        Top = 1066
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2820.458333333333000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'In'#237'cio: __:__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel103: TQRLabel
        Left = 90
        Top = 1066
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          238.125000000000000000
          2820.458333333333000000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fim: __:__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel86: TQRLabel
        Left = 16
        Top = 986
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          2608.791666666667000000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'In'#237'cio: __:__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel88: TQRLabel
        Left = 90
        Top = 986
        Width = 63
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          238.125000000000000000
          2608.791666666667000000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fim: __:__'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape147: TQRShape
        Left = 436
        Top = 694
        Width = 298
        Height = 367
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          971.020833333333400000
          1153.583333333333000000
          1836.208333333333000000
          788.458333333333400000)
        Shape = qrsRectangle
      end
      object QRShape68: TQRShape
        Left = 472
        Top = 1068
        Width = 82
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1248.833333333333000000
          2825.750000000000000000
          216.958333333333400000)
        Shape = qrsRectangle
      end
      object QRShape146: TQRShape
        Left = 558
        Top = 1068
        Width = 176
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1476.375000000000000000
          2825.750000000000000000
          465.666666666666700000)
        Shape = qrsRectangle
      end
      object QRLabel49: TQRLabel
        Left = 498
        Top = 1075
        Width = 28
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1317.625000000000000000
          2844.270833333333000000
          74.083333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CDP'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape148: TQRShape
        Left = 620
        Top = 1072
        Width = 22
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1640.416666666667000000
          2836.333333333333000000
          58.208333333333340000)
        Shape = qrsRectangle
      end
      object QRShape149: TQRShape
        Left = 708
        Top = 1072
        Width = 22
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1873.250000000000000000
          2836.333333333333000000
          58.208333333333340000)
        Shape = qrsRectangle
      end
      object QRLabel51: TQRLabel
        Left = 562
        Top = 1075
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1486.958333333333000000
          2844.270833333333000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ET comp.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel70: TQRLabel
        Left = 653
        Top = 1075
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1727.729166666667000000
          2844.270833333333000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Et. Barra'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape150: TQRShape
        Left = 436
        Top = 712
        Width = 298
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1153.583333333333000000
          1883.833333333333000000
          788.458333333333400000)
        Shape = qrsHorLine
      end
      object QRLabel80: TQRLabel
        Left = 557
        Top = 695
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1473.729166666667000000
          1838.854166666667000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Serigrafia'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel82: TQRLabel
        Left = 438
        Top = 718
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1158.875000000000000000
          1899.708333333333000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'd. Estampa'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape151: TQRShape
        Left = 524
        Top = 716
        Width = 207
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1386.416666666667000000
          1894.416666666667000000
          547.687500000000000000)
        Shape = qrsRectangle
      end
      object QRLabel84: TQRLabel
        Left = 438
        Top = 718
        Width = 84
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1158.875000000000000000
          1899.708333333333000000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#243'd. Estampa'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel90: TQRLabel
        Left = 438
        Top = 738
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1158.875000000000000000
          1952.625000000000000000
          103.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cores:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape152: TQRShape
        Left = 440
        Top = 754
        Width = 291
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1164.166666666667000000
          1994.958333333334000000
          769.937500000000000000)
        Shape = qrsHorLine
      end
      object QRShape153: TQRShape
        Left = 440
        Top = 773
        Width = 291
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1164.166666666667000000
          2045.229166666667000000
          769.937500000000000000)
        Shape = qrsHorLine
      end
      object QRShape154: TQRShape
        Left = 440
        Top = 793
        Width = 291
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1164.166666666667000000
          2098.145833333333000000
          769.937500000000000000)
        Shape = qrsHorLine
      end
      object QRShape155: TQRShape
        Left = 440
        Top = 813
        Width = 291
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1164.166666666667000000
          2151.062500000000000000
          769.937500000000000000)
        Shape = qrsHorLine
      end
      object QRShape156: TQRShape
        Left = 440
        Top = 834
        Width = 291
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1164.166666666667000000
          2206.625000000000000000
          769.937500000000000000)
        Shape = qrsHorLine
      end
      object QRShape157: TQRShape
        Left = 440
        Top = 855
        Width = 291
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1164.166666666667000000
          2262.187500000000000000
          769.937500000000000000)
        Shape = qrsHorLine
      end
      object QRLabel91: TQRLabel
        Left = 439
        Top = 836
        Width = 36
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1161.520833333333000000
          2211.916666666667000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Local:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape158: TQRShape
        Left = 440
        Top = 877
        Width = 291
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1164.166666666667000000
          2320.395833333333000000
          769.937500000000000000)
        Shape = qrsHorLine
      end
      object v: TQRShape
        Left = 440
        Top = 899
        Width = 291
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1164.166666666667000000
          2378.604166666667000000
          769.937500000000000000)
        Shape = qrsHorLine
      end
      object QRShape159: TQRShape
        Left = 440
        Top = 922
        Width = 291
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1164.166666666667000000
          2439.458333333333000000
          769.937500000000000000)
        Shape = qrsHorLine
      end
      object QRShape160: TQRShape
        Left = 440
        Top = 945
        Width = 291
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1164.166666666667000000
          2500.312500000000000000
          769.937500000000000000)
        Shape = qrsHorLine
      end
      object QRShape161: TQRShape
        Left = 440
        Top = 967
        Width = 291
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1164.166666666667000000
          2558.520833333333000000
          769.937500000000000000)
        Shape = qrsHorLine
      end
      object QRLabel92: TQRLabel
        Left = 440
        Top = 881
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1164.166666666667000000
          2330.979166666667000000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Obs::'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape162: TQRShape
        Left = 440
        Top = 1042
        Width = 291
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1164.166666666667000000
          2756.958333333333000000
          769.937500000000000000)
        Shape = qrsHorLine
      end
      object QRLabel104: TQRLabel
        Left = 544
        Top = 1043
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1439.333333333333000000
          2759.604166666667000000
          195.791666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Respons'#225'vel'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape163: TQRShape
        Left = 440
        Top = 976
        Width = 142
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1164.166666666667000000
          2582.333333333333000000
          375.708333333333400000)
        Shape = qrsRectangle
      end
      object QRShape164: TQRShape
        Left = 589
        Top = 976
        Width = 142
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1558.395833333333000000
          2582.333333333333000000
          375.708333333333400000)
        Shape = qrsRectangle
      end
      object QRLabel105: TQRLabel
        Left = 441
        Top = 1004
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1166.812500000000000000
          2656.416666666667000000
          148.166666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data Ent.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel106: TQRLabel
        Left = 527
        Top = 1002
        Width = 56
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1394.354166666667000000
          2651.125000000000000000
          148.166666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hora Ent.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel107: TQRLabel
        Left = 676
        Top = 1002
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1788.583333333333000000
          2651.125000000000000000
          145.520833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Hora Sai.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel108: TQRLabel
        Left = 592
        Top = 1002
        Width = 55
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          2651.125000000000000000
          145.520833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data Sai.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel109: TQRLabel
        Left = 444
        Top = 980
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1174.750000000000000000
          2592.916666666667000000
          190.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '___/___/___'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel110: TQRLabel
        Left = 529
        Top = 980
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1399.645833333333000000
          2592.916666666667000000
          124.354166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '___:___'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel111: TQRLabel
        Left = 678
        Top = 980
        Width = 47
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1793.875000000000000000
          2592.916666666667000000
          124.354166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '___:___'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel112: TQRLabel
        Left = 592
        Top = 980
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1566.333333333333000000
          2592.916666666667000000
          190.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '___/___/___'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 572
        Top = 372
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1513.416666666667000000
          984.250000000000000000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Venda Para:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRImage1: TQRImage
        Left = 9
        Top = 469
        Width = 19
        Height = 164
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          433.916666666666700000
          23.812500000000000000
          1240.895833333333000000
          50.270833333333330000)
        Picture.Data = {
          07544269746D61702E260000424D2E2600000000000036000000280000001400
          0000A20000000100180000000000F82500000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
          0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6868
          689A9A9AE1E1E1FFFFFFFFFFFFFFFFFFFFFFFFD9D9D99A9A9A7C7C7CFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9000000
          000000000000000000000000000000000000000000D9D9D9FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9A7A7A768
          68680000000000004D4D4DA7A7A7E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
          0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA7A7A7000000686868D0D0D0FFFFFFFFFFFFFF
          FFFF686868E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA7A7A7000000000000000000000000E1E1E1FFFFFFFFFFFF0000
          009A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF4D4D4DE1E1E1FFFFFF6868680000007C7C7CFFFFFFFFFFFFD9D9D9000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFE1E1E1000000000000E1E1E1FFFFFFFFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000D9D9D9
          FFFFFFFFFFFF8C8C8C000000686868FFFFFFD0D0D04D4D4DFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A000000FFFFFFFF
          FFFFE1E1E1000000000000000000000000A7A7A7FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9686868FFFFFFFFFFFFFFFF
          FFD0D0D04D4D4D000000A7A7A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000000000000000000000000000000000000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000000000000000000000000000000000000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0
          D06868680000004D4D4DBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          D0D0D06868680000004D4D4DBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD0D0D06868680000004D4D4DBDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          000000000000000000000000004D4D4DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000000000000000000000000000000000000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00000000000000000000000000000000000000000000000000000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
          0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF0F0F0A7A7A7686868000000000000686868A7A7A7F0F0F0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E94D4D4D
          0000000000000000000000000000000000004D4D4DE9E9E9FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A7C7C7CD0D0D0FF
          FFFFFFFFFFFFFFFFFFFFFFD0D0D06868689A9A9AFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000F0F0F0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF0F0F0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000F0F0F0FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0F0F0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9A9A9A7C7C7CD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFD0
          D0D06868689A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE9E9E94D4D4D0000000000000000000000000000000000004D4D
          4DE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF0F0F0A7A7A7686868000000000000686868A7A7A7F0F0F0FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000000000000000000000000000000000000000000000000000000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6868689A9A9AE1E1E1FF
          FFFFFFFFFFFFFFFFFFFFFFD9D9D99A9A9A7C7C7CFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D90000000000000000000000
          00000000000000000000000000D9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E9A7A7A7686868000000000000
          4D4D4DA7A7A7E9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF0F0F0A7A7A7686868000000000000686868A7A7A7F0F0F0FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9
          E94D4D4D0000000000000000000000000000000000004D4D4DE9E9E9FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A7C7C7C
          D0D0D0FFFFFFFFFFFFFFFFFFFFFFFFD0D0D06868689A9A9AFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000F0F0F0FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000F0F0F0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF0F0F0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A7C7C7CD9D9D9FFFFFFFFFFFFFFFFFF
          FFFFFFD0D0D06868689A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE9E9E94D4D4D00000000000000000000000000000000
          00004D4D4DE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFF0F0F0A7A7A7686868000000000000686868A7A7A7F0F0
          F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
          0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF0000000000004D4D4D8C8C8CBDBDBDE1E1E1FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFD9D9D9BDBDBD8C8C8C000000000000000000686868A7A7A7C7C7C7FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFD0D0D0686868000000000000000000FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9BDBDBD8C
          8C8C000000000000000000686868A7A7A7C7C7C7FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000004D4D4D8C8C8CBDBD
          BDE1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
          0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF0F0F0A7A7A7686868000000000000686868A7A7A7F0F0F0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E94D4D4D
          0000000000000000000000000000000000004D4D4DE9E9E9FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A9A7C7C7CD0D0D0FF
          FFFFFFFFFFFFFFFFFFFFFFD0D0D06868689A9A9AFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000F0F0F0FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF0F0F0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000F0F0F0FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF0F0F0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9A9A9A7C7C7CD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFD0
          D0D06868689A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFE9E9E94D4D4D0000000000000000000000000000000000004D4D
          4DE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFF0F0F0A7A7A7686868000000000000686868A7A7A7F0F0F0FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
          0000000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF6868689A9A9AE1E1E1FFFFFFFFFFFFFFFFFFFFFFFFD9D9D99A9A
          9A7C7C7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD9D9D9000000000000000000000000000000000000000000000000D9D9D9
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFE9E9E9A7A7A76868680000000000004D4D4DA7A7A7E9E9E9FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFF
          FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          00000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000000000000000
          000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0A7A7A76868680000
          00000000686868A7A7A7F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E94D4D4D000000000000000000000000
          0000000000004D4D4DE9E9E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF9A9A9A7C7C7CD0D0D0FFFFFFFFFFFFFFFFFFFFFFFFD0
          D0D06868689A9A9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFF000000F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
          F0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF000000F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0000000
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9A9A
          9A7C7C7CD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFD0D0D06868689A9A9AFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9E94D4D4D
          0000000000000000000000000000000000004D4D4DE9E9E9FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0A7A7A768
          6868000000000000686868A7A7A7F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        Stretch = True
      end
      object QRShape165: TQRShape
        Left = 25
        Top = 419
        Width = 2
        Height = 270
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          714.375000000000000000
          66.145833333333320000
          1108.604166666667000000
          5.291666666666667000)
        Shape = qrsVertLine
      end
      object txtMaterial: TQRRichText
        Left = 338
        Top = 24
        Width = 249
        Height = 285
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          754.062500000000000000
          894.291666666666800000
          63.500000000000000000
          658.812500000000000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      object txtPreco: TQRRichText
        Left = 592
        Top = 24
        Width = 47
        Height = 285
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          754.062500000000000000
          1566.333333333333000000
          63.500000000000000000
          124.354166666666700000)
        Alignment = taRightJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      object txtUnidade: TQRRichText
        Left = 644
        Top = 24
        Width = 40
        Height = 285
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          754.062500000000000000
          1703.916666666667000000
          63.500000000000000000
          105.833333333333300000)
        Alignment = taCenter
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      object txtCusto: TQRRichText
        Left = 690
        Top = 24
        Width = 46
        Height = 285
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          754.062500000000000000
          1825.625000000000000000
          63.500000000000000000
          121.708333333333300000)
        Alignment = taRightJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
      end
      object QRDBRichText1: TQRDBRichText
        Left = 60
        Top = 354
        Width = 473
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          158.750000000000000000
          936.625000000000000000
          1251.479166666667000000)
        Alignment = taLeftJustify
        AutoStretch = False
        Color = clWindow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        DataField = 'MDP_DTPROD'
        DataSet = qryRelModelo
      end
      object QRShape127: TQRShape
        Left = 58
        Top = 384
        Width = 475
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          153.458333333333300000
          1016.000000000000000000
          1256.770833333333000000)
        Shape = qrsHorLine
      end
      object QRShape128: TQRShape
        Left = 58
        Top = 400
        Width = 475
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          153.458333333333300000
          1058.333333333333000000
          1256.770833333333000000)
        Shape = qrsHorLine
      end
      object QRShape126: TQRShape
        Left = 58
        Top = 368
        Width = 475
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          153.458333333333300000
          973.666666666666800000
          1256.770833333333000000)
        Shape = qrsHorLine
      end
      object QRShape168: TQRShape
        Left = 686
        Top = 554
        Width = 47
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1815.041666666667000000
          1465.791666666667000000
          124.354166666666700000)
        Shape = qrsHorLine
      end
      object img_Molho: TQRImage
        Left = 696
        Top = 422
        Width = 28
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1841.500000000000000000
          1116.541666666667000000
          74.083333333333320000)
        Picture.Data = {
          07544269746D6170720C0000424D720C00000000000036000000280000002300
          00001D00000001001800000000003C0C00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9B0B1B2B0B1B2B0B1
          B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0
          B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2C1C2C3FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFD5D6D61D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21242F3335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFAEB0B11D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D2124E8E8E8FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87898B1D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          24BEBFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF6062651D21241D21241D21244D50531D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          244246481D21241D21241D2124949697FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF393C3F1D21241D2124383B3E474A4D
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21245155571D21241D21241D21246A6D6FFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFF2F2F31D2124
          1D21241D212455585A2024271D21241D21241F232624272A24272A24272A2427
          2A24272A24272A24272A24272A24272A1E22251D21241D2124363A3C3034361D
          21241D2124414447FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFCBCCCD1D21241D21241D21244E51531D21241D21241D21248486
          88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6366681D
          21241D21241D21244246481D21241D21241F2326F6F6F6FFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFA4A6A71D21241D21241D21244448
          4A1D21241D21241D2124B5B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF9596981D21241D21241D21243B3F411D21241D21241D2124
          CFD0D0FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF7E80
          821D21241D21241D21243B3E411D21241D21241D2124E6E6E7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C6C71D21241D21241D2124
          33373A1D21241D21241D2124A5A7A8FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFF56595B1D21241D21242024272D31341D21241D212436
          3A3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F3F3F31F23261D21241D21242C30331D21241D21241D21247B7D7FFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF2F33351D21241D212427
          2B2E1D21241D21241D212467696BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46494C1D21241D21242226291F23261D21
          241D2124515557FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFE9
          EAEA1D21241D21241D21241E22251D21241D21241D2124989A9BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777A7C1D21
          241D21241D21241E22251D21241D2124292D2FFDFDFDFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFC2C3C31D21241D21241D21241D21241D21241D2124
          1D2124C6C8C8BFC0C1D9DADBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF
          E0A3A4A6EFF0F0A8AAAB1D21241D21241D21241D21241D21241D21241D2124E0
          E0E1FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF9B9D9E1D21241D2124
          1D21241D21241D21241D21241F23263B3E411D21241D21245C5F61BEBFC0FDFD
          FDFFFFFFE3E4E477797B2125281D2124262A2D696B6D1D21241D21241D21241D
          21241D21241D21241D2124B6B7B8FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFF7476781D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21244144477174762327291D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21248D8F90FFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFF4C4F521D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D2124636668FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFCFCFC272B2E1D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D2124393C3FFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFDFDFE01D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124EFF0
          F0FFFFFFFFFFFF000000FFFFFFFFFFFFB8B9BA1D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D2124C7C8C9FFFFFFFFFFFF000000FFFFFFFFFFFF9193941D
          21241D21241D21241D21241D21241D21241D212421252865686AB9BABB8D8F90
          3235381D21241D21241D21241D21241D21243D4143999B9CB8B9BA595B5E1D21
          241D21241D21241D21241D21241D21241D21241D21249D9FA0FFFFFFFFFFFF00
          0000FFFFFFFFFFFF696C6E1D21241D21241D21241D21241D21241D212456595C
          E8E8E8FFFFFFFFFFFFFFFFFFF8F8F9ACAEAF4B4E51202427626567C0C1C2FDFD
          FDFFFFFFFFFFFFFFFFFFD9D9DA3D41431D21241D21241D21241D21241D212420
          2427757779FFFFFFFFFFFF000000FFFFFFFFFFFF4246481D21241D21241D2124
          1D21241D21241D2124BFC0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF0F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EA0A11D21241D
          21241D21241D21241D21241D21244A4E50FFFFFFFFFFFF000000FFFFFFFFFFFF
          C2C3C3C0C1C2C2C3C3B6B7B9C7C8C9C9CACACACBCCF7F7F7FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFEEEEEEC3C4C5C2C3C3BCBDBEA7A9AABEBFC0BCBDBEC1C2C3FFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        Stretch = True
      end
      object img_Triangulo: TQRImage
        Left = 696
        Top = 448
        Width = 28
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1841.500000000000000000
          1185.333333333333000000
          74.083333333333320000)
        Picture.Data = {
          07544269746D6170720C0000424D720C00000000000036000000280000002300
          00001D00000001001800000000003C0C00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFCFCFCFFFFFF000000FDFDFD5A5D5F1D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D2124202427CFD0D0FFFFFF000000FFFF
          FFE3E4E4292D2F1D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21248D8F
          90FFFFFFFFFFFF000000FFFFFFFFFFFFA5A7A81D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21244A4E50F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFFFDFDFD5A
          5D5F1D21241D21241D2124212528626567636668636668636668636668636668
          6366686366686366686366686366686366686366686366686366686366686366
          68636668393C3F1D21241D21241D212424282BDADBDBFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFE4E4E52A2E301D21241D21241D2124A5A7A8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E52B2E311D21241D21241D21249D9EA0FF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFA6A8A91D2124
          1D21241D2124292D2FE3E4E4FFFFFFDBDCDC67696B67696B67696B67696B6769
          6B67696B67696B67696B67696B67696B929495FFFFFFFDFDFD585B5D1D21241D
          21241D2124595B5EFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFD5D60621D21241D21241D21245A5D5FFDFDFDFFFFFF5457
          591D21241D21241D21241D21241D21241D21241D21241D21241D2124CACACBFF
          FFFF9C9D9F1D21241D21241D21242B2E31E4E4E5FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E62A2E301D21241D21
          241D2124A4A5A6FFFFFFD1D2D31E22251D21241D21241D21241D21241D21241D
          21241D21246D6F71FFFFFFD9DADB24282B1D21241D21241D2124ADAFB0FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA8AAAB1D21241D21241D2124282C2FE2E3E3FFFFFF7275761D21241D
          21241D21241D21241D21241D2124272B2EE6E6E7F9F9F94A4D4F1D21241D2124
          1D2124686A6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F62641D21241D21241D212459
          5B5EFDFDFDE8E8E8272B2E1D21241D21241D21241D21241D2124949697FFFFFF
          8B8D8E1D21241D21241D2124333639EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6
          E6E72B2E311D21241D21241D2124A2A3A5FFFFFF9092941D21241D21241D2124
          1D21243D4143F7F8F8CDCECF2024271D21241D21241D2124BDBEBFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAABAC1D21241D21241D2124282C2FE1E2E2
          F6F6F6373B3D1D21241D21241D2124BBBDBDF5F5F53E41441D21241D21241D21
          24787B7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606365
          1D21241D21241D2124575A5CFDFDFDAEB0B11D21241D21245E6163FFFFFF7A7C
          7E1D21241D21241D21243C4042F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE7E7E72C2F321D21241D21241D2124A0A2A3FDFDFD4E51
          53222629DCDDDDC0C1C21D21241D21241D21241F2326CACBCCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACADAE1D21241D21
          241D2124272B2EE0E1E1CBCCCD868889EEEEEE34383B1D21241D21241D212488
          8A8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6164661D21241D21241D212456595BFDFDFDFAFAFA6A6D6F1D
          21241D21241D2124484B4DF8F8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E9E92D31341D21241D21241D
          21249EA0A1B0B1B21D21241D21241D212424272AD8D8D9FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFADAFB01D21241D21241D2124262A2D2C2F321D21241D21241D2124999B9C
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6366681D21241D21241D21241D2124
          1D21241D212456595BFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E9E9
          2D31341D21241D21241D21241D21242A2E30E2E3E3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFAFB0B21D21241D21241D21241D2124AAABACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65686A1D21
          241D2124646769FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFE9EAEA2E3235313437EBEBECFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B3B4BABBBCFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        Stretch = True
      end
      object img_Quadrado: TQRImage
        Left = 696
        Top = 474
        Width = 28
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1841.500000000000000000
          1254.125000000000000000
          74.083333333333320000)
        Picture.Data = {
          07544269746D6170720C0000424D720C00000000000036000000280000002300
          00001D00000001001800000000003C0C00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFA1A3A46366686366686366686366686366686366
          6863666863666863666863666863666863666863666863666863666863666863
          6668636668636668636668636668636668636668636668636668636668636668
          636668636668FBFBFBFFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFF
          FFFFFFFF777A7C1D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124F9F9
          F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D
          21241D21241D2124E2E3E3FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFA6265671D21241D21241D2124F9F9F9FFFFFFFFFFFF00
          0000FFFFFFFFFFFF777A7C1D21241D21241D2124DBDBDDB0B1B2B0B1B2B0B1B2
          B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1
          B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2EEEEEE6366681D21241D21241D
          2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D2124
          C9CACB1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124CF
          D0D06366681D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF
          777A7C1D21241D21241D2124C9CACB1D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D2124CFD0D06366681D21241D21241D2124F9F9F9FFFFFF
          FFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D2124C9CACB1D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D2124CFD0D06366681D2124
          1D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21
          241D2124C9CACB1D21241D21241D21245B5E60ACAEAFACAEAFACAEAFACAEAFAC
          AEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAF65686A1D21241D2124
          1D2124CFD0D06366681D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFF
          FFFFFFFF777A7C1D21241D21241D2124C9CACB1D21241D21241D21247E8082FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF8E90911D21241D21241D2124CFD0D06366681D21241D21241D2124F9F9
          F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D2124C9CACB1D
          21241D21241D21247E8082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E90911D21241D21241D2124CFD0D06366
          681D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D
          21241D21241D2124C9CACB1D21241D21241D21247E8082FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E90911D21
          241D21241D2124CFD0D06366681D21241D21241D2124F9F9F9FFFFFFFFFFFF00
          0000FFFFFFFFFFFF777A7C1D21241D21241D2124C9CACB1D21241D21241D2124
          717476E1E2E2E1E2E2E1E2E2E1E2E2E1E2E2E1E2E2E1E2E2E1E2E2E1E2E2E1E2
          E2E1E2E2E1E2E27F82831D21241D21241D2124CFD0D06366681D21241D21241D
          2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D2124
          C9CACB1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124CF
          D0D06366681D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF
          777A7C1D21241D21241D2124C9CACB1D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D2124CFD0D06366681D21241D21241D2124F9F9F9FFFFFF
          FFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D2124C9CACB1D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D2124CFD0D06366681D2124
          1D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21
          241D2124D5D5D77C7E807C7E807C7E807C7E807C7E807C7E807C7E807C7E807C
          7E807C7E807C7E807C7E807C7E807C7E807C7E807C7E807C7E807C7E807C7E80
          7C7E80E3E4E46366681D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFF
          FFFFFFFF777A7C1D21241D21241D2124E6E6E7FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6366681D21241D21241D2124F9F9
          F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D212455585A5C
          5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F61
          5C5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F613134
          371D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D2124F9F9F9FFFFFFFFFFFF00
          0000FFFFFFFFFFFF777A7C1D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF797C7D202427202427202427
          2024272024272024272024272024272024272024272024272024272024272024
          2720242720242720242720242720242720242720242720242720242720242720
          2427202427202427202427202427F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        Stretch = True
      end
      object img_Ferro: TQRImage
        Left = 696
        Top = 501
        Width = 28
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1841.500000000000000000
          1325.562500000000000000
          74.083333333333320000)
        Picture.Data = {
          07544269746D6170720C0000424D720C00000000000036000000280000002300
          00001D00000001001800000000003C0C00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFDFDFE0D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7
          D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D9D9DADADBDBDADBDBDA
          DBDBDADBDBDADBDBDADBDBDADBDBDADBDBDADBDBDADBDBDADBDBDADBDBDADBDB
          DADBDBE5E5E6FFFFFFFFFFFFFFFFFF000000FFFFFF4A4D4F1D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D2124626567FFFFFFFFFFFFFFFFFF000000FFFF
          FF4A4D4F1D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D2124626567FFFF
          FFFFFFFFFFFFFF000000FFFFFF5255581D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D2124636668FFFFFFFFFFFFFFFFFF000000FFFFFF6A6D6F1D21241D
          21241D21247B7D7F86898A86898A86898A86898A86898A86898A86898A86898A
          86898A86898A8587888385878385878385878385878385878385878385878385
          878385878385878082841D21241D21241D2124636668FFFFFFFFFFFFFFFFFF00
          0000FFFFFF87898B1D21241D21241D2124BABBBCFFFFFFFFFFFFDEDEDFB0B1B2
          B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1
          B2B0B1B2B0B1B2B0B1B2B0B1B2D4D5D5FFFFFFF9F9F91D21241D21241D212464
          6769FFFFFFFFFFFFFFFFFF000000FFFFFFC0C1C21D21241D21241D2124696C6E
          FFFFFFFFFFFFC2C4C41D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D212487898BFFFFFFF9
          F9F91D21241D21241D2124646769FFFFFFFFFFFFFFFFFF000000FFFFFFF6F6F6
          282C2F1D21241D21241D2124CACBCCFFFFFFF3F3F32024271D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21248A8C8EFFFFFFF8F8F91D21241D21241D2124646769FFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFF8183851D21241D21241D21244A4E50F9F9F9FFFF
          FF6063651D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21248D8F90FFFFFFF8F8F91D21241D2124
          1D212465686AFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFE5E5E6282C2F1D21
          241D21241D21245F6264F5F5F5C4C5C61D21241D21241D21241D21241D21241D
          21241F232632353845484B595B5E6C6F70686B6D1D21241D21241D21248F9193
          FFFFFFF7F8F81D21241D21241D212465686AFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFA4A6A71D21241D21241D21241D2124515557EBEBEC9A9C9D1D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D2124919394FFFFFFF7F8F81D21241D21241D212466686BFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF787B7C1D21241D21241D
          21241D21242B2E3197999AB7B9BA3B3F411D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D2124949697FFFFFFF7F7F71D21
          241D21241D212466686BFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFCFCFC7476781D21241D21241D21241D21241D2124393C3F8B8D8FA5A6A8
          7073754347492024271D21241D21241D21241D21241D21241D21241D21241D21
          2496989AFFFFFFF7F7F71D21241D21241D212466686BFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9EA025292C1D21241D2124
          1D21241D21241D21241D21244A4E508B8D8EB4B5B6C0C1C1AFB0B29EA0A19294
          9586898A7A7C7E6E70725E6163B0B1B2FFFFFFF7F7F71D21241D21241D212467
          696BFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE4E4E56E70721D21241D21241D21241D21241D21241D21241D21241D21
          241D21243134374C4F5267696B81838590929497999A9EA0A1A4A5A6A0A2A398
          9A9B1D21241D21241D212467696BFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD0D05E61632024271D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D2124686A6CFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFEBEBECA0A2A35155571F23261D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D2124686A6CFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3C5
          C6C794969765686A45484B2B2E311D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D2124686A6CFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFA0A2A3393C3F393C3F393C3F393C3F393C3F393C3F393C3F39
          3C3F393C3F393C3F393C3F393C3F393C3F393C3F393C3F393C3F2D31341D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D2124686B6DFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF999B9C1D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D2124686B6DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFA0
          A2A31D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D2124696C6EFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFA7A9AA1D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D212469
          6C6EFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFAEB0B11D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21246A6D6FFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFE2E3E3ACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAE
          AFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFAC
          AEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFC9CACAFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        Stretch = True
      end
      object img_Circulo: TQRImage
        Left = 696
        Top = 527
        Width = 28
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1841.500000000000000000
          1394.354166666667000000
          74.083333333333320000)
        Picture.Data = {
          07544269746D6170720C0000424D720C00000000000036000000280000002300
          00001D00000001001800000000003C0C00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E3E4E4CDCECFD7D7D8EEEEEEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F9A8AAAB60626524272A1D
          21241D21241D21241D21243A3D407F8283D7D7D8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B9BA3C
          40421D21241D21241D21241D21241D21241D21241D21241D21241D21241F2326
          737577ECECEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCFCFC888A8C1D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21243B3E41D7D7D8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7F811D21241D21241D21241D21241D2124
          3F4245797C7D90929486898A62656725292C1D21241D21241D21241D21242C2F
          32DBDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A8A91D21241D2124
          1D21241D21244D5053C9CACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F38F91
          9324272A1D21241D21241D21243F4245F2F2F3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EEEEEE2B2E311D21241D21241D2124707375F9F9F9ECECED7F82834A4E502428
          2B45484B77797BE3E4E4FFFFFFCECFCF2E32351D21241D21241D2124888A8CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF8587881D21241D21241D21245B5E60FBFBFBC2C3
          C33235381D21241D21241D21241D21241D21242B2E31B3B5B6FFFFFFC7C8C921
          25281D21241D212425292CE9EAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD34383B1D21241D21
          24232729E0E1E1E0E0E125292C1D21241D21241D21241D21241D21241D21241D
          2124232729D9DADBFFFFFF797C7D1D21241D21241D2124A2A3A5FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFD1D1D21D21241D21241D21246A6D6FFFFFFF6E70721D21241D21241D212428
          2C2F575A5C2D31341D21241D21241D2124545759FFFFFFDDDEDE1D21241D2124
          1D21245D6062FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFACADAE1D21241D21241D2124ACADAEFCFCFC25
          292C1D21241D21242B2E31E3E4E4FFFFFFEDEDED3D41431D21241D21241F2326
          F4F4F4FFFFFF3D41431D21241D2124393C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9596981D21241D
          21241D2124C8C9C9E0E0E11D21241D21241D21246F7274FFFFFFFFFFFFFFFFFF
          9496971D21241D21241D2124CACBCCFFFFFF5A5D5F1D21241D2124232729FDFD
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF9496971D21241D21241D2124CACACBEDEDED1D21241D21241D2124
          6D6F71FFFFFFFFFFFFFFFFFF8688891D21241D21241D2124D4D5D5FFFFFF5B5E
          601D21241D2124222629FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABACAD1D21241D21241D2124ADAFB0
          FFFFFF393C3F1D21241D2124212528B6B7B8FAFAFAC4C5C6292D2F1D21241D21
          2424272AF9F9F9FFFFFF4043461D21241D2124373B3DFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCECF
          1D21241D21241D21246F7173FFFFFF8B8D8E1D21241D21241D21241D21241F23
          261D21241D21241D21241D2124727576FFFFFFE1E2E21D21241D21241D212459
          5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFCFCFC3134371D21241D212425292CE6E6E7F7F8F84246
          481D21241D21241D21241D21241D21241D21241D2124333639EFEFEFFFFFFF80
          82841D21241D21241D21249D9FA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E80821D21241D21
          241D2124646769FDFDFDE7E7E75C5F611D21241D21241D21241D21241D21244D
          5053DDDEDEFFFFFFD0D1D12327291D21241D2124232729E6E6E7FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE9EAEA272B2E1D21241D21241D21247D7F81FCFCFCFDFDFDBBBCBD86
          898A606365818385B2B3B4FAFAFAFFFFFFD7D7D833373A1D21241D21241D2124
          818385FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9EA01D21241D21241D21241D
          2124585B5DD6D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F99D9FA0292D2F
          1D21241D21241D2124393C3FEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF7174761D21241D21241D21241D21241D21244E515387898B9EA0A1949697
          7073752D31341D21241D21241D21241D2124272B2ED4D5D5FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F97A7C7E1D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D2124333639CDCE
          CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          ABACAD3336391D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D212465686AE6E6E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F49A9C9D5155571E22251D21241D21
          241D21241D21242E3235717476CBCCCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEFF0F0D5D6D6BFC0C1C9CACAE0E0E1FBFBFBFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        Stretch = True
      end
      object QRImage7: TQRImage
        Left = 696
        Top = 558
        Width = 28
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1841.500000000000000000
          1476.375000000000000000
          74.083333333333320000)
        Picture.Data = {
          07544269746D6170720C0000424D720C00000000000036000000280000002300
          00001D00000001001800000000003C0C00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9B0B1B2B0B1B2B0B1
          B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0
          B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2C1C2C3FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFD5D6D61D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21242F3335FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFAEB0B11D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D2124E8E8E8FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87898B1D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          24BEBFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF6062651D21241D21241D21244D50531D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          244246481D21241D21241D2124949697FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF393C3F1D21241D2124383B3E474A4D
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21245155571D21241D21241D21246A6D6FFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFF2F2F31D2124
          1D21241D212455585A2024271D21241D21241F232624272A24272A24272A2427
          2A24272A24272A24272A24272A24272A1E22251D21241D2124363A3C3034361D
          21241D2124414447FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFCBCCCD1D21241D21241D21244E51531D21241D21241D21248486
          88FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6366681D
          21241D21241D21244246481D21241D21241F2326F6F6F6FFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFA4A6A71D21241D21241D21244448
          4A1D21241D21241D2124B5B7B7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF9596981D21241D21241D21243B3F411D21241D21241D2124
          CFD0D0FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF7E80
          821D21241D21241D21243B3E411D21241D21241D2124E6E6E7FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C6C71D21241D21241D2124
          33373A1D21241D21241D2124A5A7A8FFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFF56595B1D21241D21242024272D31341D21241D212436
          3A3CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          F3F3F31F23261D21241D21242C30331D21241D21241D21247B7D7FFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF2F33351D21241D212427
          2B2E1D21241D21241D212467696BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46494C1D21241D21242226291F23261D21
          241D2124515557FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFE9
          EAEA1D21241D21241D21241E22251D21241D21241D2124989A9BFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF777A7C1D21
          241D21241D21241E22251D21241D2124292D2FFDFDFDFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFC2C3C31D21241D21241D21241D21241D21241D2124
          1D2124C6C8C8BFC0C1D9DADBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDF
          E0A3A4A6EFF0F0A8AAAB1D21241D21241D21241D21241D21241D21241D2124E0
          E0E1FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF9B9D9E1D21241D2124
          1D21241D21241D21241D21241F23263B3E411D21241D21245C5F61BEBFC0FDFD
          FDFFFFFFE3E4E477797B2125281D2124262A2D696B6D1D21241D21241D21241D
          21241D21241D21241D2124B6B7B8FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFF7476781D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21244144477174762327291D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21248D8F90FFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFF4C4F521D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D2124636668FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFCFCFC272B2E1D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D2124393C3FFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFDFDFE01D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124EFF0
          F0FFFFFFFFFFFF000000FFFFFFFFFFFFB8B9BA1D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D2124C7C8C9FFFFFFFFFFFF000000FFFFFFFFFFFF9193941D
          21241D21241D21241D21241D21241D21241D212421252865686AB9BABB8D8F90
          3235381D21241D21241D21241D21241D21243D4143999B9CB8B9BA595B5E1D21
          241D21241D21241D21241D21241D21241D21241D21249D9FA0FFFFFFFFFFFF00
          0000FFFFFFFFFFFF696C6E1D21241D21241D21241D21241D21241D212456595C
          E8E8E8FFFFFFFFFFFFFFFFFFF8F8F9ACAEAF4B4E51202427626567C0C1C2FDFD
          FDFFFFFFFFFFFFFFFFFFD9D9DA3D41431D21241D21241D21241D21241D212420
          2427757779FFFFFFFFFFFF000000FFFFFFFFFFFF4246481D21241D21241D2124
          1D21241D21241D2124BFC0C1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF0F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EA0A11D21241D
          21241D21241D21241D21241D21244A4E50FFFFFFFFFFFF000000FFFFFFFFFFFF
          C2C3C3C0C1C2C2C3C3B6B7B9C7C8C9C9CACACACBCCF7F7F7FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFEEEEEEC3C4C5C2C3C3BCBDBEA7A9AABEBFC0BCBDBEC1C2C3FFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        Stretch = True
      end
      object QRImage8: TQRImage
        Left = 696
        Top = 584
        Width = 28
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1841.500000000000000000
          1545.166666666667000000
          74.083333333333320000)
        Picture.Data = {
          07544269746D6170720C0000424D720C00000000000036000000280000002300
          00001D00000001001800000000003C0C00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFCFCFCFFFFFF000000FDFDFD5A5D5F1D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D2124202427CFD0D0FFFFFF000000FFFF
          FFE3E4E4292D2F1D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21248D8F
          90FFFFFFFFFFFF000000FFFFFFFFFFFFA5A7A81D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21244A4E50F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFFFDFDFD5A
          5D5F1D21241D21241D2124212528626567636668636668636668636668636668
          6366686366686366686366686366686366686366686366686366686366686366
          68636668393C3F1D21241D21241D212424282BDADBDBFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFE4E4E52A2E301D21241D21241D2124A5A7A8FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E52B2E311D21241D21241D21249D9EA0FF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFA6A8A91D2124
          1D21241D2124292D2FE3E4E4FFFFFFDBDCDC67696B67696B67696B67696B6769
          6B67696B67696B67696B67696B67696B929495FFFFFFFDFDFD585B5D1D21241D
          21241D2124595B5EFDFDFDFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFDFDFD5D60621D21241D21241D21245A5D5FFDFDFDFFFFFF5457
          591D21241D21241D21241D21241D21241D21241D21241D21241D2124CACACBFF
          FFFF9C9D9F1D21241D21241D21242B2E31E4E4E5FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E5E62A2E301D21241D21
          241D2124A4A5A6FFFFFFD1D2D31E22251D21241D21241D21241D21241D21241D
          21241D21246D6F71FFFFFFD9DADB24282B1D21241D21241D2124ADAFB0FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFA8AAAB1D21241D21241D2124282C2FE2E3E3FFFFFF7275761D21241D
          21241D21241D21241D21241D2124272B2EE6E6E7F9F9F94A4D4F1D21241D2124
          1D2124686A6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F62641D21241D21241D212459
          5B5EFDFDFDE8E8E8272B2E1D21241D21241D21241D21241D2124949697FFFFFF
          8B8D8E1D21241D21241D2124333639EDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6
          E6E72B2E311D21241D21241D2124A2A3A5FFFFFF9092941D21241D21241D2124
          1D21243D4143F7F8F8CDCECF2024271D21241D21241D2124BDBEBFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAABAC1D21241D21241D2124282C2FE1E2E2
          F6F6F6373B3D1D21241D21241D2124BBBDBDF5F5F53E41441D21241D21241D21
          24787B7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF606365
          1D21241D21241D2124575A5CFDFDFDAEB0B11D21241D21245E6163FFFFFF7A7C
          7E1D21241D21241D21243C4042F4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFE7E7E72C2F321D21241D21241D2124A0A2A3FDFDFD4E51
          53222629DCDDDDC0C1C21D21241D21241D21241F2326CACBCCFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFACADAE1D21241D21
          241D2124272B2EE0E1E1CBCCCD868889EEEEEE34383B1D21241D21241D212488
          8A8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF6164661D21241D21241D212456595BFDFDFDFAFAFA6A6D6F1D
          21241D21241D2124484B4DF8F8F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E9E92D31341D21241D21241D
          21249EA0A1B0B1B21D21241D21241D212424272AD8D8D9FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFADAFB01D21241D21241D2124262A2D2C2F321D21241D21241D2124999B9C
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6366681D21241D21241D21241D2124
          1D21241D212456595BFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E9E9
          2D31341D21241D21241D21241D21242A2E30E2E3E3FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFAFB0B21D21241D21241D21241D2124AAABACFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF65686A1D21
          241D2124646769FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFE9EAEA2E3235313437EBEBECFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B3B4BABBBCFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        Stretch = True
      end
      object QRImage9: TQRImage
        Left = 696
        Top = 610
        Width = 28
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1841.500000000000000000
          1613.958333333333000000
          74.083333333333320000)
        Picture.Data = {
          07544269746D6170720C0000424D720C00000000000036000000280000002300
          00001D00000001001800000000003C0C00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFA1A3A46366686366686366686366686366686366
          6863666863666863666863666863666863666863666863666863666863666863
          6668636668636668636668636668636668636668636668636668636668636668
          636668636668FBFBFBFFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFF
          FFFFFFFF777A7C1D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124F9F9
          F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D
          21241D21241D2124E2E3E3FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFA
          FAFAFAFAFAFAFAFAFAFA6265671D21241D21241D2124F9F9F9FFFFFFFFFFFF00
          0000FFFFFFFFFFFF777A7C1D21241D21241D2124DBDBDDB0B1B2B0B1B2B0B1B2
          B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1
          B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2EEEEEE6366681D21241D21241D
          2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D2124
          C9CACB1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124CF
          D0D06366681D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF
          777A7C1D21241D21241D2124C9CACB1D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D2124CFD0D06366681D21241D21241D2124F9F9F9FFFFFF
          FFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D2124C9CACB1D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D2124CFD0D06366681D2124
          1D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21
          241D2124C9CACB1D21241D21241D21245B5E60ACAEAFACAEAFACAEAFACAEAFAC
          AEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAF65686A1D21241D2124
          1D2124CFD0D06366681D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFF
          FFFFFFFF777A7C1D21241D21241D2124C9CACB1D21241D21241D21247E8082FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF8E90911D21241D21241D2124CFD0D06366681D21241D21241D2124F9F9
          F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D2124C9CACB1D
          21241D21241D21247E8082FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E90911D21241D21241D2124CFD0D06366
          681D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D
          21241D21241D2124C9CACB1D21241D21241D21247E8082FFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8E90911D21
          241D21241D2124CFD0D06366681D21241D21241D2124F9F9F9FFFFFFFFFFFF00
          0000FFFFFFFFFFFF777A7C1D21241D21241D2124C9CACB1D21241D21241D2124
          717476E1E2E2E1E2E2E1E2E2E1E2E2E1E2E2E1E2E2E1E2E2E1E2E2E1E2E2E1E2
          E2E1E2E2E1E2E27F82831D21241D21241D2124CFD0D06366681D21241D21241D
          2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D2124
          C9CACB1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124CF
          D0D06366681D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF
          777A7C1D21241D21241D2124C9CACB1D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D2124CFD0D06366681D21241D21241D2124F9F9F9FFFFFF
          FFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D2124C9CACB1D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D2124CFD0D06366681D2124
          1D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21
          241D2124D5D5D77C7E807C7E807C7E807C7E807C7E807C7E807C7E807C7E807C
          7E807C7E807C7E807C7E807C7E807C7E807C7E807C7E807C7E807C7E807C7E80
          7C7E80E3E4E46366681D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFF
          FFFFFFFF777A7C1D21241D21241D2124E6E6E7FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6366681D21241D21241D2124F9F9
          F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D21241D21241D212455585A5C
          5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F61
          5C5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F615C5F613134
          371D21241D21241D2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF777A7C1D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D2124F9F9F9FFFFFFFFFFFF00
          0000FFFFFFFFFFFF777A7C1D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          2124F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF797C7D202427202427202427
          2024272024272024272024272024272024272024272024272024272024272024
          2720242720242720242720242720242720242720242720242720242720242720
          2427202427202427202427202427F9F9F9FFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        Stretch = True
      end
      object QRImage10: TQRImage
        Left = 696
        Top = 637
        Width = 28
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1841.500000000000000000
          1685.395833333333000000
          74.083333333333320000)
        Picture.Data = {
          07544269746D6170720C0000424D720C00000000000036000000280000002300
          00001D00000001001800000000003C0C00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFDFDFE0D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7
          D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D7D7D8D9D9DADADBDBDADBDBDA
          DBDBDADBDBDADBDBDADBDBDADBDBDADBDBDADBDBDADBDBDADBDBDADBDBDADBDB
          DADBDBE5E5E6FFFFFFFFFFFFFFFFFF000000FFFFFF4A4D4F1D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D2124626567FFFFFFFFFFFFFFFFFF000000FFFF
          FF4A4D4F1D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D2124626567FFFF
          FFFFFFFFFFFFFF000000FFFFFF5255581D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D2124636668FFFFFFFFFFFFFFFFFF000000FFFFFF6A6D6F1D21241D
          21241D21247B7D7F86898A86898A86898A86898A86898A86898A86898A86898A
          86898A86898A8587888385878385878385878385878385878385878385878385
          878385878385878082841D21241D21241D2124636668FFFFFFFFFFFFFFFFFF00
          0000FFFFFF87898B1D21241D21241D2124BABBBCFFFFFFFFFFFFDEDEDFB0B1B2
          B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1B2B0B1
          B2B0B1B2B0B1B2B0B1B2B0B1B2D4D5D5FFFFFFF9F9F91D21241D21241D212464
          6769FFFFFFFFFFFFFFFFFF000000FFFFFFC0C1C21D21241D21241D2124696C6E
          FFFFFFFFFFFFC2C4C41D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D212487898BFFFFFFF9
          F9F91D21241D21241D2124646769FFFFFFFFFFFFFFFFFF000000FFFFFFF6F6F6
          282C2F1D21241D21241D2124CACBCCFFFFFFF3F3F32024271D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21248A8C8EFFFFFFF8F8F91D21241D21241D2124646769FFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFF8183851D21241D21241D21244A4E50F9F9F9FFFF
          FF6063651D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21248D8F90FFFFFFF8F8F91D21241D2124
          1D212465686AFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFE5E5E6282C2F1D21
          241D21241D21245F6264F5F5F5C4C5C61D21241D21241D21241D21241D21241D
          21241F232632353845484B595B5E6C6F70686B6D1D21241D21241D21248F9193
          FFFFFFF7F8F81D21241D21241D212465686AFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFA4A6A71D21241D21241D21241D2124515557EBEBEC9A9C9D1D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D2124919394FFFFFFF7F8F81D21241D21241D212466686BFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFF787B7C1D21241D21241D
          21241D21242B2E3197999AB7B9BA3B3F411D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D2124949697FFFFFFF7F7F71D21
          241D21241D212466686BFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFCFCFC7476781D21241D21241D21241D21241D2124393C3F8B8D8FA5A6A8
          7073754347492024271D21241D21241D21241D21241D21241D21241D21241D21
          2496989AFFFFFFF7F7F71D21241D21241D212466686BFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9EA025292C1D21241D2124
          1D21241D21241D21241D21244A4E508B8D8EB4B5B6C0C1C1AFB0B29EA0A19294
          9586898A7A7C7E6E70725E6163B0B1B2FFFFFFF7F7F71D21241D21241D212467
          696BFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFE4E4E56E70721D21241D21241D21241D21241D21241D21241D21241D21
          241D21243134374C4F5267696B81838590929497999A9EA0A1A4A5A6A0A2A398
          9A9B1D21241D21241D212467696BFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFD0D05E61632024271D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D2124686A6CFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFEBEBECA0A2A35155571F23261D21241D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D2124686A6CFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F3C5
          C6C794969765686A45484B2B2E311D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D2124686A6CFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFA0A2A3393C3F393C3F393C3F393C3F393C3F393C3F393C3F39
          3C3F393C3F393C3F393C3F393C3F393C3F393C3F393C3F393C3F2D31341D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D2124686B6DFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFF999B9C1D21241D21241D21241D
          21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D2124686B6DFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFA0
          A2A31D21241D21241D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D2124696C6EFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFA7A9AA1D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D212469
          6C6EFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFAEB0B11D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D21241D21241D21241D21241D21241D21241D21241D21241D21241D21241D
          21241D21241D21241D21246A6D6FFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFE2E3E3ACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAE
          AFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFAC
          AEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFACAEAFC9CACAFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        Stretch = True
      end
      object QRImage11: TQRImage
        Left = 696
        Top = 663
        Width = 28
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1841.500000000000000000
          1754.187500000000000000
          74.083333333333320000)
        Picture.Data = {
          07544269746D6170720C0000424D720C00000000000036000000280000002300
          00001D00000001001800000000003C0C00000000000000000000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9E3E4E4CDCECFD7D7D8EEEEEEFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F9A8AAAB60626524272A1D
          21241D21241D21241D21243A3D407F8283D7D7D8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B9BA3C
          40421D21241D21241D21241D21241D21241D21241D21241D21241D21241F2326
          737577ECECEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFCFCFC888A8C1D21241D21241D21241D21241D21241D21241D21241D2124
          1D21241D21241D21241D21241D21243B3E41D7D7D8FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF7D7F811D21241D21241D21241D21241D2124
          3F4245797C7D90929486898A62656725292C1D21241D21241D21241D21242C2F
          32DBDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA6A8A91D21241D2124
          1D21241D21244D5053C9CACAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F38F91
          9324272A1D21241D21241D21243F4245F2F2F3FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          EEEEEE2B2E311D21241D21241D2124707375F9F9F9ECECED7F82834A4E502428
          2B45484B77797BE3E4E4FFFFFFCECFCF2E32351D21241D21241D2124888A8CFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF8587881D21241D21241D21245B5E60FBFBFBC2C3
          C33235381D21241D21241D21241D21241D21242B2E31B3B5B6FFFFFFC7C8C921
          25281D21241D212425292CE9EAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFD34383B1D21241D21
          24232729E0E1E1E0E0E125292C1D21241D21241D21241D21241D21241D21241D
          2124232729D9DADBFFFFFF797C7D1D21241D21241D2124A2A3A5FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFD1D1D21D21241D21241D21246A6D6FFFFFFF6E70721D21241D21241D212428
          2C2F575A5C2D31341D21241D21241D2124545759FFFFFFDDDEDE1D21241D2124
          1D21245D6062FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFACADAE1D21241D21241D2124ACADAEFCFCFC25
          292C1D21241D21242B2E31E3E4E4FFFFFFEDEDED3D41431D21241D21241F2326
          F4F4F4FFFFFF3D41431D21241D2124393C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9596981D21241D
          21241D2124C8C9C9E0E0E11D21241D21241D21246F7274FFFFFFFFFFFFFFFFFF
          9496971D21241D21241D2124CACBCCFFFFFF5A5D5F1D21241D2124232729FDFD
          FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFF9496971D21241D21241D2124CACACBEDEDED1D21241D21241D2124
          6D6F71FFFFFFFFFFFFFFFFFF8688891D21241D21241D2124D4D5D5FFFFFF5B5E
          601D21241D2124222629FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABACAD1D21241D21241D2124ADAFB0
          FFFFFF393C3F1D21241D2124212528B6B7B8FAFAFAC4C5C6292D2F1D21241D21
          2424272AF9F9F9FFFFFF4043461D21241D2124373B3DFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCECF
          1D21241D21241D21246F7173FFFFFF8B8D8E1D21241D21241D21241D21241F23
          261D21241D21241D21241D2124727576FFFFFFE1E2E21D21241D21241D212459
          5C5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFCFCFC3134371D21241D212425292CE6E6E7F7F8F84246
          481D21241D21241D21241D21241D21241D21241D2124333639EFEFEFFFFFFF80
          82841D21241D21241D21249D9FA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7E80821D21241D21
          241D2124646769FDFDFDE7E7E75C5F611D21241D21241D21241D21241D21244D
          5053DDDEDEFFFFFFD0D1D12327291D21241D2124232729E6E6E7FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFE9EAEA272B2E1D21241D21241D21247D7F81FCFCFCFDFDFDBBBCBD86
          898A606365818385B2B3B4FAFAFAFFFFFFD7D7D833373A1D21241D21241D2124
          818385FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9EA01D21241D21241D21241D
          2124585B5DD6D7D7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F99D9FA0292D2F
          1D21241D21241D2124393C3FEEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF7174761D21241D21241D21241D21241D21244E515387898B9EA0A1949697
          7073752D31341D21241D21241D21241D2124272B2ED4D5D5FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F97A7C7E1D21241D21241D21241D2124
          1D21241D21241D21241D21241D21241D21241D21241D21241D2124333639CDCE
          CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          ABACAD3336391D21241D21241D21241D21241D21241D21241D21241D21241D21
          241D212465686AE6E6E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F49A9C9D5155571E22251D21241D21
          241D21241D21242E3235717476CBCCCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFEFF0F0D5D6D6BFC0C1C9CACAE0E0E1FBFBFBFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
        Stretch = True
      end
      object img_limpa: TQRImage
        Left = 616
        Top = 422
        Width = 28
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1629.833333333333000000
          1116.541666666667000000
          74.083333333333320000)
        Stretch = True
      end
      object txtNR34: TQRMemo
        Left = 40
        Top = 43
        Width = 20
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666700000
          105.833333333333300000
          113.770833333333300000
          52.916666666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel113: TQRLabel
        Left = 44
        Top = 24
        Width = 15
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          116.416666666666700000
          63.500000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '34'
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
      object QRLabel114: TQRLabel
        Left = 68
        Top = 24
        Width = 15
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          179.916666666666700000
          63.500000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '36'
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
      object QRLabel115: TQRLabel
        Left = 89
        Top = 24
        Width = 15
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          235.479166666666700000
          63.500000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '38'
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
      object QRLabel116: TQRLabel
        Left = 111
        Top = 24
        Width = 15
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          293.687500000000000000
          63.500000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '40'
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
      object QRLabel117: TQRLabel
        Left = 134
        Top = 24
        Width = 15
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          354.541666666666700000
          63.500000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '42'
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
      object QRLabel118: TQRLabel
        Left = 158
        Top = 24
        Width = 15
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          418.041666666666700000
          63.500000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '44'
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
      object QRLabel119: TQRLabel
        Left = 179
        Top = 24
        Width = 15
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          473.604166666666700000
          63.500000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '46'
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
      object QRLabel120: TQRLabel
        Left = 202
        Top = 24
        Width = 15
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          534.458333333333300000
          63.500000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '48'
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
      object QRLabel121: TQRLabel
        Left = 225
        Top = 24
        Width = 15
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          595.312500000000000000
          63.500000000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '50'
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
      object QRShape110: TQRShape
        Left = 198
        Top = 23
        Width = 1
        Height = 307
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          812.270833333333200000
          523.875000000000000000
          60.854166666666680000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape111: TQRShape
        Left = 221
        Top = 23
        Width = 1
        Height = 307
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          812.270833333333200000
          584.729166666666800000
          60.854166666666680000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object txtNR36: TQRMemo
        Left = 64
        Top = 43
        Width = 20
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666700000
          169.333333333333300000
          113.770833333333300000
          52.916666666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtNR38: TQRMemo
        Left = 87
        Top = 43
        Width = 20
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666700000
          230.187500000000000000
          113.770833333333300000
          52.916666666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtNR40_02: TQRMemo
        Left = 109
        Top = 43
        Width = 20
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666700000
          288.395833333333300000
          113.770833333333300000
          52.916666666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtNR42: TQRMemo
        Left = 131
        Top = 43
        Width = 20
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666700000
          346.604166666666700000
          113.770833333333300000
          52.916666666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtNR44: TQRMemo
        Left = 154
        Top = 43
        Width = 20
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666700000
          407.458333333333300000
          113.770833333333300000
          52.916666666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtNR46: TQRMemo
        Left = 177
        Top = 43
        Width = 20
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666700000
          468.312500000000000000
          113.770833333333300000
          52.916666666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtNR48: TQRMemo
        Left = 200
        Top = 43
        Width = 20
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666700000
          529.166666666666700000
          113.770833333333300000
          52.916666666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtNR50: TQRMemo
        Left = 223
        Top = 43
        Width = 20
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666700000
          590.020833333333300000
          113.770833333333300000
          52.916666666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtTOGRADE: TQRMemo
        Left = 245
        Top = 43
        Width = 32
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666700000
          648.229166666666700000
          113.770833333333300000
          84.666666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtCor: TQRMemo
        Left = 7
        Top = 43
        Width = 31
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666700000
          18.520833333333330000
          113.770833333333300000
          82.020833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object img_Modelo: TQRImage
        Left = 40
        Top = 448
        Width = 624
        Height = 233
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          616.479166666666800000
          105.833333333333300000
          1185.333333333333000000
          1651.000000000000000000)
        Stretch = True
      end
      object txtTOPROD: TQRLabel
        Left = 250
        Top = 312
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          661.458333333333300000
          825.500000000000000000
          68.791666666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0,00'
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
      object txtTO34: TQRLabel
        Left = 40
        Top = 312
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          105.833333333333300000
          825.500000000000000000
          58.208333333333330000)
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
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtTO36: TQRLabel
        Left = 63
        Top = 312
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          166.687500000000000000
          825.500000000000000000
          58.208333333333330000)
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
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtTO38: TQRLabel
        Left = 86
        Top = 312
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          227.541666666666700000
          825.500000000000000000
          58.208333333333330000)
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
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtTO40: TQRLabel
        Left = 108
        Top = 312
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          285.750000000000000000
          825.500000000000000000
          58.208333333333330000)
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
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtTO42: TQRLabel
        Left = 130
        Top = 312
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          343.958333333333300000
          825.500000000000000000
          58.208333333333330000)
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
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtTO44: TQRLabel
        Left = 154
        Top = 312
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          407.458333333333300000
          825.500000000000000000
          58.208333333333330000)
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
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtTO46: TQRLabel
        Left = 177
        Top = 312
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          468.312500000000000000
          825.500000000000000000
          58.208333333333330000)
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
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtTO48: TQRLabel
        Left = 199
        Top = 312
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          526.520833333333300000
          825.500000000000000000
          58.208333333333330000)
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
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtTO50: TQRLabel
        Left = 222
        Top = 312
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          587.375000000000000000
          825.500000000000000000
          58.208333333333330000)
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
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel122: TQRLabel
        Left = 66
        Top = 6
        Width = 19
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          174.625000000000000000
          15.875000000000000000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PP'
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
      object QRLabel53: TQRLabel
        Left = 93
        Top = 6
        Width = 10
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          246.062500000000000000
          15.875000000000000000
          26.458333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'P'
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
      object QRLabel123: TQRLabel
        Left = 112
        Top = 6
        Width = 12
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          296.333333333333300000
          15.875000000000000000
          31.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'M'
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
      object QRLabel124: TQRLabel
        Left = 136
        Top = 6
        Width = 11
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          359.833333333333300000
          15.875000000000000000
          29.104166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'G'
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
      object QRLabel125: TQRLabel
        Left = 154
        Top = 6
        Width = 21
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          407.458333333333300000
          15.875000000000000000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GG'
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
  end
  object qryRelModelo: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACMDP Where MDP_CDMODE=:pCDMODE')
    Left = 24
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'pCDMODE'
        ParamType = ptInput
        Value = ''
      end>
    object qryRelModeloMDP_CDMODE: TStringField
      FieldName = 'MDP_CDMODE'
      Origin = 'INFOMODA."SACMDP.DB".MDP_CDMODE'
      Size = 10
    end
    object qryRelModeloMDP_CDPROD: TStringField
      FieldName = 'MDP_CDPROD'
      Origin = 'INFOMODA."SACMDP.DB".MDP_CDPROD'
      Size = 13
    end
    object qryRelModeloMDP_DTPROD: TMemoField
      FieldName = 'MDP_DTPROD'
      Origin = 'INFOMODA."SACMDP.DB".MDP_DTPROD'
      BlobType = ftMemo
      Size = 2
    end
    object qryRelModeloMDP_IMGFRE: TGraphicField
      FieldName = 'MDP_IMGFRE'
      Origin = 'INFOMODA."SACMDP.DB".MDP_IMGFRE'
      BlobType = ftGraphic
    end
    object qryRelModeloMDP_FLMOLH: TBooleanField
      FieldName = 'MDP_FLMOLH'
      Origin = 'INFOMODA."SACMDP.DB".MDP_FLMOLH'
    end
    object qryRelModeloMDP_FLTRIA: TBooleanField
      FieldName = 'MDP_FLTRIA'
      Origin = 'INFOMODA."SACMDP.DB".MDP_FLTRIA'
    end
    object qryRelModeloMDP_FLETIQ: TBooleanField
      FieldName = 'MDP_FLETIQ'
      Origin = 'INFOMODA."SACMDP.DB".MDP_FLETIQ'
    end
    object qryRelModeloMDP_FLFERR: TBooleanField
      FieldName = 'MDP_FLFERR'
      Origin = 'INFOMODA."SACMDP.DB".MDP_FLFERR'
    end
    object qryRelModeloMDP_FLSOL: TBooleanField
      FieldName = 'MDP_FLSOL'
      Origin = 'INFOMODA."SACMDP.DB".MDP_FLSOL'
    end
  end
  object qryItens: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACIMP')
    Left = 49
    Top = 8
    object qryItensIMP_CDMODE: TStringField
      FieldName = 'IMP_CDMODE'
      Origin = 'INFOMODA."SACIMP.DB".IMP_CDMODE'
      Size = 10
    end
    object qryItensIMP_NRITEM: TStringField
      FieldName = 'IMP_NRITEM'
      Origin = 'INFOMODA."SACIMP.DB".IMP_NRITEM'
      Size = 2
    end
    object qryItensIMP_MTPRIM: TStringField
      FieldName = 'IMP_MTPRIM'
      Origin = 'INFOMODA."SACIMP.DB".IMP_MTPRIM'
      Size = 6
    end
    object qryItensIMP_QTMATE: TFloatField
      FieldName = 'IMP_QTMATE'
      Origin = 'INFOMODA."SACIMP.DB".IMP_QTMATE'
    end
    object qryItensIMP_NMMATE: TStringField
      FieldKind = fkLookup
      FieldName = 'IMP_NMMATE'
      LookupDataSet = qryMaterial
      LookupKeyFields = 'MAT_CDMATE'
      LookupResultField = 'MAT_NMMATE'
      KeyFields = 'IMP_MTPRIM'
      Size = 40
      Lookup = True
    end
    object qryItensIMP_VLCUST: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'IMP_VLCUST'
      LookupDataSet = qryMaterial
      LookupKeyFields = 'MAT_CDMATE'
      LookupResultField = 'MAT_VLCUST'
      KeyFields = 'IMP_MTPRIM'
      Lookup = True
    end
    object qryItensIMP_CDUNID: TStringField
      FieldKind = fkLookup
      FieldName = 'IMP_CDUNID'
      LookupDataSet = qryMaterial
      LookupKeyFields = 'MAT_CDMATE'
      LookupResultField = 'MAT_CDUNID'
      KeyFields = 'IMP_MTPRIM'
      Size = 2
      Lookup = True
    end
  end
  object qryProdutos: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACPRO order by PRO_NMPROD')
    Left = 105
    Top = 8
    object qryProdutosPRO_CDPROD: TStringField
      FieldName = 'PRO_CDPROD'
      Origin = 'INFOMODA."SACPRO.DB".PRO_CDPROD'
      Size = 13
    end
  end
  object qryMaterial: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACMAT order by MAT_NMMATE')
    Left = 141
    Top = 12
    object qryMaterialMAT_CDMATE: TStringField
      FieldName = 'MAT_CDMATE'
      Origin = 'INFOMODA."SACMAT.DB".MAT_CDMATE'
      Size = 6
    end
    object qryMaterialMAT_NMMATE: TStringField
      FieldName = 'MAT_NMMATE'
      Origin = 'INFOMODA."SACMAT.DB".MAT_NMMATE'
      Size = 50
    end
    object qryMaterialMAT_VLCUST: TCurrencyField
      FieldName = 'MAT_VLCUST'
      Origin = 'INFOMODA."SACMAT.DB".MAT_VLCUST'
    end
    object qryMaterialMAT_CDUNID: TStringField
      FieldName = 'MAT_CDUNID'
      Origin = 'INFOMODA."SACMAT.DBF".MAT_CDUNID'
      Size = 2
    end
  end
end
