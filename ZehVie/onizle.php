<?php
include 'baglan.php';

if (isset($_GET['Film_ID'])) {
    $filmid = $_GET['Film_ID'];

    $sql = "SELECT * FROM film WHERE Film_ID = :Film_ID";
    $sorgu = $db->prepare($sql);
    $sorgu->execute(['Film_ID' => $filmid]);
    $film = $sorgu->fetch(PDO::FETCH_ASSOC);

    if (!$filmid) {
        echo "Film bulunamadı.";
        exit;
    }
} else {
    echo "Geçersiz istek.";
    exit;
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $filmad = $_POST['Film_ad'];
    $kategori = $_POST['Kategori_Ad'];
    $filmaciklama = $_POST['Film_Aciklama'];
}
?>

<!doctype html>
<html lang="tr">
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Seyahat Yolculuk Firması">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <title>Film - Film İncelemesi</title>
    
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/onizle.css">
</head>

<body>
<header>
    <div class="container-head">
        <div class="logo">
            <a href="mainmenu.php"><img src="resimler/logo.png"></a>
        </div>
        <div class="menu">
            <ul>
                <li><a href="mainmenu.php">ANA SAYFA</a></li>
                <li><a href="iletisim.php">İletişim - Hakkımızda</a></li>
                <li><a href="index.php">Çıkış Yap</a></li>
            </ul>
        </div>
    </div>
</header>

<div class="container">
    <div class="film-detay">
        <h2>Film Detayları</h2>
        <img src="filmresim/<?php echo $film['Film_Resim']; ?>" style="width:300px;height:450px;">
        <table class="detay-table">
            <tr>
                <th>Film Adı:</th>
                <td><?php echo $film['Film_Ad']; ?></td>
            </tr>
            <tr>
                <th>Kategori:</th>
                <td><?php echo $film['Kategori_Ad']; ?></td>
            </tr>
            <tr>
                <th>Tarih:</th>
                <td><?php echo $film['Film_Tarih']; ?></td>
            </tr>
            <tr>
                <th>Yıldız Oyuncular:</th>
                <td><?php echo $film['Film_Oyuncular']; ?></td>
            </tr>
            <tr>
                <th>Filmin Özeti:</th>
                <td><?php echo $film['Film_Aciklama']; ?></td>
            </tr>
        </table>
    </div>
</div>

</body>
</html>
