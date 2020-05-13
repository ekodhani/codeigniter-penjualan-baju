<!-- Page info -->
<div class="page-top-info">
    <div class="container">
        <h4><?= $title; ?></h4>
        <div class="site-pagination">
            <a href="<?= base_url('user'); ?>">Menu Utama</a> /
            <a href="<?= base_url('user/order'); ?>"><?= $title; ?></a>
        </div>
    </div>
</div>
<!-- Page info end -->

<!-- Contact section -->
<section class="contact-section mb-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 contact-info">
                <h3>Get in order</h3>
                <p><?= $contact['alamat']; ?></p>
                <p><?= $contact['no_handphone']; ?></p>
                <p><?= $contact['email']; ?></p>
                <div class="contact-social">
                    <a href="https://www.instagram.com/ajagijig_clothing/"><i class="fa fa-instagram"></i></a>
                    <a href="https://www.facebook.com/Ajag-Ijig-Clothing-2672006662814136/"><i class="fa fa-facebook"></i></a>
                    <a href="https://api.whatsapp.com/send?phone=089619506748"><i class="fa fa-whatsapp"></i></a>
                </div>

                <img src="<?= base_url('assets/image/icons/list.jpg'); ?>">
            </div>
        </div>
    </div>
    <div class="map"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.8337378373303!2d106.73971921430959!3d-6.153016662022855!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f726b40df083%3A0xeb2d5a4fb97f57cf!2sAjag%20Ijig%20Clothing!5e0!3m2!1sen!2sid!4v1589016891859!5m2!1sen!2sid" width="400" height="300" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe></div>
</section>
<!-- Contact section end -->

<section class="product-filter-section">
    <div class="container">
        <div class="section-title">
            <h2>Cetak Kaos Anda dalam Tiga Langkah</h2>
        </div>

        <div class="row text-center">
            <div class="col-lg-4 col-sm-12">
                <img src="<?= base_url('assets/image/icons/prepare.png'); ?>">
                <h6 class="mb-3 mt-3">Prepare Your Design</h6>
                <ul class="text-left">
                    <li class="mb-4">Kirim design anda dalam format .AI atau .EPS</li>
                    <li class="mb-4">Jika anda tidak memiliki format .AI atau .EPS, harap kirim design anda dalam format .PNG atau JPEG high resolution kami akan membantu convert design anda</li>
                    <li class="mb-4">Tidak ada minimum order</li>
                </ul>
            </div>
            <div class="col-lg-4 col-sm-12">
                <img src="<?= base_url('assets/image/icons/send.png'); ?>">
                <h6 class="mb-3 mt-3">Send Your Email</h6>
                <ul class="text-left">
                    <li class="mb-4">Kirim design anda ke ajag@ijig.com, beserta warna, ukuran, dan bahan yang akan dipakai.</li>
                    <li class="mb-4">Jangan lupa dicantumkan ukuran yang akan dicetak. misalnya:25 x 25 cm.</li>
                    <li class="mb-4">Setelah itu kami akan membalas email anda beserta total harga yang harus dibayarkan.</li>
                </ul>
            </div>
            <div class="col-lg-4 col-sm-12">
                <img src="<?= base_url('assets/image/icons/box.png'); ?>">
                <h6 class="mb-3 mt-3">Get Your Order</h6>
                <ul class="text-left">
                    <li class="mb-4">Setelah anda melakukan pembayaran, Kami akan memproses orderan anda</li>
                    <li class="mb-4">Waktu produksi: 2-3 hari.</li>
                </ul>
            </div>
        </div>
    </div>
</section>