object Frm_Principal: TFrm_Principal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = '  Sistema de Controle de Vendas V.1'
  ClientHeight = 585
  ClientWidth = 995
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 566
    Width = 995
    Height = 19
    Panels = <
      item
        Width = 550
      end
      item
        Width = 200
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 995
    Height = 49
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 232
      Top = 5
      Width = 499
      Height = 29
      Caption = 'Clientes que n'#227'o compram em mais de 20 dias'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 49
    Width = 995
    Height = 224
    Align = alTop
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 993
      Height = 222
      Align = alClient
      DataSource = DS_ClientesSemCompras
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
          FieldName = 'ID_CLIENTE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TELEFONE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 273
    Width = 995
    Height = 41
    Align = alTop
    TabOrder = 3
    object Label2: TLabel
      Left = 304
      Top = 5
      Width = 380
      Height = 29
      Caption = 'Clientes que fazem anivers'#225'rio hoje'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 314
    Width = 995
    Height = 252
    Align = alClient
    TabOrder = 4
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 993
      Height = 250
      Align = alClient
      DataSource = DS_ClientesQueFazemAniversario
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object MainMenu1: TMainMenu
    Left = 816
    Top = 24
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        ShortCut = 16451
        OnClick = Clientes1Click
      end
      object Pagamentos1: TMenuItem
        Caption = 'Pagamentos'
        ShortCut = 16464
        OnClick = Pagamentos1Click
      end
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        ShortCut = 16463
        OnClick = Produtos1Click
      end
      object Cidades1: TMenuItem
        Caption = 'Cidades'
        OnClick = Cidades1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = '&Sair'
        ShortCut = 114
        OnClick = Sair1Click
      end
    end
    object Vendas1: TMenuItem
      Caption = 'Vendas'
      object Nova1: TMenuItem
        Caption = 'Listagem de vendas'
        ShortCut = 116
        OnClick = Nova1Click
      end
    end
  end
  object FDQ_ClientesSemCompras: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    clientes.id_cliente,'
      '    clientes.nome,'
      '    clientes.telefone,'
      '    vendas.data'
      'from vendas'
      
        '   inner join clientes on (vendas.cod_cliente = clientes.id_clie' +
        'nte)'
      'where '
      '   ('
      '      (vendas.data <:date)'
      '   )'
      'order by vendas.data')
    Left = 656
    Top = 97
    ParamData = <
      item
        Name = 'DATE'
        DataType = ftDate
        ParamType = ptInput
        Value = 0d
      end>
    object FDQ_ClientesSemComprasID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      Required = True
    end
    object FDQ_ClientesSemComprasNOME: TStringField
      DisplayLabel = 'Nome do cliente'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 35
    end
    object FDQ_ClientesSemComprasTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 25
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '(99) 99999-9999;0;_'
      Size = 11
    end
    object FDQ_ClientesSemComprasDATA: TDateField
      DisplayLabel = 'Data da '#250'ltima compra'
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
  end
  object DS_ClientesSemCompras: TDataSource
    DataSet = FDQ_ClientesSemCompras
    Left = 664
    Top = 153
  end
  object FDQ_ClientesQueFazemAniversario: TFDQuery
    Connection = DM_Principal.FDConnection1
    SQL.Strings = (
      'select '
      '    clientes.id_cliente,'
      '    clientes.nome,'
      '    clientes.telefone,'
      '    clientes.data_aniversario,'
      '    clientes.email'
      'from clientes'
      'where extract(month from clientes.data_aniversario) =:mes')
    Left = 728
    Top = 322
    ParamData = <
      item
        Name = 'MES'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQ_ClientesQueFazemAniversarioID_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQ_ClientesQueFazemAniversarioNOME: TStringField
      DisplayLabel = 'Nome do cliente'
      DisplayWidth = 45
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 35
    end
    object FDQ_ClientesQueFazemAniversarioTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 25
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '(99) 99999-9999;0;_'
      Size = 11
    end
    object FDQ_ClientesQueFazemAniversarioDATA_ANIVERSARIO: TDateField
      DisplayLabel = 'Data de anivers'#225'rio'
      DisplayWidth = 25
      FieldName = 'DATA_ANIVERSARIO'
      Origin = 'DATA_ANIVERSARIO'
    end
    object FDQ_ClientesQueFazemAniversarioEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 45
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 60
    end
  end
  object DS_ClientesQueFazemAniversario: TDataSource
    DataSet = FDQ_ClientesQueFazemAniversario
    Left = 728
    Top = 386
  end
end
