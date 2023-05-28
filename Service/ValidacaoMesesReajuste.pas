unit ValidacaoMesesReajuste;

interface
  uses uFuncionario, uExceptions, uiValidacaoReajuste, DateUtils, SysUtils;

  type TValidacaoMesesReajuste = class(TInterfacedObject, IValidacaoReajuste)
    procedure validar(funcionario : TFuncionario ; valorAumento : Extended);
  end;
implementation

{ TValidacaoPercentualReajuste }

procedure TValidacaoMesesReajuste.validar(funcionario: TFuncionario; valorAumento: Extended);
var
  dtUltimoReajuste,
  dtAtual : TDateTime;

  mesesUltimoReajuste : Integer;
begin
  dtAtual := Now;
  dtUltimoReajuste := funcionario.DtUltimoAjuste;

  mesesUltimoReajuste := MonthsBetween(dtAtual, dtUltimoReajuste);

  if mesesUltimoReajuste < 6 then
    raise EReajusteSalarioExceptions.Create('Intervalo menor que seis meses!');
end;

end.
