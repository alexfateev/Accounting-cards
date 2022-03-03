unit form_abonent_edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls,
  Vcl.Mask, RzEdit, RzDBEdit, RzLabel, RzButton, Data.DB, DBAccess, Uni, MemDS;

type
  TfmAbonentEdit = class(TForm)
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    RzLabel1: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzLabel2: TRzLabel;
    RzDBEdit2: TRzDBEdit;
    UniDataSource1: TUniDataSource;
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmAbonentEdit: TfmAbonentEdit;

implementation

{$R *.dfm}

uses form_main, form_abonement;

procedure TfmAbonentEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (UniDataSource1.State = dsEdit) or (UniDataSource1.State = dsInsert) then
  if Application.MessageBox('Сохранить внесенные изменения?','Подтверждение',MB_ICONQUESTION+MB_YESNO) = ID_YES then
    UniDataSource1.DataSet.Post else
      UniDataSource1.DataSet.Cancel;
  UniDataSource1.DataSet.Refresh;
end;

procedure TfmAbonentEdit.FormShow(Sender: TObject);
begin
  RzDBEdit1.SetFocus;
end;

procedure TfmAbonentEdit.RzButton1Click(Sender: TObject);
begin
  UniDataSource1.DataSet.Post;
end;

procedure TfmAbonentEdit.RzButton2Click(Sender: TObject);
begin
  UniDataSource1.DataSet.Cancel;
end;

end.
