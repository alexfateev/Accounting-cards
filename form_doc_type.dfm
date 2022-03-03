object fmDocType: TfmDocType
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1058#1080#1087#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
  ClientHeight = 561
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 26
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    TabOrder = 0
    ExplicitWidth = 635
    object RzToolButton1: TRzToolButton
      Left = 120
      Top = 0
      Width = 60
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = RzToolButton1Click
      ExplicitLeft = 150
    end
    object RzToolButton2: TRzToolButton
      Left = 60
      Top = 0
      Width = 60
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = RzToolButton2Click
      ExplicitLeft = 75
    end
    object RzToolButton3: TRzToolButton
      Left = 0
      Top = 0
      Width = 60
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1053#1086#1074#1099#1081
      OnClick = RzToolButton3Click
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 26
    Width = 784
    Height = 535
    Align = alClient
    AutoFitColWidths = True
    DataSource = UniDataSource1
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'type_name'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object UniTable1: TUniTable
    TableName = 't_type'
    Connection = fmMain.DBConnection
    Left = 312
    Top = 152
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniTable1
    OnDataChange = UniDataSource1DataChange
    Left = 312
    Top = 208
  end
end
