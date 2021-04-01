      <header class="section rd-navbar-wrap" data-preset='{"title":"Navbar Default","category":"header","reload":true,"id":"navbar-default"}'>
        <nav class="rd-navbar" data-rd-navbar='{"responsive":{"1200":{"stickUpOffset":"50px"}}}'>
          <div class="navbar-container">
            <div class="navbar-cell">
              <div class="navbar-panel">
                <button class="navbar-switch novi-icon custom-font-menu" data-multi-switch='{"targets":".rd-navbar","scope":".rd-navbar","isolate":"[data-multi-switch]"}'></button>
                <div class="navbar-logo"><a class="navbar-logo-link" href="<?php echo base_url();?>"><img class="navbar-logo-inverse" src="<?php echo base_url();?>theme/images/logojoglo.png" alt="Teachzy" width="70" height="80"/></a></div>
              </div>
            </div>
            <div class="navbar-spacer"></div>
            <div class="navbar-cell navbar-sidebar">
              <ul class="navbar-navigation rd-navbar-nav">
                <li class="navbar-navigation-root-item active"><a class="navbar-navigation-root-link" href="#">Home</a>
                </li>
                <li class="navbar-navigation-root-item"><a class="navbar-navigation-root-link" href="#">Tentang Kami</a>
                  <ul class="navbar-navigation-dropdown rd-navbar-dropdown">

                    <li class="navbar-navigation-dropdown-item"><a class="navbar-navigation-dropdown-link" href="#">Kesatriaan Entrepreneur Indonesia</a>
                      <ul class="navbar-navigation-dropdown rd-navbar-dropdown">
                        <li class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="<?php echo base_url();?>visi_misi">Visi & Misi</a>
                        </li>
                        <li class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="#">Struktur Organisasi</a>
                        </li>
                        <li><a class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="#">Program & Kegiatan</a>
                        </li>
                      </ul>
                    </li>

                    <li class="navbar-navigation-dropdown-item"><a class="navbar-navigation-dropdown-link" href="#">Joglo Tumiyono</a>
                      <ul class="navbar-navigation-dropdown rd-navbar-dropdown">
                        <li class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="<?php echo base_url();?>profil">Profil</a>
                        </li>
                        <li class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="#">Pengembangan Seni & Budaya</a>
                        </li>
                        <li><a class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="#">Pesantren Entrepreneur</a>
                        </li>
                      </ul>
                    </li>

                    <li class="navbar-navigation-dropdown-item"><a class="navbar-navigation-dropdown-link" href="#">Unit Bisnis</a>
                      <ul class="navbar-navigation-dropdown rd-navbar-dropdown">
                        <li class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="<?php echo base_url();?>livestock">LIVESTOCK</a>
                        </li>
                        <li class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="<?php echo base_url();?>meat">MEAT</a>
                        </li>
                        <li><a class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="<?php echo base_url();?>food">FOOD</a>
                        </li>
                        <li><a class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="<?php echo base_url();?>poultry">POULTRY</a>
                        </li>
                      </ul>
                    </li>

                  </ul>
                </li>
                <li class="navbar-navigation-root-item"><a class="navbar-navigation-root-link" href="history.html">Kemitraan</a>
                  <ul class="navbar-navigation-dropdown rd-navbar-dropdown">

                    <li class="navbar-navigation-dropdown-item"><a class="navbar-navigation-dropdown-link" href="#">Pengembangan Kemitraan</a>
                    </li>

                    <li class="navbar-navigation-dropdown-item"><a class="navbar-navigation-dropdown-link" href="#">Proyeksi Kemitraan</a>
                    </li>

                    <li class="navbar-navigation-dropdown-item"><a class="navbar-navigation-dropdown-link" href="#">Skema Kemitraan</a>
                      <ul class="navbar-navigation-dropdown rd-navbar-dropdown">
                        <li class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="#">Budidaya Ayam Layer</a>
                        </li>
                        <li class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="#">Budidaya Ayam Broiler</a>
                        </li>
                        <li><a class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="#">Penggemukan Sapi</a>
                        </li>
                        <li><a class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="#">Budidaya Jagung & Padi</a>
                        </li>
                        <li><a class="navbar-navigation-dropdown-item">
                          <a class="navbar-navigation-dropdown-link" href="#">UMKM Produk Olahan</a>
                        </li>
                      </ul>
                    </li>

                  </ul>
                </li>
               <li class="navbar-navigation-root-item"><a class="navbar-navigation-root-link" href="#">Modul Pelatihan</a>
                </li>
               <li class="navbar-navigation-root-item"><a class="navbar-navigation-root-link" href="#">Inkubator Bisnis</a>
                </li>
                <li class="navbar-navigation-root-item"><a class="navbar-navigation-root-link" href="#">Akses Permodalan</a>
                </li>
                <li class="navbar-navigation-root-item"><a class="navbar-navigation-root-link" href="#">Kontak</a>
                </li>
              </ul>
            </div>
            <div class="navbar-spacer"></div>
            <div class="navbar-cell">
              <div class="navbar-subpanel">
                <div class="navbar-subpanel-item">
                  <div class="navbar-search">
                    <div class="navbar-search-container">
                      <form class="navbar-search-form" action="search-results.html" method="GET" data-rd-search='{"output":".navbar-search-results","mode":"live","liveResults":3,"template":"<h5 class=\"search-title\"><a target=\"_top\" href=\"#{href}\" class=\"search-link\">#{title}</a></h5><p>...#{token}...</p>"}'>
                        <input class="navbar-search-input" type="text" placeholder="Enter search terms..." autocomplete="off" name="s"/>
                        <button class="navbar-search-btn custom-font-search novi-icon"></button>
                        <button class="navbar-search-close search-switch custom-font-close novi-icon" type="button" data-multi-switch='{"targets":".rd-navbar","scope":".rd-navbar","class":"navbar-search-active","isolate":"[data-multi-switch]:not(.search-switch)"}'></button>
                      </form>
                    </div>
                  </div>
                  <div class="navbar-search-results">No results</div>
                  <button class="navbar-button search-switch custom-font-search" data-multi-switch='{"targets":".rd-navbar","scope":".rd-navbar","class":"navbar-search-active","isolate":"[data-multi-switch]:not(.search-switch)"}'></button>
                </div>
              </div>
            </div>
          </div>
        </nav>
      </header>