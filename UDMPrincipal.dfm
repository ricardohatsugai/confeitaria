object DM_Principal: TDM_Principal
  OldCreateOrder = False
  Height = 752
  Width = 1082
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Engenharia de Software\Projeto\Prototipo\BaseDeDados' +
        '\BANCO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = FDTransaction1
    Left = 64
    Top = 24
  end
  object FDTransaction1: TFDTransaction
    Connection = FDConnection1
    Left = 72
    Top = 104
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 168
    Top = 24
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Program Files\Firebird\Firebird_2_5\WOW64\fbclient.dll'
    Left = 64
    Top = 184
  end
  object FDT_Usuarios: TFDTable
    IndexFieldNames = 'ID_USUARIO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'USUARIOS'
    TableName = 'USUARIOS'
    Left = 168
    Top = 104
    object FDT_UsuariosID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDT_UsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 25
    end
    object FDT_UsuariosUSERNAME: TStringField
      FieldName = 'USERNAME'
      Origin = 'USERNAME'
      Size = 25
    end
    object FDT_UsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 25
    end
  end
  object FDT_Clientes: TFDTable
    AfterPost = FDT_ClientesAfterPost
    CachedUpdates = True
    IndexFieldNames = 'ID_CLIENTE'
    Connection = FDConnection1
    Transaction = FDTransaction1
    UpdateOptions.UpdateTableName = 'CLIENTES'
    TableName = 'CLIENTES'
    Left = 320
    Top = 24
    object FDT_ClientesID_CLIENTE: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_CLIENTE'
      Origin = 'ID_CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDT_ClientesNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 35
    end
    object FDT_ClientesCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      EditMask = '999.999.999-99;0;_'
      Size = 35
    end
    object FDT_ClientesENDERECO: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 35
    end
    object FDT_ClientesCOMPLEMENTO: TStringField
      DisplayLabel = 'Complemento'
      DisplayWidth = 25
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 35
    end
    object FDT_ClientesNUMERO: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 11
    end
    object FDT_ClientesBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 20
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 35
    end
    object FDT_ClientesTELEFONE: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '(99) 99999-9999;0;_'
      Size = 11
    end
    object FDT_ClientesDATA_ANIVERSARIO: TDateField
      DisplayLabel = 'Anivers'#225'rio'
      FieldName = 'DATA_ANIVERSARIO'
      Origin = 'DATA_ANIVERSARIO'
      EditMask = '!99/99/0000;1;_'
    end
    object FDT_ClientesEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 60
    end
    object FDT_ClientesID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      Visible = False
    end
    object FDT_ClientesID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      Visible = False
    end
  end
  object FDT_Estados: TFDTable
    IndexFieldNames = 'ID_ESTADO'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'ESTADOS'
    TableName = 'ESTADOS'
    Left = 488
    Top = 24
    object FDT_EstadosID_ESTADO: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDT_EstadosESTADO: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 5
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 35
    end
  end
  object DS_Clientes: TDataSource
    DataSet = FDT_Clientes
    Left = 320
    Top = 88
  end
  object DS_Cidades: TDataSource
    DataSet = FDQ_Cidades
    Left = 408
    Top = 88
  end
  object DS_Estados: TDataSource
    DataSet = FDT_Estados
    Left = 488
    Top = 88
  end
  object FDQ_Cidades: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from CIDADES '
      'where CIDADES.COD_ESTADO =:id_estado '
      'order by CIDADES.CIDADE')
    Left = 408
    Top = 24
    ParamData = <
      item
        Name = 'ID_ESTADO'
        DataType = ftInteger
        FDDataType = dtInt32
        ParamType = ptInput
        Value = 0
      end>
    object FDQ_CidadesID_CIDADE: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_CIDADE'
      Origin = 'ID_CIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQ_CidadesCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 35
    end
    object FDQ_CidadesCOD_ESTADO: TIntegerField
      FieldName = 'COD_ESTADO'
      Origin = 'COD_ESTADO'
    end
    object FDQ_CidadesESTADO: TStringField
      FieldKind = fkLookup
      FieldName = 'ESTADO'
      LookupDataSet = FDT_Estados
      LookupKeyFields = 'ID_ESTADO'
      LookupResultField = 'ESTADO'
      KeyFields = 'COD_ESTADO'
      Size = 3
      Lookup = True
    end
  end
  object FDT_Pagamentos: TFDTable
    IndexFieldNames = 'ID_PAG'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PAGAMENTOS'
    TableName = 'PAGAMENTOS'
    Left = 320
    Top = 201
    object FDT_PagamentosID_PAG: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID_PAG'
      Origin = 'ID_PAG'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDT_PagamentosPAGAMENTO: TStringField
      DisplayLabel = 'Pagamento'
      FieldName = 'PAGAMENTO'
      Origin = 'PAGAMENTO'
      Size = 15
    end
  end
  object DS_Pagamento: TDataSource
    DataSet = FDT_Pagamentos
    Left = 320
    Top = 264
  end
  object DS_Produtos: TDataSource
    DataSet = FDT_Produtos
    Left = 480
    Top = 264
  end
  object FDT_Produtos: TFDTable
    IndexFieldNames = 'ID_PRODUTOS'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'PRODUTOS'
    TableName = 'PRODUTOS'
    Left = 480
    Top = 200
    object FDT_ProdutosID_PRODUTOS: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_PRODUTOS'
      Origin = 'ID_PRODUTOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDT_ProdutosPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Size = 35
    end
    object FDT_ProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 35
    end
    object FDT_ProdutosPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
  end
  object FDT_Vendas: TFDTable
    IndexFieldNames = 'ID_VENDA'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'VENDAS'
    TableName = 'VENDAS'
    Left = 768
    Top = 40
    object FDT_VendasID_VENDA: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDT_VendasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object FDT_VendasHORA_ENTREGA: TTimeField
      FieldName = 'HORA_ENTREGA'
      Origin = 'HORA_ENTREGA'
    end
    object FDT_VendasDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
      Origin = 'DATA_ENTREGA'
    end
    object FDT_VendasCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = 'COD_CLIENTE'
    end
    object FDT_VendasCLIENTE: TStringField
      FieldKind = fkLookup
      FieldName = 'CLIENTE'
      LookupDataSet = FDT_Clientes
      LookupKeyFields = 'ID_CLIENTE'
      LookupResultField = 'NOME'
      KeyFields = 'COD_CLIENTE'
      Size = 35
      Lookup = True
    end
    object FDT_VendasCOD_PAG: TIntegerField
      FieldName = 'COD_PAG'
      Origin = 'COD_PAG'
    end
    object FDT_VendasPAGAMENTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PAGAMENTO'
      LookupDataSet = FDT_Pagamentos
      LookupKeyFields = 'ID_PAG'
      LookupResultField = 'PAGAMENTO'
      KeyFields = 'COD_PAG'
      Size = 25
      Lookup = True
    end
    object FDT_VendasOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 50
    end
    object FDT_VendasICOD_USUARIO: TIntegerField
      FieldName = 'ICOD_USUARIO'
      Origin = 'ICOD_USUARIO'
    end
  end
  object FDT_ItensPedido: TFDTable
    IndexFieldNames = 'COD_VENDA;COD_PROD'
    MasterSource = DS_Vendas
    MasterFields = 'ID_VENDA'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'ITEM_VENDA'
    TableName = 'ITEM_VENDA'
    Left = 856
    Top = 40
    object FDT_ItensPedidoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = 'COD_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDT_ItensPedidoCOD_PROD: TIntegerField
      FieldName = 'COD_PROD'
      Origin = 'COD_PROD'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDT_ItensPedidoPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRODUTO'
      LookupDataSet = FDT_Produtos
      LookupKeyFields = 'ID_PRODUTOS'
      LookupResultField = 'PRODUTO'
      KeyFields = 'COD_PROD'
      Size = 35
      Lookup = True
    end
    object FDT_ItensPedidoDESCRICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'DESCRICAO'
      LookupDataSet = FDT_Produtos
      LookupKeyFields = 'ID_PRODUTOS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'COD_PROD'
      Size = 35
      Lookup = True
    end
    object FDT_ItensPedidoQUANT: TBCDField
      FieldName = 'QUANT'
      Origin = 'QUANT'
      Precision = 18
      Size = 2
    end
    object FDT_ItensPedidoPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 18
      Size = 2
    end
    object FDT_ItensPedidoTOTAL: TBCDField
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      Precision = 18
      Size = 2
    end
  end
  object DS_Vendas: TDataSource
    DataSet = FDT_Vendas
    Left = 768
    Top = 96
  end
  object DS_ItensPedido: TDataSource
    DataSet = FDT_ItensPedido
    Left = 856
    Top = 96
  end
end
