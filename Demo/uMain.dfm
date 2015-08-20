object Main: TMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 250
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 200
    Width = 447
    Height = 50
    Align = alBottom
    Caption = 'Panel1'
    ShowCaption = False
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 1
      Top = 1
      Width = 445
      Height = 48
      Align = alClient
      Caption = 'Disasm'
      OnClick = SpeedButton1Click
      ExplicitLeft = 56
      ExplicitTop = 8
      ExplicitWidth = 345
      ExplicitHeight = 33
    end
  end
  object LogMem: TMemo
    Left = 0
    Top = 0
    Width = 447
    Height = 200
    Align = alClient
    Lines.Strings = (
      'LogMem')
    ScrollBars = ssVertical
    TabOrder = 1
  end
end
