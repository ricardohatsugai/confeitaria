unit UFrm_Cadastro_Produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrm_Cadastro_Modelo, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TFrm_Cadastro_Produtos = class(TFrm_Cadastro_Modelo)
    Label1: TLabel;
    DBEdit_iD: TDBEdit;
    Label2: TLabel;
    DBEdit_Produto: TDBEdit;
    Label3: TLabel;
    DBEdit_Descricao: TDBEdit;
    Label4: TLabel;
    DBEdit_Preco: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_Produtos: TFrm_Cadastro_Produtos;

implementation

{$R *.dfm}

uses UDMPrincipal, UValidacao;

procedure TFrm_Cadastro_Produtos.FormShow(Sender: TObject);
begin
  inherited;
  DBEdit_Produto.SetFocus;
end;

end.
