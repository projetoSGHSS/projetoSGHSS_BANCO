------------------------------------------------------
-- 5. Tabela de Cadastro de Usuários do Sistema
------------------------------------------------------
CREATE TABLE IF NOT EXISTS tabelaCadastroUsuario (
    idUsuario INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeUsuario TEXT NOT NULL,
	tipoProfissional TEXT,
	matriculaProfissional TEXT,
	senhaUsuario TEXT
);