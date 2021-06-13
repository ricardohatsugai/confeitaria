unit UFrm_CadCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrm_Cadastro_Modelo, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TFrm_CadCidade = class(TFrm_Cadastro_Modelo)
    Label1: TLabel;
    DBEdit_Id: TDBEdit;
    Label2: TLabel;
    DBEdit1_Cidade: TDBEdit;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadCidade: TFrm_CadCidade;

implementation

{$R *.dfm}

uses UDMPrincipal, UValidacao;

end.
