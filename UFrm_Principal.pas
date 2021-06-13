unit UFrm_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, DB, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TFrm_Principal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Vendas1: TMenuItem;
    Clientes1: TMenuItem;
    Pagamentos1: TMenuItem;
    Produtos1: TMenuItem;
    Nova1: TMenuItem;
    StatusBar1: TStatusBar;
    Cidades1: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    FDQ_ClientesSemCompras: TFDQuery;
    DS_ClientesSemCompras: TDataSource;
    FDQ_ClientesSemComprasID_CLIENTE: TIntegerField;
    FDQ_ClientesSemComprasNOME: TStringField;
    FDQ_ClientesSemComprasTELEFONE: TStringField;
    FDQ_ClientesSemComprasDATA: TDateField;
    Panel3: TPanel;
    Label2: TLabel;
    Panel4: TPanel;
    DBGrid2: TDBGrid;
    FDQ_ClientesQueFazemAniversario: TFDQuery;
    DS_ClientesQueFazemAniversario: TDataSource;
    FDQ_ClientesQueFazemAniversarioID_CLIENTE: TIntegerField;
    FDQ_ClientesQueFazemAniversarioNOME: TStringField;
    FDQ_ClientesQueFazemAniversarioTELEFONE: TStringField;
    FDQ_ClientesQueFazemAniversarioDATA_ANIVERSARIO: TDateField;
    FDQ_ClientesQueFazemAniversarioEMAIL: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Pagamentos1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Nova1Click(Sender: TObject);
  private
    { Private declarations }
  public
    chave: Integer; //Flag criado para autenticação no sistema.
    { Public declarations }
  end;

var
  Frm_Principal: TFrm_Principal;

implementation

{$R *.dfm}

uses UFrm_Login, UDMPrincipal, UFrm_CadClientes, UFrm_CadCidade,
  UFrm_Cadastro_Pagamentos, UFrm_Cadastro_Produtos, UFrm_Vendas;

procedure TFrm_Principal.Cidades1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrm_CadCidade, Frm_CadCidade);
    DM_Principal.FDQ_Cidades.SQL.Clear;
    DM_Principal.FDQ_Cidades.SQL.Add('select * from CIDADES order by CIDADES.CIDADE');
    DM_Principal.FDT_Estados.Active := True;
    DM_Principal.FDQ_Cidades.Active := True;
    Frm_CadCidade.ShowModal;

    DM_Principal.FDQ_Cidades.Active := False;
    DM_Principal.FDT_Estados.Active := False;
  Finally
    FreeAndNil(Frm_CadCidade);
  End;
end;

procedure TFrm_Principal.Clientes1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrm_CadCliente, Frm_CadCliente);
    DM_Principal.FDT_Estados.Active := True;
    DM_Principal.FDQ_Cidades.Active := True;
    DM_Principal.FDT_Clientes.Active := True;
    Frm_CadCliente.ShowModal;

    if DM_Principal.FDT_Clientes.UpdateStatus in [usInserted,usModified] then
      DM_Principal.FDT_Clientes.Cancel;
      DM_Principal.FDT_Clientes.CancelUpdates;


    DM_Principal.FDT_Clientes.Active := False;
    DM_Principal.FDQ_Cidades.Active := False;
    DM_Principal.FDT_Estados.Active := False;
  Finally
    FreeAndNil(Frm_CadCliente);
  End;
end;

procedure TFrm_Principal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FDQ_ClientesSemCompras.Active := False;
  FDQ_ClientesQueFazemAniversario.Active := False;
end;

procedure TFrm_Principal.FormCreate(Sender: TObject);
begin
  chave:=0; //Chave recebe valor False.

  try
    Application.CreateForm(TFrm_Login, Frm_Login);  
    Frm_Login.ShowModal;

  finally
    Frm_Login.Free;
  end;

  {Se o valor da chave for estiver 0, a aplicação será encerrada.}
  if chave = 0 then
    Application.Terminate;
  
end;

procedure TFrm_Principal.FormShow(Sender: TObject);
var dia, mes, ano : Word; Data: TDateTime;
begin
  Data := Now;
  DecodeDate(Data, ano, mes, dia);

  DM_Principal.FDConnection1.Connected := True;

  FDQ_ClientesSemCompras.Params[0].AsDate := Now;
  FDQ_ClientesSemCompras.Active := True;

  FDQ_ClientesQueFazemAniversario.Params[0].AsInteger := mes;
  FDQ_ClientesQueFazemAniversario.Active := True;
end;

procedure TFrm_Principal.Nova1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrm_Vendas, Frm_Vendas);
    DM_Principal.FDT_Vendas.Active := True;
    DM_Principal.FDT_ItensPedido.Active := True;
    DM_Principal.FDT_Produtos.Active := True;
    DM_Principal.FDT_Pagamentos.Active := True;
    Frm_Vendas.ShowModal;
    DM_Principal.FDT_ItensPedido.Active := False;
    DM_Principal.FDT_Vendas.Active := False;
    DM_Principal.FDT_Produtos.Active := False;
    DM_Principal.FDT_Pagamentos.Active := False;
  Finally
    FreeAndNil(Frm_Vendas);
  End;
end;

procedure TFrm_Principal.Pagamentos1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrm_Cadastro_Pagamento, Frm_Cadastro_Pagamento);
    DM_Principal.FDConnection1.Connected := True;
    DM_Principal.FDT_Pagamentos.Active := True;

    Frm_Cadastro_Pagamento.ShowModal;

    DM_Principal.FDT_Pagamentos.Active := False;
    DM_Principal.FDConnection1.Connected := False;
  Finally
    FreeAndNil(Frm_Cadastro_Pagamento);
  End;
end;

procedure TFrm_Principal.Produtos1Click(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrm_Cadastro_Produtos, Frm_Cadastro_Produtos);
    DM_Principal.FDConnection1.Connected := True;
    DM_Principal.FDT_Produtos.Active := True;
    Frm_Cadastro_Produtos.ShowModal;
    DM_Principal.FDT_Produtos.Active := False;
    DM_Principal.FDConnection1.Connected := False;
  Finally
    FreeAndNil(Frm_Cadastro_Produtos);
  End;
end;

procedure TFrm_Principal.Sair1Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente sair?','Pergunta', MB_ICONQUESTION + MB_YESNO) = ID_YES then
    Application.Terminate;
end;

end.
