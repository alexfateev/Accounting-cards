object fmAbonement: TfmAbonement
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = #1040#1073#1086#1085#1077#1084#1077#1085#1090#1099
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
    Height = 27
    Align = alTop
    BorderOuter = fsGroove
    BorderSides = [sdBottom]
    TabOrder = 0
    object RzToolButton1: TRzToolButton
      Left = 0
      Top = 0
      Width = 70
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1053#1086#1074#1099#1081
      OnClick = RzButton1Click
      ExplicitLeft = 225
    end
    object RzToolButton2: TRzToolButton
      Left = 70
      Top = 0
      Width = 70
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = RzButton2Click
      ExplicitLeft = 295
    end
    object RzToolButton3: TRzToolButton
      Left = 140
      Top = 0
      Width = 70
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = RzButton3Click
      ExplicitLeft = 365
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 27
    Width = 784
    Height = 534
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
        FieldName = 'abon_number'
        Footers = <>
        Title.Caption = #1053#1086#1084#1077#1088
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'abon_name'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
        Width = 250
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object UniTable1: TUniTable
    TableName = 't_abonement'
    OrderFields = 'abon_number'
    Connection = fmMain.DBConnection
    Left = 400
    Top = 248
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniTable1
    OnDataChange = UniDataSource1DataChange
    Left = 400
    Top = 296
  end
end
