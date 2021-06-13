unit UFrm_CadClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrm_Cadastro_Modelo, Data.DB,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  Vcl.Mask, FireDAC.Stan.Param;

type
  TFrm_CadCliente = class(TFrm_Cadastro_Modelo)
    Label1: TLabel;
    DBEdt_id: TDBEdit;
    Label2: TLabel;
    DBEdit_Nome: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit_Complemento: TDBEdit;
    Label6: TLabel;
    DBEdit_Numero: TDBEdit;
    Label7: TLabel;
    DBEdit_Telefone: TDBEdit;
    Label8: TLabel;
    DBLookupComboBox_Cidade: TDBLookupComboBox;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label10: TLabel;
    DBEdit_Bairro: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label11: TLabel;
    DBEdit_Aniversario: TDBEdit;
    Label12: TLabel;
    DBEdit_email: TDBEdit;
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure DBLookupComboBox_CidadeExit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_CadCliente: TFrm_CadCliente;

implementation

{$R *.dfm}

uses UDMPrincipal, UValidacao, UFrm_CadCidade;

procedure TFrm_CadCliente.DBEdit1Exit(Sender: TObject);
begin
  inherited;
  if not ValidaCPF(DBEdit1.Text) then
  begin
    ShowMessage('CPF inválido!');
    //DBEdit1.SetFocus;
  end;

end;

procedure TFrm_CadCliente.DBLookupComboBox1Enter(Sender: TObject);
begin
  inherited;
  DM_Principal.FDQ_Cidades.Active := False;
  DM_Principal.FDQ_Cidades.SQL.Clear;
  DM_Principal.FDQ_Cidades.SQL.Add('select * from CIDADES '+
'where CIDADES.COD_ESTADO =:id_estado order by CIDADES.CIDADE');
  DM_Principal.FDQ_Cidades.Active := True;
end;

procedure TFrm_CadCliente.DBLookupComboBox1Exit(Sender: TObject);
begin
  inherited;
  DM_Principal.FDQ_Cidades.Active := False;
  DM_Principal.FDQ_Cidades.Params[0].AsInteger := DM_Principal.FDT_EstadosID_ESTADO.AsInteger;
  DM_Principal.FDQ_Cidades.Active := True;
end;

procedure TFrm_CadCliente.DBLookupComboBox_CidadeExit(Sender: TObject);
begin
  inherited;

  DM_Principal.FDQ_Cidades.Active := False;
  DM_Principal.FDQ_Cidades.SQL.Clear;
  DM_Principal.FDQ_Cidades.SQL.Add('select * from CIDADES order by CIDADES.CIDADE');
  DM_Principal.FDQ_Cidades.Active := True;

end;

procedure TFrm_CadCliente.FormShow(Sender: TObject);
begin
  inherited;
  DBEdit_Nome.SetFocus;

  DM_Principal.FDQ_Cidades.Active := False;
  DM_Principal.FDQ_Cidades.SQL.Clear;
  DM_Principal.FDQ_Cidades.SQL.Add('select * from CIDADES order by CIDADES.CIDADE');
  DM_Principal.FDQ_Cidades.Active := True;
end;

procedure TFrm_CadCliente.SpeedButton1Click(Sender: TObject);
begin
  inherited;
 Try
    Application.CreateForm(TFrm_CadCidade, Frm_CadCidade);
    DM_Principal.FDQ_Cidades.Active := False;
    DM_Principal.FDQ_Cidades.SQL.Clear;
    DM_Principal.FDQ_Cidades.SQL.Add('select * from CIDADES order by CIDADES.CIDADE');
    DM_Principal.FDQ_Cidades.Active := True;
    Frm_CadCidade.ShowModal;
  Finally
    FreeAndNil(Frm_CadCidade);
  End;
end;

end.
