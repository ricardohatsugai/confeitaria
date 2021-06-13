program Confeitaria;

uses
  Vcl.Forms,
  UFrm_Principal in 'UFrm_Principal.pas' {Frm_Principal},
  UFrm_Login in 'UFrm_Login.pas' {Frm_Login},
  UDMPrincipal in 'UDMPrincipal.pas' {DM_Principal: TDataModule},
  UFrm_Cadastro_Modelo in 'UFrm_Cadastro_Modelo.pas' {Frm_Cadastro_Modelo},
  UFrm_CadClientes in 'UFrm_CadClientes.pas' {Frm_CadCliente},
  UValidacao in 'UValidacao.pas',
  UFrm_CadCidade in 'UFrm_CadCidade.pas' {Frm_CadCidade},
  UFrm_Cadastro_Pagamentos in 'UFrm_Cadastro_Pagamentos.pas' {Frm_Cadastro_Pagamento},
  UFrm_Cadastro_Produtos in 'UFrm_Cadastro_Produtos.pas' {Frm_Cadastro_Produtos},
  UFrm_Vendas in 'UFrm_Vendas.pas' {Frm_Vendas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_Principal, DM_Principal);
  Application.CreateForm(TFrm_Principal, Frm_Principal);
  Application.Run;
end.
