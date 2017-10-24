object Main: TMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Main'
  ClientHeight = 309
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 82
    Align = alTop
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    ExplicitTop = 6
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 319
      Height = 19
      Caption = #1050#1054#1053#1060#1048#1043#1059#1056#1040#1058#1054#1056' '#1057#1048#1057#1058#1045#1052#1053#1054#1043#1054' '#1041#1051#1054#1050#1040
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 460
    Top = 82
    Width = 185
    Height = 227
    Align = alRight
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 1
    object Label2: TLabel
      Left = 12
      Top = 12
      Width = 150
      Height = 14
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 92
      Top = 36
      Width = 31
      Height = 14
      Caption = ' '#1088#1091#1073'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 12
      Top = 90
      Width = 150
      Height = 14
      Caption = #1043#1086#1090#1086#1074#1099#1077' '#1082#1086#1085#1092#1080#1088#1091#1075#1072#1094#1080#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 21
      Top = 37
      Width = 65
      Height = 17
      DataField = 'SUM(price)'
      DataSource = DataSource2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 15
      Top = 56
      Width = 75
      Height = 25
      Caption = #1057#1086#1073#1088#1072#1090#1100
      TabOrder = 0
    end
    object Button2: TButton
      Left = 96
      Top = 56
      Width = 75
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 16
      Top = 110
      Width = 155
      Height = 25
      Caption = #1054#1092#1080#1089#1085#1099#1081' "'#1069#1082#1086#1085#1086#1084'"'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 82
    Width = 460
    Height = 227
    Align = alClient
    DataSource = DataSource1
    PanelHeight = 75
    PanelWidth = 443
    TabOrder = 2
    OnClick = DBCtrlGrid1Click
    object DBText1: TDBText
      Left = 12
      Top = 12
      Width = 149
      Height = 13
      DataSource = DataSource1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText2: TDBText
      Left = 56
      Top = 40
      Width = 65
      Height = 17
      DataSource = DataSource1
      Visible = False
    end
    object DBText3: TDBText
      Left = 144
      Top = 48
      Width = 65
      Height = 17
      DataSource = DataSource1
    end
    object DBText4: TDBText
      Left = 248
      Top = 48
      Width = 65
      Height = 17
      DataSource = DataSource1
      Visible = False
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=2307;Persist Security Info=True;User' +
      ' ID=root;Extended Properties="Driver=MySQL ODBC 5.3 Unicode Driv' +
      'er;SERVER=127.0.0.1;UID=root;PWD=2307;DATABASE=store;PORT=3306;C' +
      'OLUMN_SIZE_S32=1"'
    Mode = cmShareDenyNone
    Left = 56
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 160
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select idcomponent, name from component;')
    Left = 304
    Top = 32
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT SUM(price)'
      'FROM ('
      
        'SELECT element.component, element.idelement, element.price, elem' +
        'ent.description FROM element, configuration  WHERE (element.idel' +
        'ement=configuration.col1 '
      
        'OR element.idelement=configuration.col2 OR element.idelement=con' +
        'figuration.col3 OR element.idelement=configuration.col4'
      
        'OR element.idelement=configuration.col5 OR element.idelement=con' +
        'figuration.col6 OR element.idelement=configuration.col7'
      
        'OR element.idelement=configuration.col8 OR element.idelement=con' +
        'figuration.col9 OR element.idelement=configuration.col10'
      
        'OR element.idelement=configuration.col11 OR element.idelement=co' +
        'nfiguration.col12 OR element.idelement=configuration.col13)'
      'AND configuration.idconfiguration=1234 ORDER BY idelement'
      ') AS ACTION ;')
    Left = 576
    Top = 232
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 480
    Top = 232
  end
end
