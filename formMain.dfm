object frmMain: TfrmMain
  Left = 411
  Top = 181
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Message Sender'
  ClientHeight = 227
  ClientWidth = 365
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  PixelsPerInch = 96
  TextHeight = 15
  object btnSend: TButton
    Left = 198
    Top = 150
    Width = 150
    Height = 25
    Caption = '&Send message'
    TabOrder = 2
    OnClick = btnSendClick
  end
  object btnPost: TButton
    Left = 198
    Top = 184
    Width = 150
    Height = 25
    Caption = '&Post message'
    TabOrder = 3
    OnClick = btnPostClick
  end
  object grpInput: TGroupBox
    Left = 8
    Top = 4
    Width = 170
    Height = 214
    Caption = 'Parameters'
    TabOrder = 0
    object lbHandle: TLabel
      Tag = 1
      Left = 12
      Top = 16
      Width = 40
      Height = 15
      Caption = '&Handle'
    end
    object lbMessage: TLabel
      Tag = 2
      Left = 12
      Top = 64
      Width = 51
      Height = 15
      Caption = '&Message'
    end
    object lbWParam: TLabel
      Tag = 3
      Left = 12
      Top = 114
      Width = 48
      Height = 15
      Caption = '&WParam'
    end
    object lbLParam: TLabel
      Tag = 4
      Left = 12
      Top = 162
      Width = 44
      Height = 15
      Caption = '&LParam'
    end
    object edHandle: TabfIntegerEdit
      Tag = 1
      Left = 12
      Top = 34
      Width = 100
      Height = 23
      Hint = 'Broadcast if zero'
      TabOrder = 0
      Text = '0'
      Min = -2147483648
    end
    object chbHandle: TCheckBox
      Tag = 1
      Left = 120
      Top = 38
      Width = 45
      Height = 17
      Caption = 'Hex'
      TabOrder = 1
      OnClick = chbClick
    end
    object edMessage: TabfIntegerEdit
      Tag = 2
      Left = 12
      Top = 82
      Width = 100
      Height = 23
      TabOrder = 2
      Text = '0'
      Min = -2147483648
    end
    object chbMessage: TCheckBox
      Tag = 2
      Left = 120
      Top = 86
      Width = 45
      Height = 17
      Caption = 'Hex'
      TabOrder = 3
      OnClick = chbClick
    end
    object edWParam: TabfIntegerEdit
      Tag = 3
      Left = 12
      Top = 132
      Width = 100
      Height = 23
      TabOrder = 4
      Text = '0'
      Min = -2147483648
    end
    object chbWParam: TCheckBox
      Tag = 3
      Left = 120
      Top = 136
      Width = 45
      Height = 17
      Caption = 'Hex'
      TabOrder = 5
      OnClick = chbClick
    end
    object edLParam: TabfIntegerEdit
      Tag = 4
      Left = 12
      Top = 180
      Width = 100
      Height = 23
      TabOrder = 6
      Text = '0'
      Min = -2147483648
    end
    object chbLParam: TCheckBox
      Tag = 4
      Left = 120
      Top = 184
      Width = 45
      Height = 17
      Caption = 'Hex'
      TabOrder = 7
      OnClick = chbClick
    end
  end
  object grpResult: TGroupBox
    Left = 188
    Top = 4
    Width = 170
    Height = 73
    Caption = 'Result'
    TabOrder = 1
    object lbResult: TLabel
      Tag = 5
      Left = 12
      Top = 16
      Width = 36
      Height = 15
      Caption = '&Result'
    end
    object edResult: TabfIntegerEdit
      Tag = 5
      Left = 12
      Top = 34
      Width = 100
      Height = 23
      ReadOnly = True
      TabOrder = 0
      Text = '0'
      Min = -2147483648
    end
    object chbResult: TCheckBox
      Tag = 5
      Left = 120
      Top = 38
      Width = 45
      Height = 17
      Caption = 'Hex'
      TabOrder = 1
      OnClick = chbClick
    end
  end
end
