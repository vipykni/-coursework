unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus, AboutWin, Unit2;;

type

  { TForm1 }

  TForm1 = class(TForm)
    But1: TButton;
    But0: TButton;
    But10: TButton;
    But11: TButton;
    But12: TButton;
    But13: TButton;
    But14: TButton;
    But15: TButton;
    But16: TButton;
    But18: TButton;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    Ravno: TButton;
    But2: TButton;
    But3: TButton;
    But4: TButton;
    But5: TButton;
    But6: TButton;
    But7: TButton;
    But8: TButton;
    But9: TButton;
    Edit1: TEdit;
    MainMenu1: TMainMenu;
    procedure But0Click(Sender: TObject);
    procedure But10Click(Sender: TObject);
    procedure But11Click(Sender: TObject);
    procedure But12Click(Sender: TObject);
    procedure But13Click(Sender: TObject);
    procedure But14Click(Sender: TObject);
    procedure But15Click(Sender: TObject);
    procedure But16Click(Sender: TObject);
    procedure But18Click(Sender: TObject);
    procedure But1Click(Sender: TObject);
    procedure But2Click(Sender: TObject);
    procedure But3Click(Sender: TObject);
    procedure But4Click(Sender: TObject);
    procedure But5Click(Sender: TObject);
    procedure But6Click(Sender: TObject);
    procedure But7Click(Sender: TObject);
    procedure But8Click(Sender: TObject);
    procedure But9Click(Sender: TObject);
    procedure RavnoClick(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;
   x, y,otv, mem :real;
  ard, ard2, bf :integer;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.But0Click(Sender: TObject);

  begin
    if bf=1 then
    Edit1.Text:=IntToStr(0) else
    if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(0) else
    Edit1.Text:=Edit1.Text+IntToStr(0);bf:=0;
end;

procedure TForm1.But10Click(Sender: TObject);

  var i,zi:integer;
  begin
    if bf=1 then
    Edit1.Text:=('0,') else begin
    for i:=1 to length(Edit1.Text) do
      if Edit1.Text[i]=(',') then zi:=1;
    if zi<>1 then
    Edit1.Text:=Edit1.Text+(',');end;bf:=0;
end;

procedure TForm1.But11Click(Sender: TObject);
  var
    str :String;
  begin
    str:=Edit1.Text;
    if str <> '' then
    Delete(str, Length(str),1);
    Edit1.Text := str;

end;

procedure TForm1.But12Click(Sender: TObject);
begin
  if ard>0 then  begin
    x:=StrToFloat(Edit1.Text);
    if ard=1 then
    otv:=y+x;
    if ard=2 then
    otv:=y-x;
    if ard=3 then
    otv:=y*x;
    if ard=4 then
    otv:=y/x;
    ard:=4;y:=otv;Edit1.Text:=FloatToStr(otv);bf:=1;end else
    y:=StrToFloat(Edit1.Text);
    ard:=4;bf:=1;
end;

procedure TForm1.But13Click(Sender: TObject);
begin
 Edit1.Text:='0';
end;

procedure TForm1.But14Click(Sender: TObject);
begin
  if ard>0 then  begin
  x:=StrToFloat(Edit1.Text);
  if ard=1 then
  otv:=y+x;
  if ard=2 then
  otv:=y-x;
  if ard=3 then
  otv:=y*x;
  if ard=4 then
  otv:=y/x;
  ard:=1;y:=otv;Edit1.Text:=FloatToStr(otv);bf:=1;end
  else
  y:=StrToFloat(Edit1.Text);
  ard:=1;bf:=1;
end;

procedure TForm1.But15Click(Sender: TObject);
begin
  if ard>0 then  begin
    x:=StrToFloat(Edit1.Text);
    if ard=1 then
    otv:=y+x;
    if ard=2 then
    otv:=y-x;
    if ard=3 then
    otv:=y*x;
    if ard=4 then
    otv:=y/x;
    ard:=3;y:=otv;Edit1.Text:=FloatToStr(otv);bf:=1;end else
    y:=StrToFloat(Edit1.Text);
    ard:=3;bf:=1;
end;

procedure TForm1.But16Click(Sender: TObject);
begin
  if ard>0 then  begin
 x:=StrToFloat(Edit1.Text);
 if ard=1 then
 otv:=y+x;
 if ard=2 then
 otv:=y-x;
 if ard=3 then
 otv:=y*x;
 if ard=4 then
 otv:=y/x;
 ard:=2;y:=otv;Edit1.Text:=FloatToStr(otv);bf:=1;end
 else
 y:=StrToFloat(Edit1.Text);
 ard:=2;bf:=1;
end;

procedure TForm1.But18Click(Sender: TObject);
begin
 x:=0;y:=0;ard:=0;ard2:=0;bf:=0;Edit1.Text:='0';
end;

procedure TForm1.But1Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(1) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(1) else
  Edit1.Text:=Edit1.Text+IntToStr(1);bf:=0;
end;

procedure TForm1.But2Click(Sender: TObject);
begin
  if bf=1 then
    Edit1.Text:=IntToStr(2) else
    if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(2) else
    Edit1.Text:=Edit1.Text+IntToStr(2);bf:=0;
end;

procedure TForm1.But3Click(Sender: TObject);
begin
  if bf=1 then
    Edit1.Text:=IntToStr(3) else
    if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(3) else
    Edit1.Text:=Edit1.Text+IntToStr(3);bf:=0;
end;

procedure TForm1.But4Click(Sender: TObject);
begin
 if bf=1 then
  Edit1.Text:=IntToStr(4) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(4) else
  Edit1.Text:=Edit1.Text+IntToStr(4);bf:=0;
end;

procedure TForm1.But5Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(5) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(5)
  else  Edit1.Text:=Edit1.Text+IntToStr(5);bf:=0;
end;

procedure TForm1.But6Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(6) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(6) else
  Edit1.Text:=Edit1.Text+IntToStr(6);bf:=0;
end;

procedure TForm1.But7Click(Sender: TObject);
begin
 if bf=1 then
  Edit1.Text:=IntToStr(7) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(7) else
  Edit1.Text:=Edit1.Text+IntToStr(7);bf:=0;
end;

procedure TForm1.But8Click(Sender: TObject);
begin
 if bf=1 then
  Edit1.Text:=IntToStr(8) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(8) else
  Edit1.Text:=Edit1.Text+IntToStr(8);bf:=0;
end;

procedure TForm1.But9Click(Sender: TObject);
begin
 if bf=1 then
  Edit1.Text:=IntToStr(9) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(9) else
  Edit1.Text:=Edit1.Text+IntToStr(9);bf:=0;
end;

procedure TForm1.RavnoClick(Sender: TObject);
begin
 otv:=StrToFloat(Edit1.Text);
  if ard=0 then begin
    y:=StrToFloat(Edit1.Text);
    if ard2=1 then
    otv:=y+x;
    if ard2=2 then
    otv:=y-x;
    if ard2=3 then
    otv:=y*x;
    if ard2=4 then
    otv:=y/x;end
  else
  begin
    x:=StrToFloat(Edit1.Text);
    if ard=1 then
    otv:=y+x;
    if ard=2 then
    otv:=y-x;
    if ard=3 then
    otv:=y*x;
    if ard=4 then
    otv:=y/x;
    ard2:=ard;ard:=0;
  end;
  Edit1.Text:=FloatToStr(otv);bf:=1;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
 wAboutWin:=TwAboutWin.Create(Application);
 wAboutWin.Show;
end;
procedure TForm1.MenuItem2Click(Sender: TObject);
begin
 Form2:=TForm2.Create(Application);
 Form2.Show;

end;




end.

