object Frm_CadPedido_CadItens: TFrm_CadPedido_CadItens
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Inclus'#227'o de item de pedido'
  ClientHeight = 459
  ClientWidth = 885
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 144
    Width = 885
    Height = 315
    Align = alBottom
    DataSource = DS_Produtos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 885
    Height = 144
    Align = alClient
    TabOrder = 1
    ExplicitHeight = 104
    object Bevel1: TBevel
      Left = 1
      Top = 1
      Width = 883
      Height = 142
      Align = alClient
      ExplicitLeft = 2
      ExplicitTop = -4
      ExplicitHeight = 198
    end
    object Lbl_Pesquisa: TLabel
      Left = 20
      Top = 84
      Width = 62
      Height = 19
      Caption = 'Produto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 20
      Top = 16
      Width = 48
      Height = 13
      Caption = 'C'#243'd. Prod'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 96
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Produto'
      FocusControl = DBEdit_Produto
    end
    object Label3: TLabel
      Left = 279
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit_Descricao
    end
    object Label4: TLabel
      Left = 583
      Top = 16
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit_Qaunt
    end
    object Label5: TLabel
      Left = 655
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Preco'
      FocusControl = DBEdit_Preco
    end
    object Label6: TLabel
      Left = 742
      Top = 16
      Width = 24
      Height = 13
      Caption = 'Total'
      FocusControl = DBEdit_Total
    end
    object Edt_Pesqisa: TEdit
      Left = 88
      Top = 81
      Width = 265
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Btn_Pesquisar: TBitBtn
      Left = 359
      Top = 76
      Width = 114
      Height = 38
      Caption = '&Pesquisar'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
        300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
        330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
        333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
        339977FF777777773377000BFB03333333337773FF733333333F333000333333
        3300333777333333337733333333333333003333333333333377333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
      OnClick = Btn_PesquisarClick
    end
    object DBEdit1: TDBEdit
      Left = 20
      Top = 32
      Width = 62
      Height = 21
      DataField = 'ID_PROD'
      DataSource = DM_Principal.DS_ItensVendas
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit_Produto: TDBEdit
      Left = 96
      Top = 32
      Width = 169
      Height = 21
      DataField = 'PRODUTO'
      DataSource = DM_Principal.DS_ItensVendas
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit_Descricao: TDBEdit
      Left = 278
      Top = 32
      Width = 299
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = DM_Principal.DS_ItensVendas
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit_Qaunt: TDBEdit
      Left = 583
      Top = 32
      Width = 66
      Height = 21
      DataField = 'QUANT'
      DataSource = DM_Principal.DS_ItensVendas
      TabOrder = 5
      OnExit = DBEdit_QauntExit
    end
    object DBEdit_Preco: TDBEdit
      Left = 655
      Top = 32
      Width = 81
      Height = 21
      DataField = 'PRECO'
      DataSource = DM_Principal.DS_ItensVendas
      TabOrder = 6
    end
    object DBEdit_Total: TDBEdit
      Left = 742
      Top = 32
      Width = 99
      Height = 21
      DataField = 'TOTAL'
      DataSource = DM_Principal.DS_ItensVendas
      ReadOnly = True
      TabOrder = 7
    end
    object Btn_Incluir: TBitBtn
      Left = 583
      Top = 79
      Width = 129
      Height = 36
      Caption = 'Incluir'
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
      TabOrder = 8
      OnClick = Btn_IncluirClick
    end
    object Btn_Cancelar: TBitBtn
      Left = 727
      Top = 78
      Width = 129
      Height = 38
      Caption = 'Cancelar'
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
      TabOrder = 9
      OnClick = Btn_CancelarClick
    end
  end
  object FDQ_Produtos: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    produtos.id_produto,'
      '    produtos.produto,'
      '    produtos.descricao,'
      '    produtos.preco'
      'from produtos'
      'where '
      '   ('
      '      (produtos.produto like :ref)'
      '   )')
    Left = 352
    Top = 160
    ParamData = <
      item
        Name = 'REF'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_ProdutosID_PRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ProdutosPRODUTO: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 35
    end
    object FDQ_ProdutosDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 35
    end
    object FDQ_ProdutosPRECO: TBCDField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
  end
  object DS_Produtos: TDataSource
    DataSet = FDQ_Produtos
    Left = 352
    Top = 216
  end
end
