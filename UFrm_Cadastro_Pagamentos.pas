unit UFrm_Cadastro_Pagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrm_Cadastro_Modelo, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TFrm_Cadastro_Pagamento = class(TFrm_Cadastro_Modelo)
    Label1: TLabel;
    DBEdit_Id: TDBEdit;
    Label2: TLabel;
    DBEdit_Pagamento: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_Pagamento: TFrm_Cadastro_Pagamento;

implementation

{$R *.dfm}

uses UDMPrincipal, UValidacao;

end.
