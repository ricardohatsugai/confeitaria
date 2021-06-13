object Frm_Cadastro_Modelo: TFrm_Cadastro_Modelo
  Left = 0
  Top = 0
  Caption = 'Frm_Cadastro_Modelo'
  ClientHeight = 606
  ClientWidth = 981
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 981
    Height = 257
    Align = alTop
    TabOrder = 0
    ExplicitTop = 56
  end
  object Panel2: TPanel
    Left = 0
    Top = 298
    Width = 981
    Height = 308
    Align = alClient
    TabOrder = 1
    ExplicitTop = 313
    ExplicitHeight = 293
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 979
      Height = 306
      Align = alClient
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 981
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitLeft = 1
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 480
      Height = 39
      Align = alLeft
      TabOrder = 0
    end
    object Btn_Sair: TBitBtn
      Left = 832
      Top = 1
      Width = 148
      Height = 39
      Align = alRight
      Caption = '&Sair'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      ModalResult = 8
      NumGlyphs = 2
      TabOrder = 1
    end
  end
end
