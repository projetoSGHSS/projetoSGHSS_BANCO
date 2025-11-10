------------------------------------------------------
-- 2. Tabela de Prontuários
------------------------------------------------------
CREATE TABLE IF NOT EXISTS tabelaProntuarioPaciente (
    idProntuario INTEGER PRIMARY KEY AUTOINCREMENT,
    idPaciente INTEGER NOT NULL,
    queixasClinicasPaciente TEXT,
    anamnesePaciente TEXT,
	examesRealizadosPaciente TEXT,
    exameClinicoPaciente TEXT,
    evolucaoPaciente TEXT,
    dataHoje TEXT DEFAULT (strftime('%d/%m/%Y', 'now', 'localtime')),
    
    FOREIGN KEY (idPaciente) REFERENCES tabelaPaciente(idPaciente)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);