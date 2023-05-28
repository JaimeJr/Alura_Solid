program Solid;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  uFuncionario in 'Classes\uFuncionario.pas',
  uCargos in 'Classes\uCargos.pas',
  uExceptions in 'Biblioteca\uExceptions.pas',
  ReajusteService in 'Service\ReajusteService.pas',
  ValidacaoPercentualReajuste in 'Service\ValidacaoPercentualReajuste.pas',
  ValidacaoMesesReajuste in 'Service\ValidacaoMesesReajuste.pas',
  uiValidacaoReajuste in 'Interfaces\uiValidacaoReajuste.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
