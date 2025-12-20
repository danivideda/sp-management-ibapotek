-- name: GetMinStock :many
SELECT d.kode, d.nama, d.stok, d.stok_min, d.komposisi FROM dobat d 
WHERE CAST(d.stok AS FLOAT) <= CAST(d.stok_min AS FLOAT)
AND d.stok_min > 0
ORDER BY d.nama;