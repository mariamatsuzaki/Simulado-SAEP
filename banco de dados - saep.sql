USE saep_db;
INSERT INTO Usuario (nome, email, senha) VALUES
('Wellington', 'wellington@sistema.com', 'senha123'),
('Admin Almoxarifado', 'admin@sistema.com', 'admin123'),
('Operador', 'operador@sistema.com', 'op123');

INSERT INTO Produto (codigo, descricao, quantidade, valor_unitario, estoque_minimo) VALUES
('PRD001', 'roda', 100, 35.50, 20),
('PRD002', 'ferramenta', 50, 120.00, 10),
('PRD003', 'motor', 200, 25.90, 50);

INSERT INTO Movimentacao (produto_id, usuario_id, tipo, quantidade) VALUES
(1, 1, 'ENTRADA', 100),
(2, 2, 'ENTRADA', 50),
(3, 3, 'ENTRADA', 200);

CREATE VIEW vw_estoque AS
SELECT
    codigo,
    descricao,
    quantidade AS quantidade_registrada,
    valor_unitario,
    (quantidade * valor_unitario) AS valor_total_item
FROM Produto;