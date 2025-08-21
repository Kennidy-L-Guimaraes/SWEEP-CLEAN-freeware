unit Units.PrincipalSweep;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  Buttons, units.notify.sweep.lfm, MasterClass;

type

  { TF_SWEEP }

  TF_SWEEP = class(TForm)
    Cbx_Prefetch: TCheckBox;
    Cbx_Bin: TCheckBox;
    Cbx_Temp: TCheckBox;
    Cbx_logs: TCheckBox;
    Cbx_SoftwareDistribution: TCheckBox;
    Cbx_Appdata: TCheckBox;
    Cbx_Downloads: TCheckBox;
    Cbx_Weekly: TCheckBox;
    Cbx_Fortnightly: TCheckBox;
    Cbx_Monthly: TCheckBox;
    I_LogoSWEEP: TImage;
    L_SWEEP: TLabel;
    L_Automatic_Scheduled: TLabel;
    P_Background: TPanel;
    P_Button_Sweep: TPanel;
    P_Checkeds: TPanel;
    SB_Sweep: TSpeedButton;
    TrayIcon: TTrayIcon;
    procedure Cbx_FortnightlyChange(Sender: TObject);
    procedure Cbx_MonthlyChange(Sender: TObject);
    procedure Cbx_WeeklyChange(Sender: TObject);
    procedure CheckBox2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure L_SWEEPClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure P_CheckedsClick(Sender: TObject);
    procedure SB_SweepClick(Sender: TObject);
  private

  public

  end;

var
  F_SWEEP: TF_SWEEP;

implementation

{$R *.lfm}

{ TF_SWEEP }

procedure TF_SWEEP.ListBox1Click(Sender: TObject);
begin

end;

procedure TF_SWEEP.P_CheckedsClick(Sender: TObject);
begin

end;

procedure TF_SWEEP.SB_SweepClick(Sender: TObject);
begin
  F_Notify.show;

end;

procedure TF_SWEEP.CheckBox2Change(Sender: TObject);
begin

end;

procedure TF_SWEEP.Cbx_WeeklyChange(Sender: TObject);
begin
  TMasterClass.VerifyCheckBox(Sender);;
end;

procedure TF_SWEEP.Cbx_FortnightlyChange(Sender: TObject);
begin
  TMasterClass.VerifyCheckBox(Sender);;
end;

procedure TF_SWEEP.Cbx_MonthlyChange(Sender: TObject);
begin
  TMasterClass.VerifyCheckBox(Sender);
end;

procedure TF_SWEEP.FormCreate(Sender: TObject);
const
  FORM_WIDTH   = 340;
  FORM_HEIGHT  = 480;
begin
  F_SWEEP.Constraints.MaxWidth  := FORM_WIDTH;
  F_SWEEP.Constraints.MaxHeight := FORM_HEIGHT;
end;

procedure TF_SWEEP.L_SWEEPClick(Sender: TObject);
begin

end;

end.

