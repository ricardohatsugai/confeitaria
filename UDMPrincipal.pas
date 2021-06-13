unit UDMPrincipal;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase, FireDAC.Comp.UI,
  FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Datasnap.DBClient,
  Datasnap.Provider;

type
  TDM_Principal = class(TDataModule)
    FDConnection1: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDT_Usuarios: TFDTable;
    FDT_Clientes: TFDTable;
    FDT_ClientesID_CLIENTE: TIntegerField;
    FDT_ClientesNOME: TStringField;
    FDT_ClientesENDERECO: TStringField;
    FDT_ClientesCOMPLEMENTO: TStringField;
    FDT_ClientesNUMERO: TStringField;
    FDT_ClientesBAIRRO: TStringField;
    FDT_ClientesTELEFONE: TStringField;
    FDT_ClientesID_CIDADE: TIntegerField;
    FDT_Estados: TFDTable;
    FDT_EstadosID_ESTADO: TIntegerField;
    FDT_EstadosESTADO: TStringField;
    FDT_ClientesID_ESTADO: TIntegerField;
    DS_Clientes: TDataSource;
    DS_Cidades: TDataSource;
    DS_Estados: TDataSource;
    FDQ_Cidades: TFDQuery;
    FDQ_CidadesID_CIDADE: TIntegerField;
    FDQ_CidadesCIDADE: TStringField;
    FDT_Pagamentos: TFDTable;
    FDT_PagamentosID_PAG: TIntegerField;
    FDT_PagamentosPAGAMENTO: TStringField;
    DS_Pagamento: TDataSource;
    DS_Produtos: TDataSource;
    FDT_ClientesDATA_ANIVERSARIO: TDateField;
    FDT_ClientesEMAIL: TStringField;
    FDT_UsuariosID_USUARIO: TIntegerField;
    FDT_UsuariosNOME: TStringField;
    FDT_UsuariosUSERNAME: TStringField;
    FDT_UsuariosSENHA: TStringField;
    FDT_ClientesCPF: TStringField;
    FDT_Produtos: TFDTable;
    FDT_ProdutosID_PRODUTOS: TIntegerField;
    FDT_ProdutosPRODUTO: TStringField;
    FDT_ProdutosDESCRICAO: TStringField;
    FDT_ProdutosPRECO: TBCDField;
    FDQ_CidadesCOD_ESTADO: TIntegerField;
    FDQ_CidadesESTADO: TStringField;
    FDT_Vendas: TFDTable;
    FDT_ItensPedido: TFDTable;
    FDT_VendasID_VENDA: TIntegerField;
    FDT_VendasDATA: TDateField;
    FDT_VendasHORA_ENTREGA: TTimeField;
    FDT_VendasDATA_ENTREGA: TDateField;
    FDT_VendasCOD_CLIENTE: TIntegerField;
    FDT_VendasCOD_PAG: TIntegerField;
    FDT_VendasOBS: TStringField;
    FDT_VendasICOD_USUARIO: TIntegerField;
    FDT_ItensPedidoCOD_VENDA: TIntegerField;
    FDT_ItensPedidoCOD_PROD: TIntegerField;
    FDT_ItensPedidoQUANT: TBCDField;
    FDT_ItensPedidoPRECO: TBCDField;
    FDT_ItensPedidoTOTAL: TBCDField;
    DS_Vendas: TDataSource;
    DS_ItensPedido: TDataSource;
    FDT_VendasCLIENTE: TStringField;
    FDT_VendasPAGAMENTO: TStringField;
    FDT_ItensPedidoPRODUTO: TStringField;
    FDT_ItensPedidoDESCRICAO: TStringField;
    procedure FDT_ClientesAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Principal: TDM_Principal;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM_Principal.FDT_ClientesAfterPost(DataSet: TDataSet);
begin
  FDT_Clientes.ApplyUpdates(-1);
end;

end.
