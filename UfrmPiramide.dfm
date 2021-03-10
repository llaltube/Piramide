object frmPiramide: TfrmPiramide
  Left = 348
  Top = 129
  BorderStyle = bsSingle
  Caption = 'Piramide'
  ClientHeight = 530
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 112
    Width = 87
    Height = 25
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object EdtNumero: TEdit
    Left = 184
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '0'
  end
  object BtnGerar: TButton
    Left = 144
    Top = 72
    Width = 217
    Height = 33
    Caption = 'Gerar'
    TabOrder = 1
    OnClick = BtnGerarClick
  end
  object UpDown1: TUpDown
    Left = 305
    Top = 32
    Width = 16
    Height = 21
    Associate = EdtNumero
    Min = -100
    TabOrder = 2
  end
  object Memo: TMemo
    Left = 0
    Top = 136
    Width = 521
    Height = 394
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -3
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 3
  end
end
