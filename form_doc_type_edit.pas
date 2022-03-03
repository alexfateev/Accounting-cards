unit form_doc_type_edit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, DBAccess, Uni, RzButton,
  Vcl.ExtCtrls, RzPanel, Vcl.StdCtrls, Vcl.Mask, RzEdit, RzDBEdit, RzLabel;

type
  TfmDocTypeEdit = class(TForm)
    RzLabel1: TRzLabel;
    RzDBEdit1: TRzDBEdit;
    RzPanel1: TRzPanel;
    RzButton1: TRzButton;
    RzButton2: TRzButton;
    UniDataSource1: TUniDataSource;
    function check: boolean;
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
  fmDocTypeEdit: TfmDocTypeEdit;

implementation

{$R *.dfm}

uses form_doc_type;

function TfmDocTypeEdit.check: boolean;
begin
  if length(Trim(RzDBEdit1.Text)) = 0 then
    begin
      ShowMessage(RzLabel1.Caption+ ' не может быть пустым');
      result := false;
      Exit;
    end;
end;

procedure TfmDocTypeEdit.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (UniDataSource1.DataSet.State = dsInsert) or (UniDataSource1.DataSet.State = dsEdit) then
    if Application.MessageBox('Сохранить внесенные изменения?','Подтверждение',MB_ICONQUESTION+MB_YESNO) = ID_YES then
      UniDataSource1.DataSet.Post else
        UniDataSource1.DataSet.Cancel;
  UniDataSource1.DataSet.Refresh;
end;

procedure TfmDocTypeEdit.FormShow(Sender: TObject);
begin
  RzDBEdit1.SetFocus;
end;

procedure TfmDocTypeEdit.RzButton1Click(Sender: TObject);
begin
  UniDataSource1.DataSet.Post;
end;

procedure TfmDocTypeEdit.RzButton2Click(Sender: TObject);
begin
  UniDataSource1.DataSet.Cancel;
end;

end.
