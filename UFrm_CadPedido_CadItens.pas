unit UFrm_CadPedido_CadItens;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrm_CadPedido_CadItens = class(TForm)
    DBGrid1: TDBGrid;
    FDQ_Produtos: TFDQuery;
    FDQ_ProdutosID_PRODUTO: TIntegerField;
    FDQ_ProdutosPRODUTO: TStringField;
    FDQ_ProdutosDESCRICAO: TStringField;
    FDQ_ProdutosPRECO: TBCDField;
    DS_Produtos: TDataSource;
    Panel1: TPanel;
    Bevel1: TBevel;
    Lbl_Pesquisa: TLabel;
    Edt_Pesqisa: TEdit;
    Btn_Pesquisar: TBitBtn;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit_Produto: TDBEdit;
    Label3: TLabel;
    DBEdit_Descricao: TDBEdit;
    Label4: TLabel;
    DBEdit_Qaunt: TDBEdit;
    Label5: TLabel;
    DBEdit_Preco: TDBEdit;
    Label6: TLabel;
    DBEdit_Total: TDBEdit;
    Btn_Incluir: TBitBtn;
    Btn_Cancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit_QauntExit(Sender: TObject);
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadPedido_CadItens: TFrm_CadPedido_CadItens;

implementation

{$R *.dfm}

uses UDMPrincipal, UFrm_CadPedidos;

procedure TFrm_CadPedido_CadItens.Btn_CancelarClick(Sender: TObject);
begin
  ModalResult := -1;
end;

procedure TFrm_CadPedido_CadItens.Btn_IncluirClick(Sender: TObject);
begin
  if not DM_Principal.FDQ_ItensVendasID_PROD.IsNull then
  begin
    if (DBEdit_Qaunt.Text <> '') and (DBEdit_Preco.Text <> '') then
    begin
      DM_Principal.FDQ_ItensVendas.Post;
      ModalResult := -1;
    end;
  end;
end;

procedure TFrm_CadPedido_CadItens.Btn_PesquisarClick(Sender: TObject);
begin
  if Edt_Pesqisa.Text <> '' then
  begin
    FDQ_Produtos.Active := False;
    FDQ_Produtos.Params[0].AsString := Edt_Pesqisa.Text + '%';
    FDQ_Produtos.Active := True;
  end;
end;

procedure TFrm_CadPedido_CadItens.DBEdit_QauntExit(Sender: TObject);
var preco, quant, total: Currency;
begin
  preco:=0; quant:=0; total:=0;

  if (DBEdit_Qaunt.Text <> '') and (DBEdit_Preco.Text <> '') then
  begin
    preco:= FDQ_ProdutosPRECO.AsCurrency;
    quant:= StrToCurr(DBEdit_Qaunt.Text);
    total := (preco * quant);
    DM_Principal.FDQ_ItensVendasTOTAL.AsCurrency := total;
  end;
end;

procedure TFrm_CadPedido_CadItens.DBGrid1DblClick(Sender: TObject);
begin
  DM_Principal.FDQ_ItensVendasID_PROD.AsInteger := FDQ_ProdutosID_PRODUTO.AsInteger;
  DM_Principal.FDQ_ItensVendasPRECO.AsCurrency := FDQ_ProdutosPRECO.AsCurrency;
  DBEdit_Qaunt.SetFocus;
end;

procedure TFrm_CadPedido_CadItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FDQ_Produtos.Active := False;
end;

procedure TFrm_CadPedido_CadItens.FormShow(Sender: TObject);
begin
  FDQ_Produtos.Active := True;
end;

end.
