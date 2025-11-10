-- Ativa suporte a chaves estrangeiras
PRAGMA foreign_keys = ON;

------------------------------------------------------
-- 1. Tabela de Pacientes
------------------------------------------------------
CREATE TABLE IF NOT EXISTS tabelaPaciente (
    idPaciente INTEGER PRIMARY KEY AUTOINCREMENT,
    nomePaciente TEXT NOT NULL,
    nomeSocial TEXT,
    dataNascimento TEXT,
    idadePaciente INTEGER,
    dataHoje TEXT DEFAULT (strftime('%d/%m/%Y', 'now', 'localtime')),
    documentoPaciente TEXT,
    profissaoPaciente TEXT,
    naturalidadePaciente TEXT,
    nacionalidadePaciente TEXT,
    enderecoPaciente TEXT,
    cepEnderecoPaciente TEXT,
    telefonePaciente TEXT,
    outroContatoPaciente TEXT,
    convenioPaciente TEXT,
    matriculaConvenioPaciente TEXT
);
