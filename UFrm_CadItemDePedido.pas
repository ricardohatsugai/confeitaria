unit UFrm_CadItemDePedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TFrm_CadItensDePedido = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Edt_Produto: TEdit;
    Btn_Pesquisar: TBitBtn;
    Label2: TLabel;
    DBEdit_Codigo: TDBEdit;
    Label3: TLabel;
    DBEdit_Produto: TDBEdit;
    Label4: TLabel;
    DBEdit_Descricao: TDBEdit;
    Label5: TLabel;
    DBEdit_Quant: TDBEdit;
    Label6: TLabel;
    DBEdit_Preco: TDBEdit;
    Label7: TLabel;
    DBEdit_Total: TDBEdit;
    Btn_Salvar: TBitBtn;
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBEdit_PrecoExit(Sender: TObject);
    procedure Btn_SalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadItensDePedido: TFrm_CadItensDePedido;

implementation

{$R *.dfm}

uses UDMPrincipal;

procedure TFrm_CadItensDePedido.Btn_PesquisarClick(Sender: TObject);
begin
  if not DM_Principal.FDT_Produtos.Locate('PRODUTO',Edt_Produto.Text,[loPartialKey]) then
    DM_Principal.FDT_ItensPedidoCOD_PROD.AsInteger := DM_Principal.FDT_ProdutosID_PRODUTOS.AsInteger;

end;

procedure TFrm_CadItensDePedido.Btn_SalvarClick(Sender: TObject);
begin
  DM_Principal.FDT_ItensPedido.Post;
  DM_Principal.FDT_Vendas.Edit;
  ModalResult := -1;
end;

procedure TFrm_CadItensDePedido.DBEdit_PrecoExit(Sender: TObject);
begin
  if (DBEdit_Quant.Text <> '') and (DBEdit_Preco.Text <> '') then
    DM_Principal.FDT_ItensPedidoTOTAL.AsCurrency := DM_Principal.FDT_ItensPedidoQUANT.AsCurrency * DM_Principal.FDT_ItensPedidoPRECO.AsCurrency;
end;

procedure TFrm_CadItensDePedido.DBGrid1DblClick(Sender: TObject);
begin
  DM_Principal.FDT_ItensPedidoCOD_PROD.AsInteger := DM_Principal.FDT_ProdutosID_PRODUTOS.AsInteger;
  DM_Principal.FDT_ItensPedidoPRECO.AsCurrency := DM_Principal.FDT_ProdutosPRECO.AsCurrency;
  DBEdit_Quant.SetFocus;
end;

end.
