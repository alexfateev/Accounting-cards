object fmMain: TfmMain
  Left = 0
  Top = 0
  Caption = #1059#1095#1077#1090' '#1082#1072#1088#1090#1086#1095#1077#1082
  ClientHeight = 651
  ClientWidth = 1012
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
    Width = 1012
    Height = 26
    Align = alTop
    BorderOuter = fsFlat
    BorderSides = [sdBottom]
    TabOrder = 0
    object RzToolButton1: TRzToolButton
      Left = 97
      Top = 0
      Width = 64
      ImageIndex = 0
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      OnClick = RzToolButton1Click
    end
    object RzSpacer1: TRzSpacer
      Left = 313
      Top = 0
      Grooved = True
      Align = alLeft
      ExplicitLeft = 291
      ExplicitTop = 1
    end
    object RzToolButton2: TRzToolButton
      Left = 161
      Top = 0
      Width = 91
      ImageIndex = 0
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1040#1085#1085#1091#1083#1080#1088#1086#1074#1072#1090#1100
      OnClick = RzToolButton2Click
      ExplicitLeft = 194
    end
    object RzToolButton3: TRzToolButton
      Left = 0
      Top = 0
      Width = 97
      ImageIndex = 0
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1053#1086#1074#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072
      OnClick = RzToolButton3Click
      ExplicitLeft = 8
      ExplicitTop = 1
    end
    object RzToolButton4: TRzToolButton
      Left = 252
      Top = 0
      Width = 61
      ImageIndex = 0
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alLeft
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = RzToolButton4Click
    end
    object RzToolButton5: TRzToolButton
      Left = 832
      Top = 0
      Width = 76
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alRight
      Caption = #1040#1073#1086#1085#1077#1084#1077#1085#1090#1099
      OnClick = RzButton1Click
      ExplicitLeft = 501
    end
    object RzToolButton6: TRzToolButton
      Left = 908
      Top = 0
      Width = 104
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alRight
      Caption = #1058#1080#1087#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074
      OnClick = RzButton2Click
      ExplicitLeft = 577
    end
    object RzToolButton7: TRzToolButton
      Left = 704
      Top = 0
      Width = 128
      ShowCaption = True
      UseToolbarShowCaption = False
      Align = alRight
      Caption = #1042#1099#1076#1072#1085#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
      OnClick = RzToolButton7Click
    end
    object RzEdit1: TRzEdit
      AlignWithMargins = True
      Left = 321
      Top = 2
      Width = 200
      Height = 21
      Margins.Left = 0
      Margins.Top = 2
      Margins.Bottom = 2
      Text = ''
      Align = alLeft
      TabOrder = 0
      TextHint = #1055#1086#1080#1089#1082'...'
      OnChange = RzEdit1Change
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 26
    Width = 1012
    Height = 625
    Align = alClient
    AutoFitColWidths = True
    ColumnDefValues.Title.TitleButton = True
    Ctl3D = True
    DataSource = UniDataSource1
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghRowHighlight, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentCtl3D = False
    ReadOnly = True
    SortLocal = True
    TabOrder = 1
    TitleParams.SortMarkerStyle = smstDefaultEh
    OnDblClick = RzToolButton1Click
    OnGetCellParams = DBGridEh1GetCellParams
    OnTitleBtnClick = DBGridEh1TitleBtnClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'card_number'
        Footers = <>
        MaxWidth = 80
        Title.Caption = #8470' '#1082#1072#1088#1090#1086#1095#1082#1080
        Title.SortIndex = 1
        Title.SortMarker = smDownEh
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'card_inventory_number'
        Footers = <>
        MaxWidth = 100
        Title.Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081' '#8470
        Width = 100
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
        FieldName = 'type_name'
        Footers = <>
        Title.Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Height = 24
    Width = 24
    Left = 672
    Top = 200
    Bitmap = {
      494C010101000800180018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0B0D506A4D
      5ACF6D4F5CD26D4F5CD26D4F5CD26D4F5CD26D4F5CD26D4F5CD26D4F5CD26D4F
      5CD26D4F5CD26D4F5CD26D4F5CD26D4F5CD26D4F5CD26D4F5CD26D4F5CD26D4F
      5CD26A4D5ACF0F0B0D4F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006E505ED3AFC7
      71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA
      71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA
      71FFAFC772FF6D505CD200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFB1CC78FFBED59CFFC2D9
      A8FFC2D9A8FFBDD499FFB1CC78FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFC7DDB7FFAFCA71FFB2CC7AFFCADFC0FFD2E5D7FFC4DBB0FFBED6
      9CFFBCD598FFC5DBB2FFD3E6D9FFCADFC0FFB2CD7CFFAFCA71FFAFCA71FFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFD2E6D8FFB6CF84FFD3E7DBFFBDD499FFAFCA71FFAFCA71FFAEC4
      72FFAEC472FFAFCA71FFAFCA71FFBBD497FFD4E7DBFFB5CF83FFAFCA71FFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFD2E6D8FFD3E7DCFFB5CF83FFAFCA71FFAFCA71FFABC76CFFA4A2
      76FFA4A276FFABC56DFFA9A87BFFAFCA71FFB5CF84FFD3E7DAFFB1CC79FFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFD0E4D2FFD8EAE7FFD2E5D5FFCDE2CBFFA2C162FF9DBC5CFF9DB7
      5FFF9DB75FFF9DAD65FFA19F73FFAEC970FFAFCA71FFBDD59AFFC9DFBEFFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFA2C063FF9DBC5CFF9DBC5CFF9DBC
      5CFF9DBC5CFF9DBC5CFF9DBC5CFFA19F73FFAAA97BFFAFCA71FFBFD7A0FFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFAFCA71FFAFCA71FFABC76DFF9DBC5CFF9DBC5CFF9DBC5CFF9DBC
      5CFF9DBC5CFF9DBC5CFF9DBC5CFF9EAE64FFABC66DFFAFCA71FFBCD598FFBBD4
      95FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFB5CF84FFB1CC78FFAEC573FFA4A774FF9DB85EFF9DBC5CFF9DBC5CFF9DBC
      5CFF9DBC5CFF9DBC5CFF9DBC5CFF9DB85FFFA4A673FFAEC672FFBDD59BFFC4DB
      B0FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFC5DBB1FFBDD59AFFAEC473FFA4A376FF9DB75FFF9DBC5CFF9DBC5CFF9DBC
      5CFF9DBC5CFF9DBC5CFF9DBC5CFF9DB75FFFA4A275FFAEC472FFB2CC7AFFB6D0
      85FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFB9D28FFFB8D18BFFAFCA71FFABC66EFF9EAF64FF9DBC5CFF9DBC5CFF9DBC
      5CFF9DBC5CFF9DBC5CFF9DBC5CFF9DBC5CFFABC76DFFAFCA71FFAFCA71FFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFC0D8A6FFAFCA71FFA9A77BFFA09F73FF9DBC5CFF9DBC5CFF9DBC
      5CFF9DBC5CFF9DBC5CFF9DBC5CFFA3C063FFAFCA71FFAFCA71FFAFCA71FFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFC9DFBEFFBDD59BFFAFCA71FFAEC96FFFA09F72FF9EAE64FF9DB7
      5FFF9DB75FFF9DBC5CFFA2BF61FFCDE2CCFFD2E5D5FFD8EAE9FFD0E5D3FFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFB2CD7AFFD4E7DEFFB7CF87FFAFCA71FFA8A57BFFA9C66CFFA4A2
      76FFA4A276FFABC76CFFAFCA71FFAFCA71FFB6D085FFD5E7DFFFD2E6D8FFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFAFCA71FFB6CF84FFD3E7DCFFBDD59BFFAFCA71FFAFCA71FFAEC4
      72FFAEC472FFAFCA71FFAFCA71FFBDD59AFFD3E7DBFFB5CF83FFD2E6D8FFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFAFCA71FFAFCA71FFB2CC7AFFC9DFBFFFD3E6D9FFC7DCB6FFBFD7
      A0FFBFD79FFFC5DCB1FFD2E6D8FFC9DFBFFFB2CC79FFAFCA71FFC6DCB4FFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000735362D7AFCA
      71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFB1CC79FFBDD59AFFC5DB
      B1FFC5DCB2FFBED59CFFB1CB78FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA
      71FFAFCA71FF735362D700000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006E505ED3AEC6
      72FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA
      71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA71FFAFCA
      71FFAEC672FF6D505CD200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000F0B0D507454
      64D97C596AE07C596AE07C596AE07C596AE07C596AE07C596AE07C596AE07C59
      6AE07C596AE07C596AE07C596AE07C596AE07C596AE07C596AE07C596AE07C59
      6AE0745464D90F0B0D4F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object UniQuery1: TUniQuery
    Connection = DBConnection
    SQL.Strings = (
      
        'SELECT * FROM t_card LEFT JOIN t_type ON card_type_id = type_id ' +
        'ORDER BY card_enable DESC')
    Left = 432
    Top = 232
  end
  object UniDataSource1: TUniDataSource
    DataSet = UniQuery1
    OnDataChange = UniDataSource1DataChange
    Left = 432
    Top = 280
  end
  object DBConnection: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'db_std_card'
    SpecificOptions.Strings = (
      'MySQL.UseUnicode=True')
    Username = 'std_user'
    Server = '192.168.128.60'
    Connected = True
    LoginPrompt = False
    BeforeConnect = DBConnectionBeforeConnect
    Left = 560
    Top = 104
    EncryptedPassword = '8CFF8BFF9BFFA0FF8AFF8CFF9AFF8DFFA0FF8FFF9EFF8CFF8CFF'
  end
  object MySQL: TMySQLUniProvider
    Left = 560
    Top = 152
  end
end
