<?php
session_start();
if (!isset($_SESSION['username']) || $_SESSION['posisi'] != 'staff') {
    header("Location: ../../auth/restricted.php");
    exit();
}

include '../../config/connection.php';
include '../staff/header.php';

$pegawaiId = trim($_SESSION['employee_id']); // Ambil ID pegawai dari session

// Ambil data jenis layanan salon untuk ditampilkan sebagai checkbox
$sql = "SELECT * FROM JenisLayananSalon";
$stmt = oci_parse($conn, $sql);
oci_execute($stmt);

$jenisLayananSalon = [];
while ($row = oci_fetch_assoc($stmt)) {
    $jenisLayananSalon[] = $row;
}
oci_free_statement($stmt);

// Ambil data hewan untuk dropdown
$sql = "SELECT h.ID, h.Nama AS NamaHewan, h.Spesies, ph.Nama AS NamaPemilik
        FROM Hewan h
        JOIN PemilikHewan ph ON h.PemilikHewan_ID = ph.ID";
$stmt = oci_parse($conn, $sql);
oci_execute($stmt);

$hewanList = [];
while ($row = oci_fetch_assoc($stmt)) {
    $hewanList[] = $row;
}
oci_free_statement($stmt);

// Proses tambah layanan salon
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['action']) && $_POST['action'] === 'add') {
    $tanggal = $_POST['tanggal'];
    $totalBiaya = $_POST['total_biaya'];
    $status = $_POST['status'];
    $hewan_id = $_POST['hewan_id'];
    $jenisLayananArray = $_POST['jenis_layanan'];

    // Konversi array menjadi string untuk VARRAY
    $jenisLayananString = "ArrayJenisLayananSalon(" . implode(',', $jenisLayananArray) . ")";

    $sql = "INSERT INTO LayananSalon (Tanggal, TotalBiaya, Status, JenisLayanan, Pegawai_ID, Hewan_ID) 
            VALUES (TO_DATE(:tanggal, 'YYYY-MM-DD'), :totalBiaya, :status, $jenisLayananString, :pegawai_id, :hewan_id)";

    $stmt = oci_parse($conn, $sql);
    oci_bind_by_name($stmt, ':tanggal', $tanggal);
    oci_bind_by_name($stmt, ':totalBiaya', $totalBiaya);
    oci_bind_by_name($stmt, ':status', $status);
    oci_bind_by_name($stmt, ':pegawai_id', $pegawaiId);
    oci_bind_by_name($stmt, ':hewan_id', $hewan_id);

    if (oci_execute($stmt)) {
        $message = "Layanan salon berhasil ditambahkan.";
    } else {
        $message = "Gagal menambahkan layanan salon.";
    }
    oci_free_statement($stmt);
    oci_close($conn);
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Tambah Layanan Salon</title>
    <link rel="stylesheet" href="../../public/css/index.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script>
        function updateTotal() {
            const checkboxes = document.querySelectorAll('input[name="jenis_layanan[]"]:checked');
            let total = 0;
            checkboxes.forEach((checkbox) => {
                const biaya = parseFloat(checkbox.getAttribute('data-biaya'));
                if (!isNaN(biaya)) {
                    total += biaya;
                }
            });
            document.getElementById('total_biaya').value = total;
        }
    </script>
</head>

<body>
    <div class="container mt-5">
        <h1>Tambah Layanan Salon</h1>
        <?php if (isset($message)): ?>
            <div class="alert alert-info"><?= htmlentities($message); ?></div>
        <?php endif; ?>

        <form method="POST">
            <input type="hidden" name="action" value="add">
            <div class="mb-3">
                <label for="tanggal" class="form-label">Tanggal</label>
                <input type="date" class="form-control" id="tanggal" name="tanggal" required>
            </div>
            <div class="mb-3">
                <label for="total_biaya" class="form-label">Total Biaya</label>
                <input type="number" class="form-control" id="total_biaya" name="total_biaya" readonly>
            </div>
            <div class="mb-3">
                <label for="status" class="form-label">Status</label>
                <select class="form-select" id="status" name="status" required>
                    <option value="Selesai">Selesai</option>
                    <option value="Proses">Emergency</option>
                    <option value="Batal">Batal</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="hewan_id" class="form-label">Hewan</label>
                <select class="form-select" id="hewan_id" name="hewan_id" required>
                    <?php foreach ($hewanList as $hewan): ?>
                        <option value="<?= $hewan['ID']; ?>">
                            <?= htmlentities($hewan['NAMAHEWAN'] . ' (' . $hewan['SPESIES'] . ') - ' . $hewan['NAMAPEMILIK']); ?>
                        </option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="mb-3">
                <label for="jenis_layanan" class="form-label">Jenis Layanan</label>
                <div>
                    <?php foreach ($jenisLayananSalon as $layanan): ?>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" name="jenis_layanan[]"
                                id="layanan_<?= $layanan['ID']; ?>" value="<?= $layanan['ID']; ?>"
                                data-biaya="<?= $layanan['BIAYA']; ?>" onclick="updateTotal()">
                            <label class="form-check-label" for="layanan_<?= $layanan['ID']; ?>">
                                <?= htmlentities($layanan['NAMA']); ?> - Biaya: Rp <?= number_format($layanan['BIAYA'], 0, ',', '.'); ?>
                            </label>
                        </div>
                    <?php endforeach; ?>
                </div>
            </div>
            <button type="submit" class="btn btn-primary">Tambah Layanan Salon</button>
        </form>
    </div>
</body>

</html>