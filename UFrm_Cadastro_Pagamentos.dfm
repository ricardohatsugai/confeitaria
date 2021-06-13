inherited Frm_Cadastro_Pagamento: TFrm_Cadastro_Pagamento
  BorderIcons = [biSystemMenu]
  Caption = '    Cadastro de Pagamentos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 96
    ExplicitHeight = 96
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit_Id
    end
    object Label2: TLabel
      Left = 96
      Top = 8
      Width = 54
      Height = 13
      Caption = 'Pagamento'
      FocusControl = DBEdit_Pagamento
    end
    object DBEdit_Id: TDBEdit
      Left = 16
      Top = 24
      Width = 65
      Height = 21
      DataField = 'ID_PAG'
      DataSource = DM_Principal.DS_Pagamento
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_Pagamento: TDBEdit
      Left = 96
      Top = 24
      Width = 201
      Height = 21
      CharCase = ecUpperCase
      DataField = 'PAGAMENTO'
      DataSource = DM_Principal.DS_Pagamento
      TabOrder = 1
    end
  end
  inherited Panel2: TPanel
    Top = 137
    Height = 469
    inherited DBGrid1: TDBGrid
      Height = 467
      DataSource = DM_Principal.DS_Pagamento
    end
  end
  inherited Panel3: TPanel
    inherited DBNavigator1: TDBNavigator
      DataSource = DM_Principal.DS_Pagamento
      Hints.Strings = ()
      ExplicitTop = 4
    end
  end
end
