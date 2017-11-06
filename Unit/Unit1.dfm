object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PHeader: TPanel
    Left = 0
    Top = 0
    Width = 635
    Height = 82
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 104
    ExplicitTop = 64
    ExplicitWidth = 185
    object LCaption: TLabel
      Left = 8
      Top = 8
      Width = 42
      Height = 13
      Caption = 'LCaption'
    end
  end
  object PSideBar: TPanel
    Left = 450
    Top = 82
    Width = 185
    Height = 217
    Align = alRight
    TabOrder = 1
    ExplicitLeft = 440
    ExplicitTop = 184
    ExplicitHeight = 41
    object LPriceComputer: TLabel
      Left = 6
      Top = 6
      Width = 120
      Height = 13
      Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072
    end
    object LMoney: TLabel
      Left = 96
      Top = 25
      Width = 22
      Height = 13
      Caption = #1088#1091#1073'.'
    end
    object LPrice: TLabel
      Left = 62
      Top = 25
      Width = 28
      Height = 13
      Alignment = taRightJustify
      Caption = 'LPrice'
    end
    object Button1: TButton
      Left = 96
      Top = 54
      Width = 75
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 15
      Top = 54
      Width = 75
      Height = 25
      Caption = #1057#1086#1073#1088#1072#1090#1100
      TabOrder = 1
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 82
    Width = 450
    Height = 217
    Align = alClient
    TabOrder = 2
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 6
        Top = 4
        Width = 31
        Height = 13
        Caption = 'Label1'
      end
      object Label2: TLabel
        Left = 392
        Top = 22
        Width = 31
        Height = 13
        Caption = 'Label2'
      end
    end
    object Panel2: TPanel
      Left = 0
      Top = 41
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 1
    end
    object Panel3: TPanel
      Left = 0
      Top = 82
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 2
    end
    object Panel4: TPanel
      Left = 0
      Top = 123
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 3
    end
    object Panel5: TPanel
      Left = 0
      Top = 164
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 4
    end
    object Panel6: TPanel
      Left = 0
      Top = 205
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 5
    end
    object Panel7: TPanel
      Left = 0
      Top = 246
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 6
    end
    object Panel8: TPanel
      Left = 0
      Top = 287
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 7
    end
    object Panel9: TPanel
      Left = 0
      Top = 328
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 8
    end
    object Panel10: TPanel
      Left = 0
      Top = 369
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 9
    end
    object Panel11: TPanel
      Left = 0
      Top = 410
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 10
    end
    object Panel12: TPanel
      Left = 0
      Top = 451
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 11
    end
    object Panel13: TPanel
      Left = 0
      Top = 492
      Width = 429
      Height = 41
      Align = alTop
      TabOrder = 12
    end
  end
end
