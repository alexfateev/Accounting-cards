unit form_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DBGridEhGrouping, ToolCtrlsEh,
  DBGridEhToolCtrls, DynVarsEh, EhLibVCL, GridsEh, DBAxisGridsEh, DBGridEh,
  Vcl.ExtCtrls, RzPanel, System.ImageList, Vcl.ImgList, RzButton, UniProvider,
  MySQLUniProvider, Data.DB, DBAccess, Uni, MemDS, IniFiles, Vcl.StdCtrls,
  Vcl.Mask, RzEdit;

type
  TfmMain = class(TForm)
    RzPanel1: TRzPanel;
    DBGridEh1: TDBGridEh;
    RzToolButton1: TRzToolButton;
    ImageList1: TImageList;
    RzSpacer1: TRzSpacer;
    UniQuery1: TUniQuery;
    UniDataSource1: TUniDataSource;
    DBConnection: TUniConnection;
    MySQL: TMySQLUniProvider;
    RzToolButton2: TRzToolButton;
    RzToolButton3: TRzToolButton;
    RzToolButton4: TRzToolButton;
    RzToolButton5: TRzToolButton;
    RzToolButton6: TRzToolButton;
    RzEdit1: TRzEdit;
    RzToolButton7: TRzToolButton;
    procedure RzButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure RzToolButton3Click(Sender: TObject);
    procedure RzToolButton4Click(Sender: TObject);
    procedure RzToolButton1Click(Sender: TObject);
    procedure UniDataSource1DataChange(Sender: TObject; Field: TField);
    procedure DBConnectionBeforeConnect(Sender: TObject);
    procedure RzEdit1Change(Sender: TObject);
    procedure RzToolButton2Click(Sender: TObject);
    procedure RzToolButton7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
      Column: TColumnEh);
    procedure DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
      AFont: TFont; var Background: TColor; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmMain: TfmMain;

implementation

{$R *.dfm}

uses form_abonement, form_doc_type, form_card_edit, form_issued_doc;

procedure TfmMain.DBConnectionBeforeConnect(Sender: TObject);
var
  ini: TIniFile;
begin
  ini := TIniFile.Create(ExtractFilePath(Application.ExeName)+'\config.ini');
  with DBConnection do
  begin
    Server := ini.ReadString('connection','server','localhost');
    Port := ini.ReadInteger('connection','port',3306);
    Username := ini.ReadString('connection','username','std_user');
    Password := ini.ReadString('connection','password','std_user_pass');
    Database := ini.ReadString('connection','database','db_std_card');
  end;
  ini.Free;
end;

procedure TfmMain.DBGridEh1GetCellParams(Sender: TObject; Column: TColumnEh;
  AFont: TFont; var Background: TColor; State: TGridDrawState);
begin
  if TDBGridEh(Sender).DataSource.DataSet.FieldByName('card_enable').AsInteger=0 then
    begin
      AFont.Color := clGray;
      AFont.Style := [fsStrikeOut];
    end;
end;

procedure TfmMain.DBGridEh1TitleBtnClick(Sender: TObject; ACol: Integer;
  Column: TColumnEh);
var
  i,j:Integer;
  sort_str: String;
begin
  sort_str:=Column.FieldName;
  case Column.Title.SortMarker of
    smUpEh :Sort_str:=sort_str+' DESC';
    smDownEh :Sort_str:=sort_str+' ASC';
    smNoneEh : sort_str:=sort_str+' ASC';
  end;
  UniQuery1.IndexFieldNames:=sort_str;
end;

procedure TfmMain.FormCreate(Sender: TObject);
begin
  try
    DBConnection.Connect;
  except
    on E: Exception do begin
      Application.MessageBox(PWideChar(e.Message),PWideChar(E.ClassName),MB_ICONERROR);
      Application.Terminate;
    end;
  end;
  UniQuery1.Active := true;
end;

procedure TfmMain.FormShow(Sender: TObject);
begin
  DBGridEh1.SetFocus;
end;

procedure TfmMain.RzButton1Click(Sender: TObject);
begin
  fmAbonement.ShowModal;
end;

procedure TfmMain.RzButton2Click(Sender: TObject);
begin
  fmDocType.ShowModal;
end;

procedure TfmMain.RzEdit1Change(Sender: TObject);
begin
  if Length(Trim(RzEdit1.Text)) = 0 then
    UniQuery1.Filtered := false else
      begin
        UniQuery1.Filter := 'card_number like ''%'+RzEdit1.Text+'%'''+
        ' or card_inventory_number like ''%'+RzEdit1.Text+'%'''+
        ' or card_name like ''%'+RzEdit1.Text+'%'''+
        ' or card_sign like ''%'+RzEdit1.Text+'%'''+
        ' or card_name like ''%'+RzEdit1.Text+'%'''+
        ' or type_name like ''%'+RzEdit1.Text+'%''';
        UniQuery1.Filtered := true;
      end;

end;

procedure TfmMain.RzToolButton1Click(Sender: TObject);
var
  form : TfmCardEdit;
begin
  if UniQuery1.RecNo = 0 then Exit;
  if not DBConnection.InTransaction then
    DBConnection.StartTransaction;
  //form := TfmCardEdit.Create(nil);
  fmCardEdit.UniQuery1.Locate('card_id',UniQuery1.FieldByName('card_id').AsInteger,[]);
  fmCardEdit.UniQuery1.Edit;
  //form.UniQuery2.ParamByName('id').AsInteger := form.UniQuery1.FieldByName('card_id').AsInteger;
  //form.UniQuery2.Open;
  fmCardEdit.ShowModal;
  UniQuery1.Refresh;
end;

procedure TfmMain.RzToolButton2Click(Sender: TObject);
begin
  if Application.MessageBox('Вы действительно хотите аннулировать карточку. Аннулированная карточка больше не будет отображаться в списке.','Подтверждение',MB_ICONQUESTION+MB_YESNO) = ID_YES then
    begin
      UniQuery1.Edit;
      UniQuery1.FieldByName('card_enable').AsInteger := 0;
      UniQuery1.Post;
      UniQuery1.Refresh;
    end;
end;

procedure TfmMain.RzToolButton3Click(Sender: TObject);
var
  form : TfmCardEdit;
begin
  if not DBConnection.InTransaction then
    DBConnection.StartTransaction;
  form := TfmCardEdit.Create(nil);
  form.UniQuery1.Insert;
  form.UniQuery1.Post;
  form.UniQuery1.Edit;

  form.ShowModal;
  UniQuery1.Refresh;
end;

procedure TfmMain.RzToolButton4Click(Sender: TObject);
begin
  if Application.MessageBox('Удалить запись?','Подтверждение',MB_ICONQUESTION+MB_YESNO) = ID_YES then
    UniQuery1.Delete;
end;

procedure TfmMain.RzToolButton7Click(Sender: TObject);
begin
  fmIssuedDoc.fill;
  fmIssuedDoc.UniQuery1.Refresh;
  fmIssuedDoc.ShowModal;
end;

procedure TfmMain.UniDataSource1DataChange(Sender: TObject; Field: TField);
begin
  if UniQuery1.RecordCount = 0 then
    begin
      RzToolButton1.Enabled := false;
      RzToolButton2.Enabled := false;
      RzToolButton4.Enabled := false;
    end else begin
      RzToolButton1.Enabled := true;
      RzToolButton2.Enabled := true;
      RzToolButton4.Enabled := true;
    end;

end;

end.
