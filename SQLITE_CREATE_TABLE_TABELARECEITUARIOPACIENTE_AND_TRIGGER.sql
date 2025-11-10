------------------------------------------------------
-- 3. Tabela de Receituários
------------------------------------------------------
CREATE TABLE IF NOT EXISTS tabelaReceituarioPaciente (
    idReceituario INTEGER PRIMARY KEY AUTOINCREMENT,
    idPaciente INTEGER NOT NULL,
    dataHoje TEXT NOT NULL,
    documentoPaciente TEXT NOT NULL,
    receituario TEXT DEFAULT '',

    FOREIGN KEY (idPaciente) REFERENCES tabelaPaciente(idPaciente)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

------------------------------------------------------
-- 4. Gatilho automático (Trigger)
-- Cria um receituário em branco sempre que um prontuário for inserido
------------------------------------------------------
CREATE TRIGGER IF NOT EXISTS trg_cria_receituario_automatico
AFTER INSERT ON tabelaProntuarioPaciente
FOR EACH ROW
BEGIN
    INSERT INTO tabelaReceituarioPaciente (idPaciente, dataHoje, documentoPaciente, receituario)
    VALUES (
        NEW.idPaciente,
        NEW.dataHoje,
        (SELECT documentoPaciente FROM tabelaPaciente WHERE idPaciente = NEW.idPaciente),
        ''
    );
END;