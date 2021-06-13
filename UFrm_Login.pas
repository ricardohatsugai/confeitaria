unit UFrm_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, DB;

type
  TFrm_Login = class(TForm)
    Label1: TLabel;
    Lbl_Usuario: TLabel;
    Lbl_Senha: TLabel;
    Edt_Usuario: TEdit;
    Edt_Senha: TEdit;
    Btn_Login: TBitBtn;
    Btn_Cancelar: TBitBtn;
    procedure Btn_LoginClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Login: TFrm_Login;

implementation

{$R *.dfm}

uses UFrm_Principal, UDMPrincipal;

procedure TFrm_Login.Btn_CancelarClick(Sender: TObject);
begin
  ModalResult := -1;
end;

procedure TFrm_Login.Btn_LoginClick(Sender: TObject);
var nome, senha : string;
begin
  DM_Principal.FDT_Usuarios.Active:=True;

  nome:=Edt_Usuario.Text;
  senha:=Edt_Senha.Text;

  if DM_Principal.FDT_Usuarios.Locate('USERNAME',nome,[]) then
  begin
    if DM_Principal.FDT_UsuariosSENHA.AsString = senha then
    begin
      Frm_Principal.chave:=1;
      Frm_Principal.StatusBar1.Panels[0].Text := 'Usuário conectado: '+DM_Principal.FDT_UsuariosNOME.AsString;
      ModalResult := -1;
    end else
      ShowMessage('Usuário ou senha inválidos.');

  end else
    ShowMessage('Usuário ou senha inválidos.');

  DM_Principal.FDT_Usuarios.Active:=False;
end;

end.
