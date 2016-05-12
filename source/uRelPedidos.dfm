object frmRelPedidos: TfrmRelPedidos
  Left = 197
  Top = 111
  Width = 564
  Height = 456
  HorzScrollBar.Position = 11
  Caption = 'frmRelPedidos'
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
  object qrRelPedidos: TQuickRep
    Left = -11
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
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
      200.000000000000000000
      2970.000000000000000000
      80.000000000000000000
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
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 987
      Width = 718
      Height = 59
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        156.104166666666700000
        1899.708333333333000000)
      BandType = rbPageFooter
      object QRLabel20: TQRLabel
        Left = 8
        Top = 7
        Width = 33
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          18.520833333333330000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'OBS:'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 27
        Width = 717
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          71.437500000000000000
          1897.062500000000000000)
        Shape = qrsHorLine
      end
      object QRLabel21: TQRLabel
        Left = 8
        Top = 35
        Width = 166
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          21.166666666666670000
          92.604166666666680000
          439.208333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DATA ____/____/_________'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Left = 264
        Top = 33
        Width = 444
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          698.500000000000000000
          87.312500000000000000
          1174.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COMPRADOR: __________________________________________________'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 42
        Top = 22
        Width = 657
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          111.125000000000000000
          58.208333333333320000
          1738.312500000000000000)
        Shape = qrsHorLine
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 232
      Width = 718
      Height = 755
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1997.604166666667000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRShape21: TQRShape
        Left = 0
        Top = 55
        Width = 717
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          0.000000000000000000
          145.520833333333300000
          1897.062500000000000000)
        Shape = qrsHorLine
      end
      object QRShape22: TQRShape
        Left = 82
        Top = 1
        Width = 1
        Height = 732
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1936.750000000000000000
          216.958333333333300000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape23: TQRShape
        Left = 152
        Top = 1
        Width = 1
        Height = 732
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1936.750000000000000000
          402.166666666666700000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape27: TQRShape
        Left = 153
        Top = 17
        Width = 337
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          404.812500000000000000
          44.979166666666670000
          891.645833333333200000)
        Shape = qrsHorLine
      end
      object QRShape28: TQRShape
        Left = 153
        Top = 36
        Width = 337
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          404.812500000000000000
          95.250000000000000000
          891.645833333333200000)
        Shape = qrsHorLine
      end
      object QRLabel24: TQRLabel
        Left = 16
        Top = 22
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          42.333333333333340000
          58.208333333333340000
          137.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'C'#211'DIGO'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 105
        Top = 22
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          277.812500000000000000
          58.208333333333340000
          76.729166666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COR'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 504
        Top = 22
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1333.500000000000000000
          58.208333333333340000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QUANT.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 582
        Top = 14
        Width = 51
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333320000
          1539.875000000000000000
          37.041666666666670000
          134.937500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'PRE'#199'O UNIT.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 652
        Top = 14
        Width = 51
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333320000
          1725.083333333333000000
          37.041666666666670000
          134.937500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'PRE'#199'O TOTAL'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 281
        Top = 0
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          743.479166666666800000
          0.000000000000000000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TAMANHOS'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Left = 198
        Top = 19
        Width = 19
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          523.875000000000000000
          50.270833333333330000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'PP'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 242
        Top = 19
        Width = 10
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          640.291666666666800000
          50.270833333333330000
          26.458333333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'P'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel32: TQRLabel
        Left = 316
        Top = 19
        Width = 11
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          836.083333333333400000
          50.270833333333330000
          29.104166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'G'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 275
        Top = 19
        Width = 12
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          727.604166666666800000
          50.270833333333330000
          31.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'M'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 349
        Top = 19
        Width = 21
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          923.395833333333400000
          50.270833333333330000
          55.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'GG'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape29: TQRShape
        Left = 189
        Top = 17
        Width = 1
        Height = 732
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1936.750000000000000000
          500.062500000000000000
          44.979166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape30: TQRShape
        Left = 227
        Top = 17
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          600.604166666666800000
          44.979166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape31: TQRShape
        Left = 266
        Top = 17
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          703.791666666666800000
          44.979166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape32: TQRShape
        Left = 302
        Top = 17
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          799.041666666666800000
          44.979166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape33: TQRShape
        Left = 340
        Top = 17
        Width = 1
        Height = 735
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1944.687500000000000000
          899.583333333333200000
          44.979166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape34: TQRShape
        Left = 378
        Top = 17
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1000.125000000000000000
          44.979166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape35: TQRShape
        Left = 416
        Top = 17
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1100.666666666667000000
          44.979166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape36: TQRShape
        Left = 454
        Top = 17
        Width = 1
        Height = 730
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1931.458333333333000000
          1201.208333333333000000
          44.979166666666670000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel35: TQRLabel
        Left = 161
        Top = 39
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          425.979166666666700000
          103.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '34'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 201
        Top = 39
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          103.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '36'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 238
        Top = 39
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          629.708333333333400000
          103.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '38'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 278
        Top = 39
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          735.541666666666800000
          103.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '40'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel39: TQRLabel
        Left = 430
        Top = 39
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1137.708333333333000000
          103.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '48'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel40: TQRLabel
        Left = 313
        Top = 39
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          828.145833333333200000
          103.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '42'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 353
        Top = 39
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          933.979166666666800000
          103.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '44'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 390
        Top = 39
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1031.875000000000000000
          103.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '46'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel43: TQRLabel
        Left = 465
        Top = 39
        Width = 15
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1230.312500000000000000
          103.187500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '50'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object txtNR34: TQRMemo
        Left = 154
        Top = 58
        Width = 33
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          407.458333333333300000
          153.458333333333300000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtNR36: TQRMemo
        Left = 192
        Top = 58
        Width = 33
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          508.000000000000000000
          153.458333333333300000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtNR38: TQRMemo
        Left = 230
        Top = 58
        Width = 33
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          608.541666666666800000
          153.458333333333300000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtNR40: TQRMemo
        Left = 268
        Top = 58
        Width = 33
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          709.083333333333200000
          153.458333333333300000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtNR42: TQRMemo
        Left = 305
        Top = 58
        Width = 33
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          806.979166666666800000
          153.458333333333300000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtNR44: TQRMemo
        Left = 343
        Top = 58
        Width = 33
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          907.520833333333200000
          153.458333333333300000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtNR46: TQRMemo
        Left = 381
        Top = 58
        Width = 33
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          1008.062500000000000000
          153.458333333333300000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtNR48: TQRMemo
        Left = 419
        Top = 58
        Width = 33
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          1108.604166666667000000
          153.458333333333300000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtNR50: TQRMemo
        Left = 455
        Top = 58
        Width = 33
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          1203.854166666667000000
          153.458333333333300000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtQTPROD: TQRMemo
        Left = 494
        Top = 58
        Width = 72
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          1307.041666666667000000
          153.458333333333300000
          190.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtVLUNIT: TQRMemo
        Left = 572
        Top = 58
        Width = 66
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          1513.416666666667000000
          153.458333333333300000
          174.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtTOTAL: TQRMemo
        Left = 646
        Top = 58
        Width = 67
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          1709.208333333333000000
          153.458333333333300000
          177.270833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtCDPROD: TQRMemo
        Left = -17
        Top = 58
        Width = 98
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          -44.979166666666670000
          153.458333333333300000
          259.291666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object txtCOR: TQRMemo
        Left = 84
        Top = 58
        Width = 68
        Height = 666
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1762.125000000000000000
          222.250000000000000000
          153.458333333333300000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object QRShape37: TQRShape
        Left = 0
        Top = 725
        Width = 718
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          0.000000000000000000
          1918.229166666667000000
          1899.708333333333000000)
        Shape = qrsRectangle
      end
      object QRLabel44: TQRLabel
        Left = 336
        Top = 730
        Width = 54
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          889.000000000000000000
          1931.458333333333000000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TOTAL'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape24: TQRShape
        Left = 490
        Top = 1
        Width = 1
        Height = 753
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1992.312500000000000000
          1296.458333333333000000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape26: TQRShape
        Left = 568
        Top = 1
        Width = 1
        Height = 753
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1992.312500000000000000
          1502.833333333333000000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape25: TQRShape
        Left = 643
        Top = 1
        Width = 1
        Height = 753
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          1992.312500000000000000
          1701.270833333333000000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object txtTOQUAN: TQRLabel
        Left = 515
        Top = 730
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1362.604166666667000000
          1931.458333333333000000
          68.791666666666680000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0,00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object txtTOPREC: TQRLabel
        Left = 614
        Top = 730
        Width = 26
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1624.541666666667000000
          1931.458333333333000000
          68.791666666666680000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0,00'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object txtTOTALGERAL: TQRLabel
        Left = 682
        Top = 729
        Width = 32
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          1804.458333333333000000
          1928.812500000000000000
          84.666666666666680000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '0,00'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 30
      Width = 718
      Height = 202
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
        534.458333333333400000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRShape1: TQRShape
        Left = 0
        Top = 1
        Width = 718
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          201.083333333333300000
          0.000000000000000000
          2.645833333333333000
          1899.708333333333000000)
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 55
        Width = 718
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          145.520833333333300000
          1899.708333333333000000)
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = 188
        Top = 2
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          497.416666666666700000
          5.291666666666667000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Left = 550
        Top = 1
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          1455.208333333333000000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel1: TQRLabel
        Left = 576
        Top = 4
        Width = 111
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          1524.000000000000000000
          10.583333333333330000
          293.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'P E D I D O'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 16
      end
      object QRLabel2: TQRLabel
        Left = 48
        Top = 57
        Width = 621
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          150.812500000000000000
          1643.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 
          'Rua Jaic'#243's, N'#186' 04 / Ilhotas, Fone: (86)3222-3941   -  Fax: 3221-' +
          '0945  -  CEP: 64001-730  -  Teresina - Piau'#237
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 5
        Top = 86
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          227.541666666666700000
          264.583333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'RAZ'#195'O SOCIAL:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 5
        Top = 106
        Width = 38
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          280.458333333333400000
          100.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 350
        Top = 106
        Width = 64
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          926.041666666666800000
          280.458333333333400000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'INSC.EST:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 5
        Top = 125
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          330.729166666666700000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'ENDERE'#199'O:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 419
        Top = 125
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1108.604166666667000000
          330.729166666666700000
          142.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'BAIRRO:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 5
        Top = 143
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          378.354166666666700000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CIDADE:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 350
        Top = 143
        Width = 32
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          926.041666666666800000
          378.354166666666700000
          84.666666666666680000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CEP:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 470
        Top = 143
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1243.541666666667000000
          378.354166666666700000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'UF:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 532
        Top = 143
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1407.583333333333000000
          378.354166666666700000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FONE:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 5
        Top = 162
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          428.625000000000000000
          238.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COMPRADOR:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 390
        Top = 162
        Width = 57
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1031.875000000000000000
          428.625000000000000000
          150.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'TRANSP:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 5
        Top = 181
        Width = 110
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          13.229166666666670000
          478.895833333333400000
          291.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FORMA DE PAG.:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 133
        Top = 181
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          351.895833333333400000
          478.895833333333400000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CHEQUES'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 225
        Top = 181
        Width = 51
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          595.312500000000000000
          478.895833333333400000
          134.937500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'DUPLIC.'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 289
        Top = 181
        Width = 71
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          764.645833333333400000
          478.895833333333400000
          187.854166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'D.P.RESP.:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 459
        Top = 181
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1214.437500000000000000
          478.895833333333400000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FONE:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 583
        Top = 181
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1542.520833333333000000
          478.895833333333400000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'COND. PAG:'
        Color = clWhite
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 362
        Top = 194
        Width = 95
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          957.791666666666800000
          513.291666666666700000
          251.354166666666700000)
        Shape = qrsHorLine
      end
      object QRShape6: TQRShape
        Left = 503
        Top = 194
        Width = 78
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          1330.854166666667000000
          513.291666666666700000
          206.375000000000000000)
        Shape = qrsHorLine
      end
      object QRShape7: TQRShape
        Left = 662
        Top = 194
        Width = 51
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666667000
          1751.541666666667000000
          513.291666666666700000
          134.937500000000000000)
        Shape = qrsHorLine
      end
      object QRShape10: TQRShape
        Left = 107
        Top = 100
        Width = 606
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          283.104166666666700000
          264.583333333333300000
          1603.375000000000000000)
        Shape = qrsHorLine
      end
      object QRShape11: TQRShape
        Left = 42
        Top = 120
        Width = 305
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          111.125000000000000000
          317.500000000000000000
          806.979166666666800000)
        Shape = qrsHorLine
      end
      object QRShape12: TQRShape
        Left = 416
        Top = 120
        Width = 296
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1100.666666666667000000
          317.500000000000000000
          783.166666666666800000)
        Shape = qrsHorLine
      end
      object QRShape13: TQRShape
        Left = 86
        Top = 141
        Width = 329
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          227.541666666666700000
          373.062500000000000000
          870.479166666666800000)
        Shape = qrsHorLine
      end
      object QRShape14: TQRShape
        Left = 475
        Top = 141
        Width = 235
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1256.770833333333000000
          373.062500000000000000
          621.770833333333200000)
        Shape = qrsHorLine
      end
      object QRShape15: TQRShape
        Left = 60
        Top = 159
        Width = 287
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          158.750000000000000000
          420.687500000000000000
          759.354166666666800000)
        Shape = qrsHorLine
      end
      object QRShape16: TQRShape
        Left = 99
        Top = 178
        Width = 287
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          261.937500000000000000
          470.958333333333300000
          759.354166666666800000)
        Shape = qrsHorLine
      end
      object QRShape17: TQRShape
        Left = 450
        Top = 177
        Width = 262
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1190.625000000000000000
          468.312500000000000000
          693.208333333333200000)
        Shape = qrsHorLine
      end
      object QRShape18: TQRShape
        Left = 383
        Top = 159
        Width = 84
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1013.354166666667000000
          420.687500000000000000
          222.250000000000000000)
        Shape = qrsHorLine
      end
      object QRShape19: TQRShape
        Left = 497
        Top = 159
        Width = 32
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1314.979166666667000000
          420.687500000000000000
          84.666666666666680000)
        Shape = qrsHorLine
      end
      object QRShape20: TQRShape
        Left = 577
        Top = 159
        Width = 137
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1526.645833333333000000
          420.687500000000000000
          362.479166666666700000)
        Shape = qrsHorLine
      end
      object QRLabel23: TQRLabel
        Left = 1
        Top = 10
        Width = 185
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333320000
          2.645833333333333000
          26.458333333333330000
          489.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Todaa Jovem'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -32
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 24
      end
      object txtNRPEDI: TQRLabel
        Left = 592
        Top = 28
        Width = 75
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1566.333333333333000000
          74.083333333333340000
          198.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'txtNRPEDI'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRDBText1: TQRDBText
        Left = 109
        Top = 85
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          288.395833333333400000
          224.895833333333300000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryClientes
        DataField = 'CLI_NMCLIE'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 45
        Top = 106
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          119.062500000000000000
          280.458333333333400000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryClientes
        DataField = 'CLI_CPFCGC'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 417
        Top = 106
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1103.312500000000000000
          280.458333333333400000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryClientes
        DataField = 'CLI_IDEINS'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 85
        Top = 125
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          224.895833333333300000
          330.729166666666700000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryClientes
        DataField = 'CLI_ENCLIE'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 478
        Top = 125
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1264.708333333333000000
          330.729166666666700000
          203.729166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryClientes
        DataField = 'CLI_NMBAIR'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 61
        Top = 143
        Width = 75
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          161.395833333333300000
          378.354166666666700000
          198.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryClientes
        DataField = 'CLI_CIDADE'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText7: TQRDBText
        Left = 384
        Top = 143
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1016.000000000000000000
          378.354166666666700000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryClientes
        DataField = 'CLI_CEPCLI'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 499
        Top = 143
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1320.270833333333000000
          378.354166666666700000
          89.958333333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryClientes
        DataField = 'CLI_UFCLIE'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 580
        Top = 143
        Width = 81
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1534.583333333333000000
          378.354166666666700000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = qryClientes
        DataField = 'CLI_NRFONE'
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object qryClientes: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACCLI order by CLI_NMCLIE')
    Left = 8
    Top = 24
    object qryClientesCLI_CDCLIE: TStringField
      FieldName = 'CLI_CDCLIE'
      Origin = 'INFOMODA."SACCLI.DBF".CLI_CDCLIE'
      Size = 7
    end
    object qryClientesCLI_NMCLIE: TStringField
      FieldName = 'CLI_NMCLIE'
      Origin = 'INFOMODA."SACCLI.DBF".CLI_NMCLIE'
      Size = 40
    end
    object qryClientesCLI_ENCLIE: TStringField
      FieldName = 'CLI_ENCLIE'
      Origin = 'INFOMODA."SACCLI.DBF".CLI_ENCLIE'
      Size = 40
    end
    object qryClientesCLI_CDBAIR: TStringField
      FieldName = 'CLI_CDBAIR'
      Origin = 'INFOMODA."SACCLI.DBF".CLI_CDBAIR'
      Size = 3
    end
    object qryClientesCLI_NRFONE: TStringField
      FieldName = 'CLI_NRFONE'
      Origin = 'INFOMODA."SACCLI.DBF".CLI_NRFONE'
      EditMask = '(99)9999-9999;0;_'
      Size = 10
    end
    object qryClientesCLI_CDCIDA: TStringField
      FieldName = 'CLI_CDCIDA'
      Origin = 'INFOMODA."SACCLI.DBF".CLI_CDCIDA'
      Size = 3
    end
    object qryClientesCLI_CEPCLI: TStringField
      FieldName = 'CLI_CEPCLI'
      Origin = 'INFOMODA."SACCLI.DBF".CLI_CEPCLI'
      EditMask = '99999-999;0;_'
      Size = 8
    end
    object qryClientesCLI_IDEINS: TStringField
      FieldName = 'CLI_IDEINS'
      Origin = 'INFOMODA."SACCLI.DBF".CLI_IDEINS'
      Size = 15
    end
    object qryClientesCLI_CPFCGC: TStringField
      FieldName = 'CLI_CPFCGC'
      Origin = 'INFOMODA."SACCLI.DBF".CLI_CPFCGC'
      EditMask = '99.999.999/9999.99;0;_'
      Size = 14
    end
    object qryClientesCLI_UFCLIE: TStringField
      FieldName = 'CLI_UFCLIE'
      Origin = 'INFOMODA."SACCLI.DBF".CLI_UFCLIE'
      Size = 2
    end
    object qryClientesCLI_CIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLI_CIDADE'
      LookupDataSet = qryCidade
      LookupKeyFields = 'CID_CDCIDA'
      LookupResultField = 'CID_NMCIDA'
      KeyFields = 'CLI_CDCIDA'
      Size = 30
      Lookup = True
    end
    object qryClientesCLI_NMBAIR: TStringField
      FieldKind = fkLookup
      FieldName = 'CLI_NMBAIR'
      LookupDataSet = qryBairro
      LookupKeyFields = 'BAI_CDBAIR'
      LookupResultField = 'BAI_NMBAIR'
      KeyFields = 'CLI_CDBAIR'
      Size = 30
      Lookup = True
    end
  end
  object qryBairro: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACBAI order by BAI_NMBAIR')
    Left = 488
    Top = 128
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
  object qryCidade: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from SACCID order by CID_NMCIDA')
    Left = 488
    Top = 80
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
end
