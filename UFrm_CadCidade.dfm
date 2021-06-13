inherited Frm_CadCidade: TFrm_CadCidade
  BorderIcons = [biSystemMenu]
  Caption = '  Cadastro de Cidades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 80
    ExplicitTop = 41
    ExplicitHeight = 80
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_Id
    end
    object Label2: TLabel
      Left = 88
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = DBEdit1_Cidade
    end
    object Label3: TLabel
      Left = 568
      Top = 8
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object DBEdit_Id: TDBEdit
      Left = 16
      Top = 24
      Width = 57
      Height = 21
      DataField = 'ID_CIDADE'
      DataSource = DM_Principal.DS_Cidades
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit1_Cidade: TDBEdit
      Left = 88
      Top = 24
      Width = 459
      Height = 21
      CharCase = ecUpperCase
      DataField = 'CIDADE'
      DataSource = DM_Principal.DS_Cidades
      TabOrder = 1
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 568
      Top = 24
      Width = 81
      Height = 21
      DataField = 'COD_ESTADO'
      DataSource = DM_Principal.DS_Cidades
      KeyField = 'ID_ESTADO'
      ListField = 'ESTADO'
      ListSource = DM_Principal.DS_Estados
      TabOrder = 2
    end
  end
  inherited Panel2: TPanel
    Top = 121
    Height = 485
    ExplicitTop = 121
    ExplicitHeight = 485
    inherited DBGrid1: TDBGrid
      Height = 483
      DataSource = DM_Principal.DS_Cidades
      ReadOnly = True
    end
  end
  inherited Panel3: TPanel
    ExplicitLeft = 0
    inherited DBNavigator1: TDBNavigator
      DataSource = DM_Principal.DS_Cidades
      Hints.Strings = ()
    end
  end
end
