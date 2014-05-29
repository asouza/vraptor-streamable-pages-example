<script type="vraptor-pagelet" id="header-content">
    <div id="top-header-bg">
        <div class="container top-header">
            <ul>
                <li><a href="http://blog.elo7.com.br/" target="_blank">Blog</a></li>
                <li><a href="/sobre">Sobre</a></li>
                <li><a href="/lojas/">Lojas</a></li>
                <li><a href="/quero-vender">Crie sua loja</a></li>
                <li><a href="http://ajuda.elo7.com.br" target="_blank">Ajuda</a></li>
            </ul>
        </div>
    </div>
    <div id="main-header-bg" class="buyer">
        <div class="container">
            <div class="row-fluid" id="main-header">
                <div class="span2" id="logo">
                    <a href="/">Elo7</a>
                </div>
                <form id="search-form" action="/search.do" method="post" class="span6">
                    <div id="search-box" class="field-with-options">
                        <div id="search-options" class="field-options-trigger">
                            <a href="#" id="search-options-selector" data-dropdown="#search-type-selector">Produtos</a>
                        </div>
                        <input id="search-type" type="hidden" name="searchType" value="1">
                        <input type="search" name="searchQuery" id="search-query" value="" placeholder="Buscar produtos..." autocomplete="off">
                        <input type="hidden" id="searchQuery" value="">
                        <ul id="search-type-selector" class="dropdown field-options" style="display: none;">
                            <li>
                                <a href="#" data-type="1" id="search-option-products" class="search-option-default" data-form-url="/lista/" data-placeholder="Buscar produtos..." data-hide="true" style="display: none;">Produtos</a>
                            </li>
                            <li>
                                <a href="#" data-type="2" id="search-option-stores" class="" data-form-url="/lojas/" data-placeholder="Buscar lojas..." data-hide="false" style="display: block;">Lojas</a>
                            </li>
                            <li>
                                <a href="#" data-type="3" id="search-option-supplies" class="" data-form-url="/mt/" data-placeholder="Buscar materiais..." data-hide="false" style="display: block;">Materiais</a>
                            </li>
                        </ul>
                    </div>
                    <button class="btn btn-search" type="submit" title="Buscar"></button>
                </form>
                <nav class="span4" id="nav">
                    <ul class="nav-buttons span6">
                        <li class="span4">
                            <a href="/cart.do" rel="nofollow" id="bt-cart" class=" icon icon-cart inactive" data-dropdown="#mini-cart" title="Meu carrinho">
                                <span class="bt-img">Carrinho</span>
                            </a>
                            <div id="mini-cart" class="dropdown">
                                <div class="no-card-item">
                                    <h5>Seu carrinho está vazio!</h5>
                                    <p>Adicione produtos criativos que você só encontra por aqui.</p>
                                    <p>Já tem uma conta?</p>
                                    <a href="https://www.elo7.com.br/login.do" class="login" data-login-trigger="">Faça seu login</a>
                                </div>
                                <a id="mini-cart-view" class="btn btn-block btn-yellow" href="/cart.do">
                                    Ver carrinho (Vazio)
                                </a>
                            </div>
                        </li>
                        <li class="span4">
                            <a href="/buyerOrder.do?command=showOrderHistoryForm&amp;__d_=1401399981320" data-login-trigger="" id="bt-orders" class="icon icon-orders inactive" title="Meus Pedidos">
                                <span class="bt-img">Pedidos</span>
                            </a>
                        </li>
                        <li class="span4">
                            <a href="/favoritos.do?command=showFavoriteProductsForm" data-login-trigger="" id="bt-messages" class="icon icon-favorites inactive" title="Meus produtos favoritos">
                                <span class="bt-img">Favoritos</span>
                            </a>
                        </li>
                    </ul>
                    <nav class="span6">
                        <ul class="unlogged-user-menu">
                            <li><a href="http://www.elo7.com.br/newUserAccount.do?command=showFormToCreateNewBuyerAccount&amp;userType=2" data-register-trigger="" rel="nofollow">Cadastrar</a></li>
                            <li><a href="https://www.elo7.com.br/login.do" data-login-trigger="" id="login-link" class="" rel="nofollow">Entrar</a></li>
                        </ul>
                    </nav>
                </nav>
            </div>
        </div>
    </div>
</script>
<script>
    document.getElementById("header-pagelet").innerHTML = document.getElementById("header-content").innerHTML
</script>