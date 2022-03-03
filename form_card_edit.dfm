object fmCardEdit: TfmCardEdit
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1050#1072#1088#1090#1086#1095#1082#1072
  ClientHeight = 550
  ClientWidth = 746
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
    Top = 518
    Width = 746
    Height = 32
    Align = alBottom
    BorderOuter = fsFlat
    BorderSides = [sdTop]
    TabOrder = 0
    object RzButton1: TRzButton
      AlignWithMargins = True
      Left = 587
      Top = 4
      ModalResult = 1
      Align = alRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      TabOrder = 0
      OnClick = RzButton1Click
    end
    object RzButton2: TRzButton
      AlignWithMargins = True
      Left = 668
      Top = 4
      ModalResult = 2
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = RzButton2Click
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 161
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    TabOrder = 1
    object RzLabel1: TRzLabel
      Left = 14
      Top = 12
      Width = 70
      Height = 13
      Caption = #1053#1086#1084#1077#1088' '#1082#1072#1088#1090#1099':'
    end
    object RzLabel2: TRzLabel
      Left = 14
      Top = 39
      Width = 60
      Height = 13
      Caption = #1048#1085#1074'. '#1085#1086#1084#1077#1088':'
    end
    object RzLabel3: TRzLabel
      Left = 14
      Top = 66
      Width = 80
      Height = 13
      Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
    end
    object RzLabel4: TRzLabel
      Left = 14
      Top = 93
      Width = 77
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
    end
    object RzLabel5: TRzLabel
      Left = 14
      Top = 120
      Width = 71
      Height = 13
      Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077':'
    end
    object RzDBNumericEdit2: TRzDBNumericEdit
      Left = 108
      Top = 36
      Width = 81
      Height = 21
      DataSource = UniDataSource1
      DataField = 'card_inventory_number'
      Alignment = taLeftJustify
      TabOrder = 1
      DisplayFormat = ',0;(,0)'
    end
    object RzDBNumericEdit1: TRzDBNumericEdit
      Left = 108
      Top = 9
      Width = 81
      Height = 21
      DataSource = UniDataSource1
      DataField = 'card_number'
      Alignment = taLeftJustify
      TabOrder = 0
      DisplayFormat = ',0;(,0)'
    end
    object RzDBComboBox1: TRzDBComboBox
      Left = 108
      Top = 63
      Width = 285
      Height = 21
      DataField = 'card_type_id'
      DataSource = UniDataSource1
      TabOrder = 2
      Items.Strings = (
        '1'
        '2')
    end
    object RzDBEdit1: TRzDBEdit
      Left = 108
      Top = 90
      Width = 533
      Height = 21
      DataSource = UniDataSource1
      DataField = 'card_name'
      TabOrder = 3
    end
    object RzDBEdit2: TRzDBEdit
      Left = 108
      Top = 117
      Width = 533
      Height = 21
      DataSource = UniDataSource1
      DataField = 'card_sign'
      TabOrder = 4
    end
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 161
    Width = 746
    Height = 26
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    TabOrder = 2
    object RzToolButton1: TRzToolButton
      Left = 0
      Top = 0
      Width = 64
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnClick = RzToolButton1Click
    end
    object RzToolButton2: TRzToolButton
      Left = 64
      Top = 0
      Width = 65
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = RzToolButton2Click
    end
    object RzToolButton3: TRzToolButton
      Left = 129
      Top = 0
      Width = 56
      ShowCaption = True
      UseToolbarButtonSize = False
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = RzToolButton3Click
      ExplicitLeft = 121
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 187
    Width = 746
    Height = 331
    Align = alClient
    AutoFitColWidths = True
    Ctl3D = True
    DataSource = UniDataSource2
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 3
    OnDblClick = RzToolButton2Click
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'abon_number'
        Footers = <>
        Title.Caption = #1053#1086#1084#1077#1088
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'abon_name'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'doc_employee'
        Footers = <>
        Title.Caption = #1050#1086#1084#1091' '#1074#1099#1076#1072#1085#1086
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'doc_count'
        Footers = <>
        Title.Caption = #1050#1086#1083'-'#1074#1086
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'doc_date'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object UniQuery1: TUniQuery
    Connection = fmMain.DBConnection
    SQL.Strings = (
      'SELECT * FROM t_card LEFT JOIN t_type ON card_type_id = type_id')
    Left = 592
    Top = 24
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 664
    Top = 24
  end
  object UniDataSource2: TUniDataSource
    DataSet = UniQuery2
    OnDataChange = UniDataSource2DataChange
    Left = 576
    Top = 336
  end
  object UniQuery2: TUniQuery
    Connection = fmMain.DBConnection
    SQL.Strings = (
      
        'SELECT * FROM t_issued_documents LEFT JOIN t_abonement ON abon_i' +
        'd = doc_abonement_id')
    MasterSource = UniDataSource1
    MasterFields = 'card_id'
    DetailFields = 'doc_card_id'
    Left = 576
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'card_id'
        Value = nil
      end>
  end
end
