<?php

require_once "veritabani.php";

?>

<!doctype html>
<html lang"tr">
    <head>
        <meta charset="utf-8">
        <meta name="keywords" content="Sehayat Yolculuk Firması">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <title>Zehravie - Ana Sayfa</title>
         
        <link rel="stylesheet" type="text/css" href="css/reset.css">
        <link rel="stylesheet" type="text/css" href="css/maiiiinmenu.css">
    </head>
    
    <body>
        <header>
            <div class="container-head">
                <div class="logo">
                    <a href="mainmenu.php"><img src="resimler/logo.png"></a>
                </div>
                <div class="menu">
                    <u1>
                        
                        <li><a href="mainmenu.php">ANA SAYFA</a></li>
                        <li><a href="iletisim.php">İletişim</a></li>
                        <li><a href="hakkimizda.php">Hakkımızda</a></li>                        
                        <li><a href="index.php">Çıkış Yap</a></li>
                    
                    </u1>
                </div>
            </div>
        </header>
        
        <section id="features" class="film-list">
                        <?php
                        $db=new \database();
                            $myQuery=$db->TableOperations("SELECT * FROM film");

                            foreach($myQuery as $items)
                            {
                                ?>

                                    <div class="film">
                                        <img src="filmresim/<?php echo $items['Film_Resim']; ?>" width="250px;" height="350px;">
                                            <div class="item-text">

                                                <?php

                                                $resim=$items["Film_Resim"];
                                                echo "<br>".$items["Film_Ad"]."<br><br>".$items["Kategori_Ad"]."<br><br>";

                                                ?>
                                                <div class="btn-group">
                                                    <a href="onizle.php?Film_ID=<?=$items['Film_ID']?>" class="btn btn-success">Filmi İncele</a>
                                                </div>
                                            </div>
                                    </div>


                                <br>

                                <?php
                            }
                        ?>
            </section>
        
    </body>
</html>