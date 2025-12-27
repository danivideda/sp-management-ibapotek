-- name: GetMinStock :many
SELECT d.kode, d.nama, CAST(d.stok AS DECIMAL(10, 2)), CAST(d.stok_min AS DECIMAL(10, 2)), d.satuan_beli, d.komposisi FROM dobat d 
WHERE CAST(d.stok AS FLOAT) <= CAST(d.stok_min AS FLOAT)
AND d.stok_min > 0
ORDER BY d.nama;