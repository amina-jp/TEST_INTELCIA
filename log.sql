CREATE TABLE IF NOT EXISTS api_logs (
    log_id SERIAL PRIMARY KEY,
    action_type VARCHAR(50) NOT NULL,  -- 'INSERT', 'DELETE', 'UPDATE'
    table_name VARCHAR(50) NOT NULL,   -- Nom de la table concernée
    data_before JSONB,                  -- Données avant modification (en JSON)
    data_after JSONB,                   -- Données après modification (en JSON)
    execution_start TIMESTAMPTZ NOT NULL, -- Début de l'exécution avec le fuseau horaire
    execution_end TIMESTAMPTZ NOT NULL,   -- Fin de l'exécution avec le fuseau horaire
    execution_duration INTERVAL NOT NULL, -- Durée d'exécution
    response_json JSONB,                -- Réponse JSON renvoyée
    executed_by VARCHAR(50) NOT NULL    -- Utilisateur qui a effectué la requête
);
