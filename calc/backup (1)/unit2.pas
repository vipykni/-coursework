unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, Math,
  StdCtrls, ExtCtrls, Crt,  AboutWin;

type

  { TForm2 }

  TForm2 = class(TForm)
    But1: TButton;
    MC: TButton;
    MM: TButton;
    MP: TButton;
    But0: TButton;
    Plus: TButton;
    MR: TButton;
    MS: TButton;
    Min: TButton;
    Koren: TButton;
    Expanent: TButton;
    Umnozh: TButton;
    PlusMinus: TButton;
    But2: TButton;
    But20: TButton;
    Del: TButton;
    Pavno: TButton;
    Stepen: TButton;
    OneDelX: TButton;
    Sin1: TButton;
    Cos1: TButton;
    CE: TButton;
    C: TButton;
    Delet: TButton;
    But3: TButton;
    Log1: TButton;
    Ln1: TButton;
    But4: TButton;
    But5: TButton;
    But6: TButton;
    But7: TButton;
    But8: TButton;
    But9: TButton;
    Edit1: TEdit;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    TMainMenu1: TMainMenu;
    procedure But0Click(Sender: TObject);
    procedure But1Click(Sender: TObject);
    procedure But20Click(Sender: TObject);
    procedure But2Click(Sender: TObject);
    procedure But3Click(Sender: TObject);
    procedure But4Click(Sender: TObject);
    procedure But5Click(Sender: TObject);
    procedure But6Click(Sender: TObject);
    procedure But7Click(Sender: TObject);
    procedure But8Click(Sender: TObject);
    procedure But9Click(Sender: TObject);
    procedure CClick(Sender: TObject);
    procedure CEClick(Sender: TObject);
    procedure Cos1Click(Sender: TObject);
    procedure DelClick(Sender: TObject);
    procedure DeletClick(Sender: TObject);
    procedure KorenClick(Sender: TObject);
    procedure Ln1Click(Sender: TObject);
    procedure Log1Click(Sender: TObject);
    procedure MCClick(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MinClick(Sender: TObject);
    procedure MMClick(Sender: TObject);
    procedure MPClick(Sender: TObject);
    procedure MRClick(Sender: TObject);
    procedure MSClick(Sender: TObject);
    procedure OneDelXClick(Sender: TObject);
    procedure PavnoClick(Sender: TObject);
    procedure PlusClick(Sender: TObject);
    procedure PlusMinusClick(Sender: TObject);
    procedure Sin1Click(Sender: TObject);
    procedure ExpanentClick(Sender: TObject);
    procedure StepenClick(Sender: TObject);
    procedure UmnozhClick(Sender: TObject);

  private

  public

  end;

var
  Form2: TForm2;
  x, y,otv, mem :real;
  ard, ard2, bf :integer;



implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.MenuItem4Click(Sender: TObject);
begin
  wAboutWin:=TwAboutWin.Create(Application);
  wAboutWin.Show;
end;
procedure TForm2.But20Click(Sender: TObject);
var i,zi:integer;
begin
  if bf=1 then
  Edit1.Text:=('0,') else begin
  for i:=1 to length(Edit1.Text) do
    if Edit1.Text[i]=(',') then zi:=1;
  if zi<>1 then
  Edit1.Text:=Edit1.Text+(',');end;bf:=0;
end;
procedure TForm2.But0Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(0) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(0) else
  Edit1.Text:=Edit1.Text+IntToStr(0);bf:=0;
end;
procedure TForm2.But1Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(1) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(1) else
  Edit1.Text:=Edit1.Text+IntToStr(1);bf:=0;
end;
procedure TForm2.But2Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(2) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(2) else
  Edit1.Text:=Edit1.Text+IntToStr(2);bf:=0;
end;
procedure TForm2.But3Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(3) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(3) else
  Edit1.Text:=Edit1.Text+IntToStr(3);bf:=0;
end;
procedure TForm2.But4Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(4) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(4) else
  Edit1.Text:=Edit1.Text+IntToStr(4);bf:=0;
end;
procedure TForm2.But5Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(5) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(5)
  else  Edit1.Text:=Edit1.Text+IntToStr(5);bf:=0;
end;
procedure TForm2.But6Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(6) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(6) else
  Edit1.Text:=Edit1.Text+IntToStr(6);bf:=0;
end;
procedure TForm2.But7Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(7) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(7) else
  Edit1.Text:=Edit1.Text+IntToStr(7);bf:=0;
end;
procedure TForm2.But8Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(8) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(8) else
  Edit1.Text:=Edit1.Text+IntToStr(8);bf:=0;
end;
procedure TForm2.But9Click(Sender: TObject);
begin
  if bf=1 then
  Edit1.Text:=IntToStr(9) else
  if Edit1.Text=IntToStr(0) then Edit1.Text:=IntToStr(9) else
  Edit1.Text:=Edit1.Text+IntToStr(9);bf:=0;
end;
procedure TForm2.MCClick(Sender: TObject);
begin
  begin
    mem:=0;MC.Visible:=False;
  end;
end;
procedure TForm2.MRClick(Sender: TObject);
begin
 begin
  Edit1.Text:=FloatToStr(mem);bf:=1;
end;
end;
procedure TForm2.MPClick(Sender: TObject);
begin
 mem:=mem+StrToFloat(Edit1.Text);
 if mem<>0 then MC.Visible:=True else
 MC.Visible:=False;
end;
procedure TForm2.MMClick(Sender: TObject);
begin
 mem:=mem-StrToFloat(Edit1.Text);
 if mem<>0 then MC.Visible:=True else
 MC.Visible:=False;
end;
procedure TForm2.MSClick(Sender: TObject);
begin
 if StrToFloat(Edit1.Text)<>0 then begin
 mem:=StrToFloat(Edit1.Text);MC.Visible:=True;end else begin
 mem:=0;MC.Visible:=False;end;bf:=1;
end;
procedure TForm2.DeletClick(Sender: TObject);
var
  str :String;
begin
  str:=Edit1.Text;
  if str <> '' then
  Delete(str, Length(str),1);
  Edit1.Text := str;
 end;
procedure TForm2.CClick(Sender: TObject);
begin
 x:=0;y:=0;ard:=0;ard2:=0;bf:=0;Edit1.Text:='0';
end;
procedure TForm2.CEClick(Sender: TObject);
begin
 Edit1.Text:='0';
end;
procedure TForm2.PlusMinusClick(Sender: TObject);
var ds:string;
begin
  ds:=Edit1.Text;
  if ds<>'0' then begin
  if Edit1.Text[1]='-' then begin
  delete(ds,1,1);Edit1.Text:=ds;end else begin
  Edit1.Text:='-'+ds;bf:=1;end;
  end;
end;
procedure TForm2.PavnoClick(Sender: TObject);
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
procedure TForm2.PlusClick(Sender: TObject);
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
procedure TForm2.MinClick(Sender: TObject);
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
procedure TForm2.DelClick(Sender: TObject);
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
procedure TForm2.UmnozhClick(Sender: TObject);
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
procedure TForm2.KorenClick(Sender: TObject);
begin
 if StrToFloat(Edit1.Text)<0 then
 Edit1.Text:='Недопустимый ввод' else
 Edit1.Text:=FloatToStr(sqrt(StrToFloat(Edit1.Text)));bf:=1;
end;
procedure TForm2.OneDelXClick(Sender: TObject);
begin
 if StrToFloat(Edit1.Text)=0 then
 Edit1.Text:='Деление на ноль невозможно' else
 Edit1.Text:=FloatToStr(1/StrToFloat(Edit1.Text));bf:=1;
end;
procedure TForm2.StepenClick(Sender: TObject);
var a:real;
begin
  a:= StrToFloat(Edit1.Text);
  a:=sqr(a);
  Edit1.Text:=FloatToStr(a);

end;
procedure TForm2.Log1Click(Sender: TObject);
var a, b:real;
begin
 a:=strtofloat(edit1.Text);
 b:=ln(a)/ln(10);
 edit1.Text:=floattostr(b)
end;
procedure TForm2.Ln1Click(Sender: TObject);
var a, b:real;
begin
 a:=strtofloat(edit1.Text);
 b:=ln(a);
 edit1.Text:=floattostr(b)
end;
procedure TForm2.Sin1Click(Sender: TObject);
var a, b:real;
begin
 a:=strtofloat(edit1.Text);
 b:=sin(a);
 edit1.Text:=floattostr(b)
end;
procedure TForm2.ExpanentClick(Sender: TObject);
var a, b:real;
begin
 a:=strtofloat(edit1.Text);
 b:=exp(a);
 edit1.Text:=floattostr(b)
end;
procedure TForm2.Cos1Click(Sender: TObject);
var a, b:real;
begin
 a:= StrToFloat(Edit1.Text);
 b:=cos(a);
 Edit1.Text:=FloatToStr(b);
 a:=0;
end;
end.

