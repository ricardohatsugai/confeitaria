inherited Frm_Cadastro_Produtos: TFrm_Cadastro_Produtos
  BorderIcons = [biSystemMenu]
  Caption = '    Cadastro de Produtos'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 88
    ExplicitTop = 41
    ExplicitHeight = 88
    object Label1: TLabel
      Left = 24
      Top = 15
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_iD
    end
    object Label2: TLabel
      Left = 103
      Top = 16
      Width = 38
      Height = 13
      Caption = 'Produto'
      FocusControl = DBEdit_Produto
    end
    object Label3: TLabel
      Left = 319
      Top = 16
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit_Descricao
    end
    object Label4: TLabel
      Left = 607
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Pre'#231'o'
      FocusControl = DBEdit_Preco
    end
    object DBEdit_iD: TDBEdit
      Left = 24
      Top = 34
      Width = 73
      Height = 21
      DataField = 'ID_PRODUTOS'
      DataSource = DM_Principal.DS_Produtos
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_Produto: TDBEdit
      Left = 103
      Top = 32
      Width = 210
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PRODUTO'
      DataSource = DM_Principal.DS_Produtos
      TabOrder = 1
    end
    object DBEdit_Descricao: TDBEdit
      Left = 319
      Top = 32
      Width = 282
      Height = 21
      CharCase = ecUpperCase
      DataField = 'DESCRICAO'
      DataSource = DM_Principal.DS_Produtos
      TabOrder = 2
    end
    object DBEdit_Preco: TDBEdit
      Left = 607
      Top = 32
      Width = 98
      Height = 21
      DataField = 'PRECO'
      DataSource = DM_Principal.DS_Produtos
      TabOrder = 3
    end
  end
  inherited Panel2: TPanel
    Top = 129
    Height = 477
    ExplicitTop = 129
    ExplicitHeight = 477
    inherited DBGrid1: TDBGrid
      Height = 475
      DataSource = DM_Principal.DS_Produtos
    end
  end
  inherited Panel3: TPanel
    ExplicitLeft = 0
    inherited DBNavigator1: TDBNavigator
      DataSource = DM_Principal.DS_Produtos
      Hints.Strings = ()
    end
  end
end
