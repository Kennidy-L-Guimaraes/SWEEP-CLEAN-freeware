unit Masterclass;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TMasterClass }

  TMasterClass = Class

    Private
      //Private var

    Public
      //Public var
      class procedure VerifyCheckBox;

  end;

implementation

{ TMasterClass }
uses
units.PrincipalSweep;

class procedure TMasterClass.VerifyCheckBox;
begin
  if Sender = F_Sweep.Cbx_Weekly then
  begin
    if F_Sweep.Cbx_Weekly.Checked then
    begin
      F_Sweep.Cbx_Monthly.Checked := False;
      F_Sweep.Cbx_Fortnightly.Checked := False;
    end;
  end
  else if Sender = F_Sweep.Cbx_Monthly then
  begin
    if F_Sweep.Cbx_Monthly.Checked then
    begin
      F_Sweep.Cbx_Weekly.Checked := False;
      F_Sweep.Cbx_Fortnightly.Checked := False;
    end;
  end
  else if Sender = F_Sweep.Cbx_Fortnightly then
  begin
    if F_Sweep.Cbx_Fortnightly.Checked then
    begin
      F_Sweep.Cbx_Weekly.Checked := False;
      F_Sweep.Cbx_Monthly.Checked := False;
    end;
  end;
end;

end.

