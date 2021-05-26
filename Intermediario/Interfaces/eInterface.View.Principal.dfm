object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 299
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 160
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 32
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 184
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object Memo1: TMemo
    Left = 424
    Top = 96
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 232
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 4
    OnChange = ComboBox1Change
    Items.Strings = (
      'Fisica'
      'Juridica')
  end
end
