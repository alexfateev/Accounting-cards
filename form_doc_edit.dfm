object fmDocEdit: TfmDocEdit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1086#1082#1091#1084#1077#1085#1090
  ClientHeight = 153
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object RzLabel1: TRzLabel
    Left = 8
    Top = 11
    Width = 59
    Height = 13
    Caption = #1040#1073#1086#1085#1077#1084#1077#1085#1090':'
  end
  object RzLabel2: TRzLabel
    Left = 8
    Top = 38
    Width = 71
    Height = 13
    Caption = #1050#1086#1084#1091' '#1074#1099#1076#1072#1085#1086':'
  end
  object RzLabel3: TRzLabel
    Left = 8
    Top = 65
    Width = 39
    Height = 13
    Caption = #1050#1086#1083'-'#1074#1086':'
  end
  object RzLabel4: TRzLabel
    Left = 8
    Top = 92
    Width = 72
    Height = 13
    Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080':'
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 121
    Width = 409
    Height = 32
    Align = alBottom
    BorderOuter = fsFlat
    BorderSides = [sdTop]
    TabOrder = 5
    object RzButton1: TRzButton
      AlignWithMargins = True
      Left = 250
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
      Left = 331
      Top = 4
      ModalResult = 2
      Align = alRight
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      OnClick = RzButton2Click
    end
  end
  object RzDBEdit1: TRzDBEdit
    Left = 88
    Top = 35
    Width = 185
    Height = 21
    DataSource = UniDataSource1
    DataField = 'doc_employee'
    TabOrder = 2
  end
  object RzDBDateTimePicker1: TRzDBDateTimePicker
    Left = 88
    Top = 89
    Width = 97
    Height = 21
    Date = 43914.601245474540000000
    Format = ''
    Time = 43914.601245474540000000
    TabOrder = 4
    DataField = 'doc_date'
    DataSource = UniDataSource1
  end
  object RzDBSpinEdit1: TRzDBSpinEdit
    Left = 88
    Top = 62
    Width = 47
    Height = 21
    DataSource = UniDataSource1
    DataField = 'doc_count'
    TabOrder = 3
    Max = 100.000000000000000000
    Value = 1.000000000000000000
  end
  object RzDBComboBox2: TRzDBComboBox
    Left = 191
    Top = 8
    Width = 210
    Height = 21
    DataField = 'doc_abonement_id'
    DataSource = UniDataSource1
    TabOrder = 1
    OnChange = RzDBComboBox2Change
  end
  object RzDBComboBox1: TRzDBComboBox
    Left = 88
    Top = 8
    Width = 97
    Height = 21
    DataField = 'doc_abonement_id'
    DataSource = UniDataSource1
    TabOrder = 0
    OnChange = RzDBComboBox1Change
  end
  object UniDataSource1: TUniDataSource
    DataSet = fmCardEdit.UniQuery2
    Left = 344
    Top = 64
  end
end
