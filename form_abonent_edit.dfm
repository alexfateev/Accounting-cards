object fmAbonentEdit: TfmAbonentEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1040#1073#1086#1085#1077#1085#1090
  ClientHeight = 97
  ClientWidth = 528
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
    Width = 35
    Height = 13
    Caption = #1053#1086#1084#1077#1088':'
  end
  object RzLabel2: TRzLabel
    Left = 8
    Top = 38
    Width = 159
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103':'
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 65
    Width = 528
    Height = 32
    Align = alBottom
    BorderOuter = fsFlat
    BorderSides = [sdTop]
    TabOrder = 0
    ExplicitWidth = 372
    object RzButton1: TRzButton
      AlignWithMargins = True
      Left = 369
      Top = 4
      Default = True
      ModalResult = 1
      Align = alRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = RzButton1Click
      ExplicitLeft = 213
    end
    object RzButton2: TRzButton
      AlignWithMargins = True
      Left = 450
      Top = 4
      ModalResult = 2
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = RzButton2Click
      ExplicitLeft = 294
    end
  end
  object RzDBEdit1: TRzDBEdit
    Left = 173
    Top = 8
    Width = 348
    Height = 21
    DataSource = UniDataSource1
    DataField = 'abon_number'
    TabOrder = 1
  end
  object RzDBEdit2: TRzDBEdit
    Left = 173
    Top = 35
    Width = 348
    Height = 21
    DataSource = UniDataSource1
    DataField = 'abon_name'
    TabOrder = 2
  end
  object UniDataSource1: TUniDataSource
    DataSet = fmAbonement.UniTable1
    Left = 72
    Top = 40
  end
end
