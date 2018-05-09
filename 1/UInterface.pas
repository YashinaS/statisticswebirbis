unit UInterface;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, JPEG;

procedure FakeButton_MouseMove(Sender: TObject);
procedure FakeButton_MouseLeave(Sender: TObject);

procedure ButtonAuthorizationMove;
procedure ButtonAuthorizationLeave;

implementation

uses UStatistic, UAuthorization;

procedure FakeButton_MouseMove(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    1:
      form2.Statistic.Font.Color := RGB(255, 255, 255);
    2:
      form2.Diagramm.Font.Color := RGB(255, 255, 255);
    3:
      form2.Updatebase.Font.Color := RGB(255, 255, 255);
    4:
      form2.Exit.Font.Color := RGB(255, 255, 255);

  end;
end;

procedure FakeButton_MouseLeave(Sender: TObject);
begin
  case TComponent(Sender).Tag of
    1:
      form2.Statistic.Font.Color := RGB(179, 182, 203);
    2:
      form2.Diagramm.Font.Color := RGB(179, 182, 203);
    3:
      form2.Updatebase.Font.Color := RGB(179, 182, 203);
    4:
      form2.Exit.Font.Color := RGB(179, 182, 203);

  end;
end;

procedure ButtonAuthorizationMove;
begin
  form1.enter.Color := RGB(104, 111, 155);
  form2.Countbutton.Color := RGB(104, 111, 155);
end;

procedure ButtonAuthorizationLeave;
begin
  form2.Countbutton.Color := RGB(62, 65, 104);
  form1.enter.Color := RGB(62, 65, 104);
end;

end.
