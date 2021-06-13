unit UFrm_Vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrm_Vendas = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid2: TDBGrid;
    Btn_NovaVenda: TBitBtn;
    procedure Btn_NovaVendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Vendas: TFrm_Vendas;

implementation

{$R *.dfm}

uses UDMPrincipal, UFrm_CadPedido;

procedure TFrm_Vendas.Btn_NovaVendaClick(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrm_CadPedido, Frm_CadPedido);
    Frm_CadPedido.ShowModal;
  Finally
    FreeAndNil(Frm_CadPedido);
  End;
end;

end.
