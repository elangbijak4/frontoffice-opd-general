
  <link rel='stylesheet' type='text/css' href='./slick/slick.css'>
  <link rel='stylesheet' type='text/css' href='./slick/slick-theme.css'>
  <script src='./slick/jquery-2.2.0.min.js' type='text/javascript'></script>
  <script src='./slick/slick.js' type='text/javascript' charset='utf-8'></script>
  <style type='text/css'>
    .slider {
        width: 95%;
        margin: 100px auto;
    }
    .slick-slide img {
      width: 100%;
    }
    .slick-prev:before,
    .slick-next:before {
      color: gray;
    }
    .slick-slide {
      transition: all ease-in-out .3s;
      opacity: .2;
      margin: 0px 20px;
    }
    .slick-active {
      opacity: .5;
    }
    .slick-current {
      opacity: 1;
    }
  </style>

  <section class='lazy slider' data-sizes='50vw'>
    <div>
      <img data-lazy='http://placehold.it/350x300?text=1-350w' data-srcset='http://placehold.it/650x300?text=1-650w 650w, http://placehold.it/960x300?text=1-960w 960w' data-sizes='100vw'>
      <div align=center>ok ini keterangan gambar?</div>
    </div>
    <div>
      <img data-lazy='http://placehold.it/350x300?text=2-350w' data-srcset='http://placehold.it/650x300?text=2-650w 650w, http://placehold.it/960x300?text=2-960w 960w' data-sizes='100vw'>
      <div align=center>ok ini keterangan gambar?</div>
    </div>
  </section>
  <script type='text/javascript'>
    $(document).on('ready', function() {
      $('.lazy').slick({
        lazyLoad: 'ondemand', // ondemand progressive anticipated
        infinite: true
      });
    });
</script>
