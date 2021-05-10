CREATE VIEW SpotifyClone.historico_reproducao_usuarios AS
SELECT
(SELECT user_name FROM SpotifyClone.users) AS usuario,
(SELECT * FROM SpotifyClone.history) AS nome
