 CREATE TRIGGER pembayaran_trigger
    -> AFTER INSERT ON pembayaran
    -> FOR EACH ROW
    -> BEGIN
    -> UPDATE pesanan
    -> SET status_pembayaran = 'Lunas'
    -> WHERE pesanan.id_pesanan = NEW.id_pesanan;END;