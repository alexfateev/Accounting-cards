object fmIssuedDoc: TfmIssuedDoc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = #1042#1099#1076#1072#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
  ClientHeight = 549
  ClientWidth = 1046
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1046
    Height = 26
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    TabOrder = 0
    ExplicitWidth = 959
    object RzToolButton1: TRzToolButton
      Left = 737
      Top = 0
      Width = 61
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      OnClick = RzToolButton1Click
      ExplicitLeft = 836
    end
    object RzLabel1: TRzLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 59
      Height = 19
      Margins.Right = 0
      Align = alLeft
      Caption = #1040#1073#1086#1085#1077#1084#1077#1085#1090':'
      Layout = tlCenter
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 13
    end
    object RzLabel2: TRzLabel
      AlignWithMargins = True
      Left = 340
      Top = 3
      Width = 80
      Height = 19
      Margins.Right = 0
      Align = alLeft
      Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
      Layout = tlCenter
      Visible = False
      ExplicitLeft = 262
      ExplicitHeight = 13
    end
    object RzEdit1: TRzEdit
      AlignWithMargins = True
      Left = 485
      Top = 2
      Width = 249
      Height = 21
      Margins.Top = 2
      Margins.Bottom = 2
      Text = ''
      Align = alLeft
      TabOrder = 0
      TextHint = #1055#1086#1080#1089#1082'...'
      OnChange = RzComboBox1Change
      ExplicitLeft = 584
    end
    object RzComboBox1: TRzComboBox
      AlignWithMargins = True
      Left = 143
      Top = 2
      Width = 191
      Height = 21
      Margins.Top = 2
      Margins.Bottom = 2
      Align = alLeft
      Style = csDropDownList
      TabOrder = 1
      OnChange = RzComboBox1Change
      OnSelect = RzComboBox1Select
      ExplicitLeft = 65
    end
    object RzComboBox2: TRzComboBox
      AlignWithMargins = True
      Left = 423
      Top = 2
      Width = 56
      Height = 21
      Margins.Top = 2
      Margins.Bottom = 2
      Align = alLeft
      Style = csDropDownList
      TabOrder = 2
      Visible = False
      OnChange = RzComboBox1Change
      ExplicitLeft = 345
      ExplicitTop = 0
    end
    object RzComboBox3: TRzComboBox
      AlignWithMargins = True
      Left = 65
      Top = 2
      Width = 72
      Height = 21
      Margins.Top = 2
      Margins.Bottom = 2
      Align = alLeft
      Style = csDropDownList
      TabOrder = 3
      OnChange = RzComboBox1Change
      OnSelect = RzComboBox3Select
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 26
    Width = 1046
    Height = 523
    Align = alClient
    AutoFitColWidths = True
    DataSource = UniDataSource1
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    TabOrder = 1
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'card_number'
        Footers = <>
        MaxWidth = 75
        Title.Caption = #8470' '#1082#1072#1088#1090#1086#1095#1082#1080
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'card_inventory_number'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'type_name'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'card_name'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'card_sign'
        Footers = <>
        Title.Caption = #1054#1073#1086#1079#1085#1072#1095#1077#1085#1080#1077
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'doc_count'
        Footers = <>
        MaxWidth = 50
        Title.Caption = #1050#1086#1083'-'#1074#1086
      end
      item
        Alignment = taRightJustify
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'abon_number'
        Footers = <>
        MaxWidth = 80
        Title.Caption = '# '#1072#1073#1086#1085#1077#1084#1077#1085#1090#1072
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'abon_name'
        Footers = <>
        Title.Caption = #1040#1073#1086#1085#1077#1084#1077#1085#1090
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'doc_employee'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'doc_date'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object UniQuery1: TUniQuery
    Connection = fmMain.DBConnection
    SQL.Strings = (
      'SELECT * FROM t_issued_documents '
      'LEFT JOIN t_card ON card_id = doc_card_id'
      'LEFT JOIN t_type ON type_id = card_type_id'
      'LEFT JOIN t_abonement ON abon_id = doc_abonement_id')
    Left = 480
    Top = 288
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    Left = 480
    Top = 344
  end
end
