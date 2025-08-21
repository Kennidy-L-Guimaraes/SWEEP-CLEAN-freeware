program Sweep;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, datetimectrls, Units.PrincipalSweep, units.notify.sweep.lfm, 
Masterclass
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TF_SWEEP, F_SWEEP);
  Application.CreateForm(TF_Notify, F_Notify);
  Application.Run;
end.

