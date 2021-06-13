object Frm_CadPedido: TFrm_CadPedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Cadastro de nova venda'
  ClientHeight = 659
  ClientWidth = 1069
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit_Id
  end
  object Label2: TLabel
    Left = 104
    Top = 16
    Width = 23
    Height = 13
    Caption = 'Data'
    FocusControl = DBEdit_Data
  end
  object Label3: TLabel
    Left = 208
    Top = 16
    Width = 64
    Height = 13
    Caption = 'Hora entrega'
    FocusControl = DBEdit1_HoraEntrega
  end
  object Label4: TLabel
    Left = 296
    Top = 16
    Width = 64
    Height = 13
    Caption = 'Data entrega'
    FocusControl = DBEdit_DataEntrega
  end
  object Label5: TLabel
    Left = 383
    Top = 16
    Width = 33
    Height = 13
    Caption = 'Cliente'
  end
  object Label6: TLabel
    Left = 640
    Top = 16
    Width = 54
    Height = 13
    Caption = 'Pagamento'
  end
  object Label7: TLabel
    Left = 24
    Top = 64
    Width = 20
    Height = 13
    Caption = 'OBS'
    FocusControl = DBEdit_Obs
  end
  object DBEdit_Id: TDBEdit
    Left = 24
    Top = 32
    Width = 65
    Height = 21
    DataField = 'ID_VENDA'
    DataSource = DM_Principal.DS_Vendas
    ReadOnly = True
    TabOrder = 0
  end
  object DBEdit_Data: TDBEdit
    Left = 104
    Top = 32
    Width = 89
    Height = 21
    DataField = 'DATA'
    DataSource = DM_Principal.DS_Vendas
    ReadOnly = True
    TabOrder = 1
  end
  object DBEdit1_HoraEntrega: TDBEdit
    Left = 208
    Top = 32
    Width = 73
    Height = 21
    DataField = 'HORA_ENTREGA'
    DataSource = DM_Principal.DS_Vendas
    TabOrder = 2
  end
  object DBEdit_DataEntrega: TDBEdit
    Left = 296
    Top = 32
    Width = 81
    Height = 21
    DataField = 'DATA_ENTREGA'
    DataSource = DM_Principal.DS_Vendas
    TabOrder = 3
  end
  object DBLookupCMB_Clientes: TDBLookupComboBox
    Left = 383
    Top = 32
    Width = 242
    Height = 21
    DataField = 'COD_CLIENTE'
    DataSource = DM_Principal.DS_Vendas
    KeyField = 'ID_CLIENTE'
    ListField = 'NOME'
    ListSource = DM_Principal.DS_Clientes
    TabOrder = 4
  end
  object DBLookupCMB_Pagamento: TDBLookupComboBox
    Left = 640
    Top = 32
    Width = 209
    Height = 21
    DataField = 'COD_PAG'
    DataSource = DM_Principal.DS_Vendas
    KeyField = 'ID_PAG'
    ListField = 'PAGAMENTO'
    ListSource = DM_Principal.DS_Pagamento
    TabOrder = 5
  end
  object DBEdit_Obs: TDBEdit
    Left = 24
    Top = 80
    Width = 825
    Height = 21
    CharCase = ecUpperCase
    DataField = 'OBS'
    DataSource = DM_Principal.DS_Vendas
    TabOrder = 6
  end
  object Btn_Incluir: TBitBtn
    Left = 24
    Top = 107
    Width = 135
    Height = 35
    Caption = 'Incluir'
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
    TabOrder = 7
    OnClick = Btn_IncluirClick
  end
  object Btn_Alterar: TBitBtn
    Left = 188
    Top = 107
    Width = 135
    Height = 35
    Caption = 'Editar'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
      00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
      F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
      0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
      FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
      FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
      0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
      00333377737FFFFF773333303300000003333337337777777333}
    NumGlyphs = 2
    TabOrder = 8
  end
  object Btn_Excluir: TBitBtn
    Left = 352
    Top = 107
    Width = 135
    Height = 35
    Caption = 'Excluir'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      333333333333333333FF33333333333330003333333333333777333333333333
      300033FFFFFF3333377739999993333333333777777F3333333F399999933333
      3300377777733333337733333333333333003333333333333377333333333333
      3333333333333333333F333333333333330033333F33333333773333C3333333
      330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
      993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
      333333377F33333333FF3333C333333330003333733333333777333333333333
      3000333333333333377733333333333333333333333333333333}
    NumGlyphs = 2
    TabOrder = 9
  end
  object Panel1: TPanel
    Left = 0
    Top = 600
    Width = 1069
    Height = 59
    Align = alBottom
    TabOrder = 10
    object Label8: TLabel
      Left = 936
      Top = 8
      Width = 32
      Height = 13
      Caption = 'TOTAL'
      FocusControl = DBEdit_Total
    end
    object DBEdit_Total: TDBEdit
      Left = 936
      Top = 24
      Width = 113
      Height = 21
      DataField = 'TOTAL'
      DataSource = DM_Principal.DS_Vendas
      ReadOnly = True
      TabOrder = 0
    end
    object Btn_Gravar: TBitBtn
      Left = 19
      Top = 10
      Width = 135
      Height = 35
      Caption = '&Salvar Pedido'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
        7700333333337777777733333333008088003333333377F73377333333330088
        88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
        000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
        FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
        99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
        99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
        99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
        93337FFFF7737777733300000033333333337777773333333333}
      NumGlyphs = 2
      TabOrder = 1
      OnClick = Btn_GravarClick
    end
    object Btn_CancelarPedido: TBitBtn
      Left = 183
      Top = 10
      Width = 135
      Height = 35
      Caption = '&Cancelar Pedido'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
        993337777F777F3377F3393999707333993337F77737333337FF993399933333
        399377F3777FF333377F993339903333399377F33737FF33377F993333707333
        399377F333377FF3377F993333101933399377F333777FFF377F993333000993
        399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
        99333773FF777F777733339993707339933333773FF7FFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      TabOrder = 2
      OnClick = Btn_CancelarPedidoClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 160
    Width = 1069
    Height = 440
    Align = alBottom
    TabOrder = 11
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1067
      Height = 438
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
