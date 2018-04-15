unit UWIZPayloadContentOverride;

{$mode delphi}
{$modeswitch nestedprocvars}

{ Copyright (c) 2018 Sphere 10 Software (http://www.sphere10.com/)

  Distributed under the MIT software license, see the accompanying file LICENSE
  or visit http://www.opensource.org/licenses/mit-license.php.

  Acknowledgements:
  Ugochukwu Mmaduekwe - main developer
  Herman Schoenfeld - designer
}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons, UCommon, UCommon.Collections,
  UWizard, UWIZSelectSignerOverride, UWIZModels;

type

  { TWIZPayloadContentOverride }

  TWIZPayloadContentOverride = class(TWizardForm<TWIZOperationsModel>)
    grpPayload: TGroupBox;
    Label1: TLabel;
    mmoPayload: TMemo;
    paPayload: TPanel;
  public
    procedure OnNext; override;
  end;


implementation

{$R *.lfm}

uses
  UAccounts, UUserInterface;

{ TWIZPayloadContentOverride }

procedure TWIZPayloadContentOverride.OnNext;
begin
  Model.Payload.Content := mmoPayload.Lines.Text;
   UpdatePath(ptInject, [TWIZSelectSignerOverride]);
end;

end.
