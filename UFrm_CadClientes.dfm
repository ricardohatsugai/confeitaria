inherited Frm_CadCliente: TFrm_CadCliente
  Caption = ' Cadasttro de Clientes'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Height = 160
    ExplicitHeight = 160
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdt_id
    end
    object Label2: TLabel
      Left = 104
      Top = 16
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit_Nome
    end
    object Label3: TLabel
      Left = 367
      Top = 16
      Width = 19
      Height = 13
      Caption = 'CPF'
      FocusControl = DBEdit1
    end
    object Label4: TLabel
      Left = 506
      Top = 16
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = DBEdit2
    end
    object Label5: TLabel
      Left = 16
      Top = 61
      Width = 65
      Height = 13
      Caption = 'Complemento'
      FocusControl = DBEdit_Complemento
    end
    object Label6: TLabel
      Left = 422
      Top = 61
      Width = 37
      Height = 13
      Caption = 'N'#250'mero'
      FocusControl = DBEdit_Numero
    end
    object Label7: TLabel
      Left = 504
      Top = 61
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = DBEdit_Telefone
    end
    object Label8: TLabel
      Left = 716
      Top = 58
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label9: TLabel
      Left = 640
      Top = 58
      Width = 33
      Height = 13
      Caption = 'Estado'
    end
    object Label10: TLabel
      Left = 208
      Top = 61
      Width = 28
      Height = 13
      Caption = 'Bairro'
      FocusControl = DBEdit_Bairro
    end
    object SpeedButton1: TSpeedButton
      Left = 944
      Top = 77
      Width = 23
      Height = 22
      Hint = 'Cadastro de Cidades'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333333333333333333333333333333333333333333333FF333333333333
        3000333333FFFFF3F77733333000003000B033333777773777F733330BFBFB00
        E00033337FFF3377F7773333000FBFB0E000333377733337F7773330FBFBFBF0
        E00033F7FFFF3337F7773000000FBFB0E000377777733337F7770BFBFBFBFBF0
        E00073FFFFFFFF37F777300000000FB0E000377777777337F7773333330BFB00
        000033333373FF77777733333330003333333333333777333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object Label11: TLabel
      Left = 16
      Top = 104
      Width = 54
      Height = 13
      Caption = 'Anivers'#225'rio'
      FocusControl = DBEdit_Aniversario
    end
    object Label12: TLabel
      Left = 128
      Top = 104
      Width = 30
      Height = 13
      Caption = 'EMAIL'
      FocusControl = DBEdit_email
    end
    object DBEdt_id: TDBEdit
      Left = 16
      Top = 32
      Width = 73
      Height = 21
      DataField = 'ID_CLIENTE'
      DataSource = DM_Principal.DS_Clientes
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit_Nome: TDBEdit
      Left = 104
      Top = 32
      Width = 249
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DM_Principal.DS_Clientes
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 363
      Top = 32
      Width = 129
      Height = 21
      DataField = 'CPF'
      DataSource = DM_Principal.DS_Clientes
      TabOrder = 2
      OnExit = DBEdit1Exit
    end
    object DBEdit2: TDBEdit
      Left = 506
      Top = 32
      Width = 439
      Height = 21
      CharCase = ecUpperCase
      DataField = 'ENDERECO'
      DataSource = DM_Principal.DS_Clientes
      TabOrder = 3
    end
    object DBEdit_Complemento: TDBEdit
      Left = 16
      Top = 77
      Width = 177
      Height = 21
      CharCase = ecUpperCase
      DataField = 'COMPLEMENTO'
      DataSource = DM_Principal.DS_Clientes
      TabOrder = 4
    end
    object DBEdit_Numero: TDBEdit
      Left = 422
      Top = 77
      Width = 67
      Height = 21
      CharCase = ecUpperCase
      DataField = 'NUMERO'
      DataSource = DM_Principal.DS_Clientes
      TabOrder = 6
    end
    object DBEdit_Telefone: TDBEdit
      Left = 504
      Top = 77
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      DataField = 'TELEFONE'
      DataSource = DM_Principal.DS_Clientes
      TabOrder = 7
    end
    object DBLookupComboBox_Cidade: TDBLookupComboBox
      Left = 712
      Top = 77
      Width = 233
      Height = 21
      DataField = 'ID_CIDADE'
      DataSource = DM_Principal.DS_Clientes
      KeyField = 'ID_CIDADE'
      ListField = 'CIDADE'
      ListSource = DM_Principal.DS_Cidades
      TabOrder = 9
      OnExit = DBLookupComboBox_CidadeExit
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 640
      Top = 77
      Width = 57
      Height = 21
      DataField = 'ID_ESTADO'
      DataSource = DM_Principal.DS_Clientes
      KeyField = 'ID_ESTADO'
      ListField = 'ESTADO'
      ListSource = DM_Principal.DS_Estados
      TabOrder = 8
      OnEnter = DBLookupComboBox1Enter
      OnExit = DBLookupComboBox1Exit
    end
    object DBEdit_Bairro: TDBEdit
      Left = 208
      Top = 77
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      DataField = 'BAIRRO'
      DataSource = DM_Principal.DS_Clientes
      TabOrder = 5
    end
    object DBEdit_Aniversario: TDBEdit
      Left = 16
      Top = 120
      Width = 97
      Height = 21
      DataField = 'DATA_ANIVERSARIO'
      DataSource = DM_Principal.DS_Clientes
      TabOrder = 10
    end
    object DBEdit_email: TDBEdit
      Left = 128
      Top = 120
      Width = 273
      Height = 21
      DataField = 'EMAIL'
      DataSource = DM_Principal.DS_Clientes
      TabOrder = 11
    end
  end
  inherited Panel2: TPanel
    Top = 201
    Height = 405
    ExplicitTop = 201
    ExplicitHeight = 405
    inherited DBGrid1: TDBGrid
      Height = 403
      DataSource = DM_Principal.DS_Clientes
      ReadOnly = True
    end
  end
  inherited Panel3: TPanel
    inherited DBNavigator1: TDBNavigator
      DataSource = DM_Principal.DS_Clientes
      Hints.Strings = ()
    end
  end
end
