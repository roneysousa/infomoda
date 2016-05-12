object frmRelEtiqueta: TfrmRelEtiqueta
  Left = 225
  Top = 127
  Width = 696
  Height = 483
  Caption = 'frmRelEtiqueta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object qrEtiquetas: TQuickRep
    Left = 0
    Top = 0
    Width = 952
    Height = 1347
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = qryEtiquetas
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
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
    Page.Columns = 5
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      40.000000000000000000
      50.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = First
    PrintIfEmpty = True
    ReportTitle = 'Visualiza'#231#227'o de Etiquetas'
    SnapToGrid = True
    Units = MM
    Zoom = 120
    object DetailBand1: TQRBand
      Left = 45
      Top = 45
      Width = 159
      Height = 95
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
        209.461805555555600000
        350.572916666666700000)
      BandType = rbDetail
      object QRDBText3: TQRDBText
        Left = 9
        Top = 16
        Width = 147
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.797619047619050000
          18.898809523809530000
          35.907738095238090000
          325.059523809523800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryEtiquetas
        DataField = 'EQT_NMPROD'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object QRDBImage1: TQRDBImage
        Left = 0
        Top = 29
        Width = 155
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          143.315972222222200000
          0.000000000000000000
          63.940972222222230000
          341.753472222222200000)
        DataField = 'EQT_IMGBAR'
        DataSet = qryEtiquetas
        Stretch = True
      end
    end
  end
  object qryEtiquetas: TQuery
    DatabaseName = 'InfoModa'
    SQL.Strings = (
      'Select * from "SACEQT.DB"')
    Left = 16
    Top = 24
    object qryEtiquetasEQT_CDPROD: TStringField
      FieldName = 'EQT_CDPROD'
      Origin = 'DBETIQUETA."SACEQT.DBF".EQT_CDPROD'
      Size = 13
    end
    object qryEtiquetasEQT_NMPROD: TStringField
      FieldName = 'EQT_NMPROD'
      Origin = 'DBETIQUETA."SACEQT.DBF".EQT_NMPROD'
      Size = 50
    end
    object qryEtiquetasEQT_VLVEND: TFloatField
      FieldName = 'EQT_VLVEND'
      Origin = 'DBETIQUETA."SACEQT.DBF".EQT_VLVEND'
      DisplayFormat = '#.#0'
    end
    object qryEtiquetasEQT_IMGBAR: TGraphicField
      FieldName = 'EQT_IMGBAR'
      Origin = 'DBETIQUETA."SACEQT.DB".EQT_IMGBAR'
      BlobType = ftGraphic
    end
  end
end
