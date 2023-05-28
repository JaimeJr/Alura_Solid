unit uFuncionario;

interface
  uses uCargos, uExceptions, System.SysUtils;

  type TFuncionario = class
    private
      FNome : String;
      FCPF : String;
      FCargo : tpCargos;
      FSalario : Currency;
      FDtUltimoAjuste : TDateTime;

    function GetNome: String;
    function GetCPF: String;
    function GetCargo: tpCargos;
    function GetSalario: Currency;
    function GetDtUltimoAjuste: TDateTime;

    procedure SetCPF(const Value: String);
    procedure SetNome(const Value: String);
    procedure SetCargo(const Value: tpCargos);
    procedure SetSalario(const Value: Currency);
    procedure SetDtUltimoAjuste(const Value: TDateTime);


    public
      property Nome: String read GetNome write SetNome;
      property CPF: String read GetCPF write SetCPF;
      property Cargo: tpCargos read GetCargo write SetCargo;
      property Salario: Currency read GetSalario write SetSalario;
      property DtUltimoAjuste: TDateTime read GetDtUltimoAjuste write SetDtUltimoAjuste;
      procedure atualizarSalario(novoSalario : Currency);

    constructor Create(nome : String ; CPF : String ; cargo: tpCargos; salario: Currency; dtUltimoReajuste: TDateTime);
  end;

implementation

{ TFuncionario }

procedure TFuncionario.atualizarSalario(novoSalario: Currency);
begin
  FSalario := novoSalario;
  FDtUltimoAjuste := Now;
end;

constructor TFuncionario.Create(nome, CPF: String; cargo: tpCargos; salario: Currency; dtUltimoReajuste: TDateTime);
begin
  FNome := nome;
  FCPF := CPF;
  FCargo := cargo;
  FSalario := salario;
  FDtUltimoAjuste := dtUltimoReajuste;
end;

function TFuncionario.GetCargo: tpCargos;
begin
  Result := FCargo;
end;

function TFuncionario.GetCPF: String;
begin
  Result := FCPF;
end;

function TFuncionario.GetDtUltimoAjuste: TDateTime;
begin
  Result := FDtUltimoAjuste;
end;

function TFuncionario.GetNome: String;
begin
  Result := FNome;
end;

function TFuncionario.GetSalario: Currency;
begin
  Result := FSalario;
end;

procedure TFuncionario.SetCargo(const Value: tpCargos);
begin
  FCargo := Value;
end;

procedure TFuncionario.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TFuncionario.SetDtUltimoAjuste(const Value: TDateTime);
begin
  FDtUltimoAjuste := Value;
end;

procedure TFuncionario.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TFuncionario.SetSalario(const Value: Currency);
begin
  FSalario := Value;
end;

end.
