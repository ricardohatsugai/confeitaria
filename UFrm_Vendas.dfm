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
    object Btn_NovaVenda: TBitBtn
      Left = 640
      Top = -1
      Width = 153
      Height = 42
      Caption = 'Nova Venda'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
        0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
        07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
        0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
        33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
        B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
        3BB33773333773333773B333333B3333333B7333333733333337}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = Btn_NovaVendaClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 41
    Width = 1073
    Height = 48
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 456
      Top = 6
      Width = 134
      Height = 40
      Caption = 'PEDIDOS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -33
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 89
    Width = 1073
    Height = 216
    Align = alTop
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1071
      Height = 214
      Align = alClient
      DataSource = DM_Principal.DS_Vendas
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_VENDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORA_ENTREGA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_ENTREGA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGAMENTO'
          Visible = True
        end>
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 305
    Width = 1073
    Height = 41
    Align = alTop
    Caption = 'ITENS DE PEDIDOS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object Panel5: TPanel
    Left = 0
    Top = 346
    Width = 1073
    Height = 274
    Align = alClient
    TabOrder = 4
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 1071
      Height = 272
      Align = alClient
      DataSource = DM_Principal.DS_ItensPedido
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_VENDA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_PROD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTAL'
          Visible = True
        end>
    end
  end
end
