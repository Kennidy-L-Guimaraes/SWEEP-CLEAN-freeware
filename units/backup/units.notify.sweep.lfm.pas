unit units.notify.sweep.lfm;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  DateTimePicker;

type

  { TF_Notify }

  TF_Notify = class(TForm)
    Btn_Close: TButton;
    btn_yes: TButton;
    Lbl_Attention: TLabel;
    procedure Btn_CloseClick(Sender: TObject);
    procedure btn_yesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private

  public
    function FolderFile: string;
  end;

var
  F_Notify: TF_Notify;


implementation

{$R *.lfm}

{ TF_Notify }
uses
  Units.PrincipalSweep;

procedure TF_Notify.FormCreate(Sender: TObject);
begin

end;

procedure TF_Notify.Btn_CloseClick(Sender: TObject);
begin
F_Notify.close;
end;

procedure TF_Notify.btn_yesClick(Sender: TObject);
begin
  Showmessage('Scheduling complete. The following folders will have their files deleted: ' + FolderFile);
end;

procedure TF_Notify.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
end;

procedure TF_Notify.Panel1Click(Sender: TObject);
begin

end;

procedure TF_Notify.TimerTimer(Sender: TObject);
begin

end;

function TF_Notify.FolderFile: string;
Var
Path : string;
begin
   if F_Sweep.Cbx_Bin.Checked then
   Path := ' - ' + F_Sweep.Cbx_Bin.Caption;
   if F_SWEEP.Cbx_Downloads.Checked then
   Path := Path + ' - ' + F_SWEEP.Cbx_Downloads.Caption;
   if F_SWEEP.Cbx_Appdata.Checked then
   Path := Path + ' - ' + F_SWEEP.Cbx_Appdata.Caption;
   If F_SWEEP.Cbx_logs.Checked then
   Path := Path + ' - ' + F_SWEEP.Cbx_logs.Caption;
   if F_SWEEP.Cbx_Prefetch.Checked then
   Path := Path + ' - ' + F_SWEEP.Cbx_Prefetch.Caption;
   If F_SWEEP.Cbx_SoftwareDistribution.Checked then
   Path := Path + ' - ' + F_SWEEP.Cbx_SoftwareDistribution.Caption;
   If F_SWEEP.Cbx_Temp.Checked then
   Path := Path + ' - ' + F_SWEEP.Cbx_Temp.Caption;
   Result := Path;
end;

end.

