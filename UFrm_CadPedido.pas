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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadPedido: TFrm_CadPedido;

implementation

{$R *.dfm}

uses UDMPrincipal;

end.
