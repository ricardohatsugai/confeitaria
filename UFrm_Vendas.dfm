object Frm_Vendas: TFrm_Vendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = '  Vendas'
  ClientHeight = 620
  ClientWidth = 1073
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
    Top = 0
    Width = 1073
    Height = 41
    Align = alTop
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 472
      Height = 39
      DataSource = DM_Principal.DS_Vendas
      Align = alLeft
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1073
    Height = 232
    Align = alTop
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1071
      Height = 230
      Align = alClient
      DataSource = DM_Principal.DS_Vendas
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
    Top = 273
    Width = 1073
    Height = 40
    Align = alTop
    TabOrder = 2
    object DBNavigator2: TDBNavigator
      Left = 1
      Top = 1
      Width = 472
      Height = 38
      DataSource = DM_Principal.DS_ItensPedido
      Align = alLeft
      TabOrder = 0
      ExplicitHeight = 46
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 313
    Width = 1073
    Height = 307
    Align = alClient
    TabOrder = 3
    ExplicitLeft = 528
    ExplicitTop = 384
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 1071
      Height = 305
      Align = alClient
      DataSource = DM_Principal.DS_ItensPedido
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
end
