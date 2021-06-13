unit UFrm_CadPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Buttons, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFrm_CadPedido = class(TForm)
    Label1: TLabel;
    DBEdit_Id: TDBEdit;
    Label2: TLabel;
    DBEdit_Data: TDBEdit;
    Label3: TLabel;
    DBEdit1_HoraEntrega: TDBEdit;
    Label4: TLabel;
    DBEdit_DataEntrega: TDBEdit;
    Label5: TLabel;
    DBLookupCMB_Clientes: TDBLookupComboBox;
    Label6: TLabel;
    DBLookupCMB_Pagamento: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit_Obs: TDBEdit;
    Btn_Incluir: TBitBtn;
    Btn_Alterar: TBitBtn;
    Btn_Excluir: TBitBtn;
    Panel1: TPanel;
    Label8: TLabel;
    DBEdit_Total: TDBEdit;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Btn_Gravar: TBitBtn;
    Btn_CancelarPedido: TBitBtn;
    procedure Btn_IncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_CancelarPedidoClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadPedido: TFrm_CadPedido;

implementation

{$R *.dfm}

uses UDMPrincipal, UFrm_CadItemDePedido;

procedure TFrm_CadPedido.Btn_CancelarPedidoClick(Sender: TObject);
begin
  if DM_Principal.FDT_Vendas.State in [dsEdit,dsInsert] then
  begin
    DM_Principal.FDT_Vendas.Cancel;
    ModalResult := -1;
  end;
end;

procedure TFrm_CadPedido.Btn_GravarClick(Sender: TObject);
begin
  DM_Principal.FDT_Vendas.Post;
  DM_Principal.FDTransaction1.CommitRetaining;
  ModalResult := -1;
end;

procedure TFrm_CadPedido.Btn_IncluirClick(Sender: TObject);
begin
  Try
    Application.CreateForm(TFrm_CadItensDePedido, Frm_CadItensDePedido);
    DM_Principal.FDT_Vendas.Post;
    DM_Principal.FDT_ItensPedido.Insert;
    Frm_CadItensDePedido.ShowModal;
    if DM_Principal.FDT_ItensPedido.State in [dsEdit,dsInsert] then
    begin
      DM_Principal.FDT_ItensPedido.Cancel;
      DM_Principal.FDT_Vendas.Edit;
    end;
  Finally
    FreeAndNil(Frm_CadItensDePedido);
  End;
end;

procedure TFrm_CadPedido.FormShow(Sender: TObject);
begin
DM_Principal.FDT_VendasDATA.AsDateTime := Now;
DBEdit1_HoraEntrega.SetFocus;
end;

end.
