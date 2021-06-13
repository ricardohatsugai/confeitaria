unit UFrm_Cadastro_Modelo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrm_Cadastro_Modelo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    Btn_Sair: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Cadastro_Modelo: TFrm_Cadastro_Modelo;

implementation

{$R *.dfm}

end.
