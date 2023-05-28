unit ValidacaoPercentualReajuste;

interface
  uses uFuncionario, uExceptions, uiValidacaoReajuste;

  type TValidacaoPercentualReajuste = class(TInterfacedObject, IValidacaoReajuste)
    procedure validar(funcionario : TFuncionario ; valorAumento : Extended);
  end;
implementation

{ TValidacaoPercentualReajuste }

procedure TValidacaoPercentualReajuste.validar(funcionario: TFuncionario; valorAumento: Extended);
var
  percentualReajuste,
  salarioAtual: Currency;
begin
  salarioAtual := funcionario.Salario;
  percentualReajuste := valorAumento / salarioAtual;

  if percentualReajuste > 0.4 then
    raise EReajusteSalarioExceptions.Create('Reajuste nao pode ser superior a 40% do salario!');
end;

end.
