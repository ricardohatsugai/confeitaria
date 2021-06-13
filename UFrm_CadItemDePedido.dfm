object Frm_CadItensDePedido: TFrm_CadItensDePedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de item de pedido.'
  ClientHeight = 573
  ClientWidth = 1062
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
    Width = 1062
    Height = 169
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 97
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
    object Label2: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_Codigo
    end
    object Label3: TLabel
      Left = 84
      Top = 8
      Width = 38
      Height = 13
      Caption = 'Produto'
      FocusControl = DBEdit_Produto
    end
    object Label4: TLabel
      Left = 368
      Top = 8
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit_Descricao
    end
    object Label5: TLabel
      Left = 663
      Top = 5
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit_Quant
    end
    object Label6: TLabel
      Left = 743
      Top = 6
      Width = 27
      Height = 13
      Caption = 'Pre'#231'o'
      FocusControl = DBEdit_Preco
    end
    object Label7: TLabel
      Left = 831
      Top = 8
      Width = 32
      Height = 13
      Caption = 'TOTAL'
      FocusControl = DBEdit_Total
    end
    object Edt_Produto: TEdit
      Left = 84
      Top = 94
      Width = 293
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
      Left = 399
      Top = 89
      Width = 145
      Height = 42
      Caption = '&Pesqisar'
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
      TabOrder = 1
      OnClick = Btn_PesquisarClick
    end
    object DBEdit_Codigo: TDBEdit
      Left = 16
      Top = 24
      Width = 62
      Height = 21
      DataField = 'COD_PROD'
      DataSource = DM_Principal.DS_ItensPedido
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit_Produto: TDBEdit
      Left = 84
      Top = 24
      Width = 269
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PRODUTO'
      DataSource = DM_Principal.DS_ItensPedido
      ReadOnly = True
      TabOrder = 3
    end
    object DBEdit_Descricao: TDBEdit
      Left = 368
      Top = 24
      Width = 289
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = DM_Principal.DS_ItensPedido
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit_Quant: TDBEdit
      Left = 663
      Top = 24
      Width = 56
      Height = 21
      DataField = 'QUANT'
      DataSource = DM_Principal.DS_ItensPedido
      TabOrder = 5
      OnExit = DBEdit_PrecoExit
    end
    object DBEdit_Preco: TDBEdit
      Left = 741
      Top = 24
      Width = 84
      Height = 21
      DataField = 'PRECO'
      DataSource = DM_Principal.DS_ItensPedido
      TabOrder = 6
      OnExit = DBEdit_PrecoExit
    end
    object DBEdit_Total: TDBEdit
      Left = 831
      Top = 24
      Width = 106
      Height = 21
      DataField = 'TOTAL'
      DataSource = DM_Principal.DS_ItensPedido
      ReadOnly = True
      TabOrder = 7
    end
    object Btn_Salvar: TBitBtn
      Left = 792
      Top = 80
      Width = 145
      Height = 41
      Caption = '&Salvar'
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
      OnClick = Btn_SalvarClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 169
    Width = 1062
    Height = 404
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1060
      Height = 402
      Align = alClient
      DataSource = DM_Principal.DS_Produtos
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_PRODUTOS'
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
          FieldName = 'PRECO'
          Visible = True
        end>
    end
  end
end
