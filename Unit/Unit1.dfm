object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 311
  ClientWidth = 643
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 456
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 536
    Top = 88
    Width = 31
    Height = 13
    Caption = 'Label2'
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 0
    Width = 425
    Height = 216
    DataSource = DataSource1
    PanelWidth = 409
    TabOrder = 0
    OnClick = DBCtrlGrid1Click
    object DBText1: TDBText
      Left = 64
      Top = 32
      Width = 65
      Height = 17
      DataField = 'priceStudent'
      DataSource = DataSource1
    end
    object DBText2: TDBText
      Left = 168
      Top = 32
      Width = 65
      Height = 17
      DataField = 'nameStudent'
      DataSource = DataSource1
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT priceStudent, nameStudent  FROM student;')
    Left = 400
    Top = 264
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 200
    Top = 264
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=2307;Persist Security Info=True;User' +
      ' ID=root;Extended Properties="Driver=MySQL ODBC 5.3 Unicode Driv' +
      'er;SERVER=127.0.0.1;UID=root;PWD=2307;DATABASE=employees;PORT=33' +
      '06;COLUMN_SIZE_S32=1"'
    Left = 40
    Top = 264
  end
end
