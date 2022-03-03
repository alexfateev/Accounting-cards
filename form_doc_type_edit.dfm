object fmDocTypeEdit: TfmDocTypeEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
  ClientHeight = 74
  ClientWidth = 474
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel1: TRzLabel
    Left = 8
    Top = 11
    Width = 73
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
  end
  object RzDBEdit1: TRzDBEdit
    Left = 104
    Top = 8
    Width = 361
    Height = 21
    DataSource = UniDataSource1
    DataField = 'type_name'
    TabOrder = 0
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 41
    Width = 474
    Height = 33
    Align = alBottom
    BorderOuter = fsFlat
    BorderSides = [sdTop, sdRight, sdBottom]
    TabOrder = 1
    object RzButton1: TRzButton
      AlignWithMargins = True
      Left = 314
      Top = 4
      Default = True
      ModalResult = 1
      Align = alRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = RzButton1Click
    end
    object RzButton2: TRzButton
      AlignWithMargins = True
      Left = 395
      Top = 4
      ModalResult = 2
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = RzButton2Click
    end
  end
  object UniDataSource1: TUniDataSource
    DataSet = fmDocType.UniTable1
    Left = 32
    Top = 32
  end
end
