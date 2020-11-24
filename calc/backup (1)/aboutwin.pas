unit AboutWin;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TwAboutWin }

  TwAboutWin = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  wAboutWin:TwAboutWin;

implementation

{$R *.lfm}

procedure TwAboutWin.FormCreate(Sender: TObject);
begin
  Label1.Caption:=('Калькулятор'+chr(13)
 +'Автор: Кыхтева Мария'+chr(13)
 +'И-72');
end;
procedure TwAboutWin.Button1Click(Sender: TObject);
begin
wAboutWin.Close();
end;

end.

