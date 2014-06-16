<%@taglib prefix="vraptor" uri="http://vraptor.org/jsp/taglib/streamer" %>
<%@ page pageEncoding="UTF-8" %>

<html class="js svg " lang="pt-br">
<head><title>Caelum | Cursos de Java, .NET, Android, iOS, Scrum, HTML, CSS e JavaScript </title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="format-detection" content="telephone=no">
    <meta name="description"
          content="A Caelum tem os cursos de Java, Scrum, Web, Front-end, .NET e Mobile mais reconhecidos no mercado, com didática diferenciada e instrutores qualificados.">
    <link rel="canonical" href="index.html">
    <style>.calendario-tabela {
        font-family: Arial, Helvetica, sans-serif;
        font-size: .8125em;
        border-collapse: collapse;
        margin: 0 auto 2em;
        clear: both;
        width: 100%
    }

    .calendario-tabela td, .calendario-tabela th {
        border: 1px solid #bbb;
        padding: 5px 3px
    }

    .calendario-tabela thead {
        background: #004366;
        color: #fff
    }

    .calendario-tabela thead th {
        font-weight: 400;
        padding: 6px 2px;
        text-transform: uppercase
    }

    .calendario-tabela tbody .comentario {
        color: #f44f0b
    }

    .calendario-tabela .curso a {
        text-decoration: none
    }

    .calendario-tabela .curso a:hover {
        text-decoration: underline
    }

    .calendario-tabela tbody tr:hover {
        background: #fffb8c
    }

    .calendario-tabela tbody tr.separador-mes {
        background: #0082c7;
        color: #fff;
        padding: 7px 3px;
        -webkit-text-size-adjust: none
    }

    .calendario-tabela tbody tr.separador-mes th {
        font-size: 1.07692308em;
        font-weight: 400;
        text-transform: uppercase
    }

    .calendario-tabela .data span {
        white-space: nowrap
    }

    .calendario .mais-turmas {
        color: #222;
        padding: 9px 3px;
        margin-bottom: 2em;
        font-size: .9375em;
        font-weight: 400;
        text-align: center;
        -webkit-text-size-adjust: none
    }

    .calendario .mais-turmas a {
        color: #008
    }

    .calendario .sem-turmas {
        background: #fffb8c;
        font-size: 1.5em;
        font-style: italic;
        font-family: Arial, Helvetica, sans-serif;
        font-weight: 400;
        text-align: center;
        margin: 2em auto;
        padding: 1em 15%
    }

    .calendario-completo .mais-turmas {
        background: #ffc542
    }

    .calendario-completo .calendario-filtros {
        background: #ededed
    }

    .calendario-compacto .calendario-tabela {
        margin-bottom: .75em;
        max-width: 65em
    }

    .calendario-compacto .mais-turmas {
        font-style: italic
    }

    @media (min-width: 38em) {
        .calendario-tabela .cidade, .calendario-tabela .data, .calendario-tabela .periodo {
            white-space: nowrap
        }

        .calendario-tabela thead th {
            font-size: 1.15384615em;
            padding: 10px 3px
        }

        .calendario-compacto .cidade, .calendario-compacto .data, .calendario-compacto .periodo {
            width: 11em
        }
    }

    @media (min-width: 47.5em) {
        .calendario-tabela .curso {
            width: 25.38461538em
        }
    }

    @media (max-width: 36em) {
        .calendario-tabela .periodo {
            display: none
        }

        .calendario-tabela tbody .data:after {
            content: ' (' attr(data-periodo) ')';
            text-transform: lowercase
        }
    }

    @media (max-width: 25em) {
        .calendario-tabela .comentario {
            display: none
        }
    }

    .calendario-filtros {
        color: #444;
        margin: 2em 0;
        padding: .8em .8em .4em;
        font-family: Arial, Helvetica, sans-serif;
        font-size: .875em;
        line-height: 1.5
    }

    .calendario-filtros .no-js {
        display: none
    }

    @media (min-width: 30em) {
        .calendario-filtros {
            padding: 1.2em 2em .5em
        }
    }

    .calendario-filtro {
        border: 0;
        margin-bottom: .5em
    }

    .calendario-filtro legend {
        font-weight: 700;
        line-height: 2.1;
        width: 9.64285714em
    }

    .calendario-filtro label {
        display: inline-block;
        margin-right: .5em;
        padding: .3em .5em
    }

    .calendario-filtro select {
        font-size: 1.2em
    }

    .calendario-filtro-selecionado {
        background: #fff
    }

    @media (min-width: 56em) {
        .calendario-filtro legend {
            display: inline-block;
            float: left
        }
    }

    .calendario-compacto .calendario-filtros {
        padding: 0
    }

    .wg-contato {
        background-color: #ededed;
        clear: both;
        width: 100%
    }

    .wg-contato .form-contato {
        padding: 4%
    }

    .wg-contato .bs-botao {
        font-size: 1.25em
    }

    .wg-contato-chamada {
        color: #333;
        font-family: Georgia, serif;
        font-size: 1.25em;
        background: #f5f5f5 url(http://www.caelum.com.br/imagens/contato/widget-banner.1394081564.jpg) no-repeat 0 5em;
        background-size: 100%
    }

    .wg-contato-chamada hgroup {
        padding: 4% 4% 6em;
        line-height: 1.3
    }

    .wg-contato-chamada h2 {
        margin: 0;
        line-height: 1.1;
        font-size: 1.5em;
        font-weight: 400
    }

    .wg-contato-chamada h3 {
        margin: .5em 0 0;
        font-size: 1em;
        font-weight: 400
    }

    @media (min-width: 30em) {
        .wg-contato-chamada {
            background-size: 50%;
            background-position: right bottom;
            font-size: 1.5em
        }

        .wg-contato-chamada hgroup {
            padding-bottom: 4%;
            width: 50%
        }
    }

    @media (min-width: 38em) {
        .wg-contato-chamada {
            background-position: right top
        }
    }

    @media (min-width: 44em) {
        .wg-contato {
            background: #f5f5f5 url(http://www.caelum.com.br/imagens/contato/widget-banner.1394081564.jpg) no-repeat 0 230px;
            background-size: 50%
        }

        .wg-contato .form-contato {
            background-color: #ededed;
            float: right;
            width: 50%
        }

        .wg-contato:after {
            content: '';
            display: block;
            clear: both
        }

        .wg-contato-chamada {
            background: 0 0;
            font-size: 1.75em;
            float: left;
            width: 50%
        }

        .wg-contato-chamada hgroup {
            padding: 8%;
            width: auto
        }
    }

    @media (min-width: 50em) {
        .wg-contato-chamada {
            font-size: 1.9em
        }
    }

    @media (min-width: 57.5em) {
        .wg-contato-chamada {
            font-size: 2.1em
        }
    }

    .wg-contato-link {
        padding: 3%;
        text-align: center;
        width: 100%
    }

    .wg-contato-link h2 {
        font-family: Georgia, serif;
        font-size: 1.5em;
        font-weight: 400;
        display: inline-block
    }

    .bs-titulo {
        color: #333;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 1.3125em;
        font-weight: 400;
        border-bottom: 2px solid #ccc;
        line-height: 60px;
        margin-bottom: 1.52380952em
    }

    .bs-subtitulo {
        color: #222;
        font-family: Georgia, serif;
        font-size: 1.75em;
        font-weight: 400;
        line-height: 1.25;
        margin: .75em 0;
        -webkit-font-smoothing: antialiased
    }

    @media (min-width: 30em) {
        .bs-subtitulo {
            font-size: 2em
        }
    }

    @media (min-width: 40em) {
        .bs-subtitulo {
            font-size: 2.125em
        }
    }

    @media (min-width: 50em) {
        .bs-subtitulo {
            font-size: 2.25em
        }
    }

    .bs-curso {
        display: block;
        margin-bottom: 1em;
        max-width: 20em;
        padding: .5em 1em .5em .5em;
        text-decoration: none
    }

    .bs-curso [class^=sp-base-] {
        background-color: #0082c7;
        float: left;
        width: 60px
    }

    .bs-curso .nome {
        display: table-cell;
        height: 60px;
        padding-left: .5em;
        vertical-align: middle;
        color: #333;
        font-family: Arial, sans-serif;
        font-size: 1em;
        font-weight: 400
    }

    .bs-curso > a {
        display: block;
        text-decoration: none
    }

    .bs-botao {
        border-radius: 2px;
        box-shadow: 1px 1px 1px rgba(0, 0, 0, .2);
        font-family: inherit;
        font-size: 1em;
        color: #fff;
        line-height: 1;
        text-align: center;
        text-decoration: none;
        position: relative;
        display: inline-block;
        padding: .5em .8em;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
        -webkit-appearance: none;
        background: #ff6828;
        border: 1px solid #ea4600
    }

    .bs-botao:hover {
        box-shadow: 1px 1px 1px rgba(0, 0, 0, .25)
    }

    .bs-botao:active {
        box-shadow: 1px 1px 1px rgba(0, 0, 0, .15);
        top: 1px
    }

    .bs-botao:hover {
        background: #ff560e
    }

    .bs-botao:active {
        background: #f44900
    }

    *, :after, :before {
        margin: 0;
        padding: 0;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box
    }

    .main-container {
        position: relative;
        max-width: 100%;
        font-family: Arial, sans-serif
    }

    .big-container, .container {
        display: block;
        position: relative;
        margin: 0 auto;
        width: 96%;
        clear: both
    }

    @media (min-width: 1000px) {
        .container {
            max-width: 960px;
            width: 100%
        }
    }

    @media (min-width: 1250px) {
        .big-container {
            max-width: 1200px;
            width: 100%
        }
    }

    .full-container .main-container {
        max-width: 100%;
        width: 100%
    }

    .main-container {
        display: none
    }

    .fotona {
        display: block;
        position: relative;
        width: 100%;
        background-size: cover;
        overflow: hidden
    }

    .fotona .big-container, .fotona .container {
        width: 100%
    }

    .fotona .big-container:after, .fotona .container:after {
        content: '';
        display: inline-block;
        vertical-align: middle;
        position: relative;
        left: 100%;
        padding-top: 45.83333333%;
        width: 0
    }

    .fotona .big-container:after {
        padding-top: 36.66666667%
    }

    .fotona-frases {
        display: inline-block;
        vertical-align: middle;
        background: #444;
        background-color: rgba(0, 0, 0, .5);
        padding: 3%;
        width: 30em;
        color: #fff;
        font-family: Georgia, serif;
        -webkit-font-smoothing: antialiased
    }

    .fotona-titulo {
        font-weight: 400;
        font-size: 1.375em;
        line-height: 1.4;
        padding-bottom: .8em;
        text-shadow: 1px 1px 2px rgba(0, 0, 0, .5)
    }

    .fotona-frase-principal {
        font-size: 3em;
        font-weight: 400;
        line-height: 1.2;
        text-shadow: 1px 1px 2px rgba(0, 0, 0, .8)
    }

    .fotona-frase-secundaria {
        font-size: 1.375em;
        font-weight: 400;
        line-height: 1.4;
        padding-top: .8em;
        text-shadow: 1px 1px 2px rgba(0, 0, 0, .5)
    }

    @media (max-width: 50em) {
        .fotona .fotona-frases {
            font-size: .8125em
        }
    }

    @media (max-width: 42em) {
        .fotona .fotona-frases {
            font-size: .71875em
        }
    }

    @media (max-width: 34em) {
        .fotona {
            padding: 10px 0
        }

        .fotona .fotona-frases {
            padding: 2%;
            width: 75%
        }

        .fotona .fotona-frase-principal {
            font-size: 2.1875em
        }
    }

    .ft-footer {
        display: none;
        background-color: #242448;
        color: #fff;
        font-family: Arial, sans-serif;
        font-size: 13px;
        line-height: 1.5;
        clear: both;
        padding-top: 20px
    }

    .ft-footer a {
        color: #fff;
        text-decoration: none
    }

    .ft-footer a[href]:hover {
        text-decoration: underline
    }

    .ft-enderecos .tels, .ft-enderecos .tels a, a.ft-grupo {
        color: #ffc542
    }

    .ft-footer nav {
        display: block;
        padding: 1em;
        text-align: right
    }

    .ft-footer nav > ul > li {
        display: inline-block;
        vertical-align: top;
        margin-bottom: 1.5em;
        list-style-type: none;
        text-align: left;
        width: 25%
    }

    .ft-footer nav li li {
        margin-left: .5em;
        list-style-position: inside;
        list-style-type: disc
    }

    .ft-footer nav ul ul {
        margin-top: .5em
    }

    .ft-enderecos {
        background-color: #1d1d3a;
        padding-bottom: 20px;
        text-align: center
    }

    .ft-enderecos .endereco {
        display: inline-block;
        text-align: left;
        margin-top: 20px;
        min-width: 300px;
        width: 33.3%
    }

    .ft-enderecos .endereco:after {
        content: '';
        clear: both;
        display: block;
        height: 0
    }

    .ft-enderecos .cidade {
        float: left;
        margin-right: 10px;
        background: #fff;
        width: 95px
    }

    .ft-enderecos .rua {
        padding-top: 6px
    }

    .ft-enderecos .rua strong {
        display: block;
        font-weight: 400
    }

    .ft-enderecos .tels {
        padding: .3em 0
    }

    .ft-enderecos .contato {
        text-decoration: underline
    }

    @media only screen and (max-width: 42em) {
        .ft-footer nav > ul > li {
            width: 50%
        }

        .ft-footer nav li li {
            padding: .25em 0
        }
    }

    @media only screen and (max-width: 25em) {
        .ft-footer nav > ul > li {
            position: relative
        }

        .ft-footer nav > ul > li:before {
            content: ' >';
            color: #cf9512;
            padding-right: 5%;
            position: relative;
            top: 1px
        }

        .ft-footer ul ul {
            display: none
        }
    }

    .fm-growable {
        min-height: 4.375em;
        padding: .25em;
        font-family: inherit;
        font-size: 1em;
        line-height: 1.25;
        resize: none;
        overflow: auto;
        word-wrap: break-word
    }

    .fm-label {
        display: block;
        font-size: .95em;
        font-weight: 700;
        line-height: 2;
        color: #333;
        -webkit-text-size-adjust: 100%
    }

    .fm-label.for-checkbox {
        font-size: 1em;
        font-weight: 400;
        line-height: 1.2;
        margin-bottom: 1.2em
    }

    .fm-field {
        border: 1px solid #999;
        border-top: 1px solid #888;
        border-radius: 2px;
        box-shadow: inset -1px 1px 1px #f0f0f0;
        font-family: inherit;
        font-size: 1em;
        margin-bottom: 1.1em;
        padding: .25em;
        display: block;
        width: 100%
    }

    .fm-field[type=tel] {
        max-width: 12em
    }

    .fm-field[type=checkbox] {
        float: left;
        display: inline;
        width: auto
    }

    .fm-button {
        border: 1px solid #f14000;
        border-radius: 2px;
        background: #ff6828;
        color: #fff;
        box-shadow: 1px 1px 1px rgba(0, 0, 0, .2);
        font-family: inherit;
        font-size: 1.25em;
        line-height: 1;
        text-align: center;
        text-decoration: none;
        clear: both;
        position: relative;
        display: inline-block;
        vertical-align: middle;
        padding: .4em .7em;
        margin: .5em 0;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
        -webkit-appearance: none
    }

    .fm-button:hover {
        background: #ff560e;
        box-shadow: 1px 1px 1px rgba(0, 0, 0, .25)
    }

    .fm-button:active {
        background: #f44900;
        box-shadow: inset 1px 1px 1px rgba(0, 0, 0, .15);
        top: 1px
    }

    .fm-field.fm-error, .fm-field.fm-warning {
        margin-bottom: .2em
    }

    .fm-field.fm-error {
        border: 1px solid #DF0000
    }

    .fm-message {
        display: block;
        font-size: .9em;
        line-height: 1.6;
        margin-bottom: 1em;
        -webkit-text-size-adjust: 100%
    }

    .fm-label.fm-error, .fm-message.fm-error {
        color: #DF0000
    }

    .fm-message.fm-warning {
        font-style: italic
    }

    form.fm-invalid .fm-button[type=submit], form.fm-invalid .fm-button[type=submit]:active, form.fm-invalid .fm-button[type=submit]:hover {
        background: #ddd;
        border: 1px solid #aaa;
        color: #888;
        cursor: default;
        box-shadow: none;
        top: 0
    }

    .fm-global-message {
        display: none
    }

    form.fm-invalid .fm-global-message {
        display: inline-block;
        vertical-align: middle;
        color: #DF0000;
        font-style: italic;
        font-size: .85em;
        text-indent: 3px
    }

    body:before {
        content: '';
        display: block;
        height: .25em;
        width: 100%;
        position: absolute;
        left: 0;
        top: 0;
        z-index: 6;
        background-color: #242448
    }

    .hd-header {
        display: block;
        position: relative;
        margin-bottom: .5em;
        padding-top: .6em;
        z-index: 5;
        font-family: Arial, Helvetica, sans-serif;
        font-size: 17px
    }

    .hd-header li {
        list-style-type: none
    }

    .hd-header a {
        color: #444;
        text-decoration: none
    }

    .hd-logo {
        display: block;
        margin: 0 auto 6px
    }

    .hd-logo img {
        border: 0;
        width: 100%
    }

    .hd-busca {
        position: absolute;
        top: .25em;
        right: 20px;
        z-index: 3;
        text-align: center;
        overflow: hidden;
        height: 1.55em;
        width: 2.3em;
        background-color: #242448;
        border-bottom-left-radius: 4px;
        border-bottom-right-radius: 4px
    }

    .hd-busca a {
        display: block;
        height: 100%;
        width: 100%;
        line-height: 1.55em;
        text-indent: -99999px;
        color: transparent;
        -webkit-transform: translate(-2px);
        -moz-transform: translate(-2px);
        -ms-transform: translate(-2px);
        transform: translate(-2px)
    }

    .hd-busca a:after {
        content: '';
        background: #242448;
        border: 2px solid #BCBCC7;
        border-radius: 12px;
        position: absolute;
        z-index: 2;
        left: 50%;
        top: 40%;
        margin: -6px 0 0 -6px;
        height: 12px;
        width: 12px
    }

    .hd-busca a:before {
        content: '';
        background: #BCBCC7;
        position: absolute;
        z-index: 1;
        left: 50%;
        top: 40%;
        bottom: 3px;
        margin-left: -1px;
        width: 2px;
        -webkit-transform: rotate(-45deg);
        -moz-transform: rotate(-45deg);
        -ms-transform: rotate(-45deg);
        transform: rotate(-45deg);
        -webkit-transform-origin: top;
        -moz-transform-origin: top;
        -ms-transform-origin: top;
        transform-origin: top
    }

    .hd-menu {
        display: block;
        height: 100px;
        z-index: 1
    }

    .hd-menu > ul {
        display: block;
        width: 100%
    }

    .hd-item {
        border-bottom: 1px solid #dfdfdf;
        border-top: 1px solid #dfdfdf;
        float: left;
        position: relative;
        line-height: 1;
        width: 33.3%
    }

    .hd-item.hover, .hd-item:hover {
        border-top-color: #fffb8c;
        border-bottom-color: #f2d752
    }

    .hd-top {
        display: block;
        line-height: 100px;
        padding-top: 10px;
        text-align: center
    }

    .hd-item:hover .hd-top, .hover .hd-top {
        background: #fef990
    }

    .hd-item:hover .hd-top .a:after, .hover .hd-top .a:after {
        display: none
    }

    .hd-item:hover .hd-top .f, .hover .hd-top .f {
        display: block
    }

    .hd-item .a {
        display: inline-block;
        position: relative;
        line-height: 1;
        text-align: left;
        vertical-align: middle
    }

    .hd-item .t {
        display: block;
        color: #777;
        font-size: .70588235em;
        text-transform: lowercase
    }

    .hd-item .f {
        display: none;
        color: #777;
        font-size: .70588235em;
        text-transform: lowercase;
        position: absolute;
        bottom: -1.15em;
        left: 2px
    }

    .hd-top .a:after {
        content: '';
        display: block;
        position: absolute;
        bottom: .25em;
        right: -.65em;
        border-top: .35em solid #7a7a7a;
        border-left: .28em solid transparent;
        border-right: .28em solid transparent
    }

    .hd-topmenu .hd-top .a:after {
        display: none
    }

    .hd-contato .b, .hd-contato .t {
        color: #ff6828
    }

    .hd-contato .a:after {
        border-top-color: #ff6828
    }

    .hd-alura {
        display: none
    }

    .hd-submenu {
        display: none;
        position: absolute;
        top: 110px;
        padding: .75em 0;
        z-index: 1;
        background: #fff;
        border: .4em solid #fef990;
        font-size: .88235294em
    }

    .hd-submenu a {
        display: block;
        padding: .3em;
        line-height: 1.5;
        color: #142a55;
        text-decoration: none
    }

    .hd-submenu li {
        float: left;
        width: 50%
    }

    .hd-submenu li.hover a, .hd-submenu li:hover a {
        background: #fcf4a0;
        text-decoration: underline
    }

    .hd-submenu li:nth-child(2n+1) {
        border-right: 1px solid #ececec
    }

    .hd-submenu li:nth-child(2n) {
        text-align: right
    }

    .hd-cursos .hd-submenu {
        left: 0;
        min-width: 13.125em;
        width: 100%
    }

    .hd-empresa .hd-submenu {
        left: -100%;
        width: 300%
    }

    .hd-item.hover .hd-submenu, .hd-item:hover .hd-submenu {
        display: block
    }

    .hd-submenu .hd-close {
        display: none;
        float: right;
        margin-top: .75em;
        padding: .35em;
        padding-bottom: 0;
        width: 100%;
        background: #fef990;
        color: #333;
        cursor: pointer;
        font-size: 93.33%;
        text-align: right;
        text-transform: lowercase;
        text-underline: none
    }

    .hover .hd-submenu .hd-close {
        display: block;
        border: 0
    }

    .hover .hd-submenu {
        padding-bottom: 0
    }

    @media only screen {
        .hd-logo {
            width: 8.5em
        }

        .hd-menu {
            height: 55px
        }

        .hd-top {
            padding-top: 0;
            line-height: 55px
        }

        .hd-submenu {
            top: 55px
        }
    }

    @media only screen and (min-width: 29em) {
        .hd-header {
            padding-top: 0
        }

        .hd-logo {
            position: absolute;
            top: .65em;
            left: 0
        }

        .hd-busca {
            left: 155px
        }

        .hd-menu {
            padding-left: 190px
        }

        .hd-item {
            border: none
        }

        .hd-item:before {
            content: '';
            position: absolute;
            left: 0;
            top: 15%;
            background-color: silver;
            height: 70%;
            width: 1px
        }

        .hd-item.hd-cursos:before, .hd-item.hover + .hd-item:before, .hd-item.hover:before, .hd-item:hover + .hd-item:before, .hd-item:hover:before {
            display: none
        }

        .hd-empresa .hd-submenu {
            left: auto;
            right: 0;
            width: 20em
        }
    }

    @media only screen and (min-width: 37.5em) {
        .hd-logo {
            width: 192px;
            top: 1.75em
        }

        .hd-menu {
            padding-left: 260px
        }

        .hd-busca {
            left: 210px
        }

        .hd-item {
            max-width: 140px
        }

        .hd-menu {
            height: 110px
        }

        .hd-top {
            line-height: 100px;
            padding-top: 10px
        }

        .hd-submenu {
            top: 110px
        }
    }

    @media (min-width: 1020px) {
        .hd-menu {
            padding-left: 20%
        }

        .hd-busca {
            left: 20%
        }

        .hd-item {
            width: 12%
        }

        .hd-alura {
            display: block
        }

        .hd-contato:before, .hd-empresa:before {
            display: none
        }

        .hd-cursos {
            max-width: 100%;
            width: 64%
        }

        .hd-cursos .hd-top {
            display: none
        }

        .hd-cursos.hover + .hd-item:before, .hd-cursos:hover + .hd-item:before {
            display: block
        }

        .hd-cursos .hd-submenu {
            position: static;
            background: 0 0;
            border: none;
            font-size: 1em;
            padding: 0;
            display: block;
            float: right;
            width: 90%
        }

        .hd-cursos .hd-submenu a:hover {
            background: 0 0
        }

        .hd-cursos .hd-submenu li {
            border: none;
            float: left;
            position: relative
        }

        .hd-cursos .hd-submenu li.hover a, .hd-cursos .hd-submenu li:active a, .hd-cursos .hd-submenu li:hover a {
            background: #fef990
        }

        .hd-cursos .hd-submenu li a {
            color: #000;
            padding: 0;
            text-decoration: none;
            display: block;
            line-height: 100px;
            padding-top: 10px;
            text-align: center
        }

        .hd-cursos .hd-agile, .hd-cursos .hd-dotnet, .hd-cursos .hd-java, .hd-cursos .hd-mobile {
            width: 15%
        }

        .hd-cursos .hd-web, .hd-cursos .hd-workshops {
            width: 20%
        }

        .hd-cursos.hover .hd-close {
            display: none
        }
    }

    .sp-base-CS-14:before, .sp-base-FJ-11:before, .sp-base-FJ-19:before, .sp-base-FJ-21:before, .sp-base-FJ-22:before, .sp-base-FJ-25:before, .sp-base-FJ-26:before, .sp-base-FJ-27:before, .sp-base-FJ-28:before, .sp-base-FJ-31:before, .sp-base-FJ-34:before, .sp-base-FJ-36:before, .sp-base-FJ-57:before, .sp-base-FJ-59:before, .sp-base-FJ-91:before, .sp-base-FN-13:before, .sp-base-FN-23:before, .sp-base-IP-67:before, .sp-base-PM-83:before, .sp-base-PM-87:before, .sp-base-PM-89:before, .sp-base-RR-71:before, .sp-base-RR-75:before, .sp-base-WD-01:before, .sp-base-WD-41:before, .sp-base-WD-43:before, .sp-base-WD-47:before {
        padding-top: 100%
    }

    .sp-base-facebook:before {
        padding-top: 181.8181%
    }

    .sp-base-twitter:before {
        padding-top: 80%
    }

    .sp-base-unidade-bsb:before, .sp-base-unidade-rio:before, .sp-base-unidade-sp:before {
        padding-top: 100%
    }

    .sp-base-CS-14, .sp-base-FJ-11, .sp-base-FJ-19, .sp-base-FJ-21, .sp-base-FJ-22, .sp-base-FJ-25, .sp-base-FJ-26, .sp-base-FJ-27, .sp-base-FJ-28, .sp-base-FJ-31, .sp-base-FJ-34, .sp-base-FJ-36, .sp-base-FJ-57, .sp-base-FJ-59, .sp-base-FJ-91, .sp-base-FN-13, .sp-base-FN-23, .sp-base-IP-67, .sp-base-PM-83, .sp-base-PM-87, .sp-base-PM-89, .sp-base-RR-71, .sp-base-RR-75, .sp-base-WD-01, .sp-base-WD-41, .sp-base-WD-43, .sp-base-WD-47, .sp-base-facebook, .sp-base-twitter, .sp-base-unidade-bsb, .sp-base-unidade-rio, .sp-base-unidade-sp {
        display: inline-block;
        position: relative;
        line-height: 0;
        overflow: hidden;
        text-indent: 100%;
        white-space: nowrap
    }

    .sp-base-CS-14:before, .sp-base-FJ-11:before, .sp-base-FJ-19:before, .sp-base-FJ-21:before, .sp-base-FJ-22:before, .sp-base-FJ-25:before, .sp-base-FJ-26:before, .sp-base-FJ-27:before, .sp-base-FJ-28:before, .sp-base-FJ-31:before, .sp-base-FJ-34:before, .sp-base-FJ-36:before, .sp-base-FJ-57:before, .sp-base-FJ-59:before, .sp-base-FJ-91:before, .sp-base-FN-13:before, .sp-base-FN-23:before, .sp-base-IP-67:before, .sp-base-PM-83:before, .sp-base-PM-87:before, .sp-base-PM-89:before, .sp-base-RR-71:before, .sp-base-RR-75:before, .sp-base-WD-01:before, .sp-base-WD-41:before, .sp-base-WD-43:before, .sp-base-WD-47:before, .sp-base-facebook:before, .sp-base-twitter:before, .sp-base-unidade-bsb:before, .sp-base-unidade-rio:before, .sp-base-unidade-sp:before {
        content: '';
        display: block;
        float: left
    }

    .sp-base-CS-14:after, .sp-base-FJ-11:after, .sp-base-FJ-19:after, .sp-base-FJ-21:after, .sp-base-FJ-22:after, .sp-base-FJ-25:after, .sp-base-FJ-26:after, .sp-base-FJ-27:after, .sp-base-FJ-28:after, .sp-base-FJ-31:after, .sp-base-FJ-34:after, .sp-base-FJ-36:after, .sp-base-FJ-57:after, .sp-base-FJ-59:after, .sp-base-FJ-91:after, .sp-base-FN-13:after, .sp-base-FN-23:after, .sp-base-IP-67:after, .sp-base-PM-83:after, .sp-base-PM-87:after, .sp-base-PM-89:after, .sp-base-RR-71:after, .sp-base-RR-75:after, .sp-base-WD-01:after, .sp-base-WD-41:after, .sp-base-WD-43:after, .sp-base-WD-47:after, .sp-base-facebook:after, .sp-base-twitter:after, .sp-base-unidade-bsb:after, .sp-base-unidade-rio:after, .sp-base-unidade-sp:after {
        content: '';
        display: block;
        -moz-background-size: cover;
        background-size: cover;
        position: absolute;
        top: 0;
        left: 0;
        bottom: 0;
        right: 0
    }

    .sp-base-CS-14:after {
        background-image: url(http://www.caelum.com.br/sprite/base/CS-14.1398376354.png)
    }

    .svg .sp-base-CS-14:after {
        background-image: url(http://www.caelum.com.br/sprite/base/CS-14.svg)
    }

    .sp-base-FJ-11:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-11.1398376356.png)
    }

    .svg .sp-base-FJ-11:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-11.svg)
    }

    .sp-base-FJ-19:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-19.1398376356.png)
    }

    .svg .sp-base-FJ-19:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-19.svg)
    }

    .sp-base-FJ-21:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-21.1398376359.png)
    }

    .svg .sp-base-FJ-21:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-21.svg)
    }

    .sp-base-FJ-22:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-22.1398376361.png)
    }

    .svg .sp-base-FJ-22:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-22.svg)
    }

    .sp-base-FJ-25:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-25.1398376396.png)
    }

    .svg .sp-base-FJ-25:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-25.svg)
    }

    .sp-base-FJ-26:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-26.1398376359.png)
    }

    .svg .sp-base-FJ-26:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-26.svg)
    }

    .sp-base-FJ-27:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-27.1398376362.png)
    }

    .svg .sp-base-FJ-27:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-27.svg)
    }

    .sp-base-FJ-28:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-28.1398376414.png)
    }

    .svg .sp-base-FJ-28:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-28.svg)
    }

    .sp-base-FJ-31:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-31.1398376363.png)
    }

    .svg .sp-base-FJ-31:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-31.svg)
    }

    .sp-base-FJ-34:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-34.1398376366.png)
    }

    .svg .sp-base-FJ-34:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-34.svg)
    }

    .sp-base-FJ-36:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-36.1398376366.png)
    }

    .svg .sp-base-FJ-36:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-36.svg)
    }

    .sp-base-FJ-57:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-57.1398376414.png)
    }

    .svg .sp-base-FJ-57:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-57.svg)
    }

    .sp-base-FJ-59:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-59.1398376368.png)
    }

    .svg .sp-base-FJ-59:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-59.svg)
    }

    .sp-base-FJ-91:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-91.1398376369.png)
    }

    .svg .sp-base-FJ-91:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FJ-91.svg)
    }

    .sp-base-FN-13:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FN-13.1398376414.png)
    }

    .svg .sp-base-FN-13:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FN-13.svg)
    }

    .sp-base-FN-23:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FN-23.1398376371.png)
    }

    .svg .sp-base-FN-23:after {
        background-image: url(http://www.caelum.com.br/sprite/base/FN-23.svg)
    }

    .sp-base-IP-67:after {
        background-image: url(http://www.caelum.com.br/sprite/base/IP-67.1398376422.png)
    }

    .svg .sp-base-IP-67:after {
        background-image: url(http://www.caelum.com.br/sprite/base/IP-67.svg)
    }

    .sp-base-PM-83:after {
        background-image: url(http://www.caelum.com.br/sprite/base/PM-83.1398376372.png)
    }

    .svg .sp-base-PM-83:after {
        background-image: url(http://www.caelum.com.br/sprite/base/PM-83.svg)
    }

    .sp-base-PM-87:after {
        background-image: url(http://www.caelum.com.br/sprite/base/PM-87.1398376371.png)
    }

    .svg .sp-base-PM-87:after {
        background-image: url(http://www.caelum.com.br/sprite/base/PM-87.svg)
    }

    .sp-base-PM-89:after {
        background-image: url(http://www.caelum.com.br/sprite/base/PM-89.1398376375.png)
    }

    .svg .sp-base-PM-89:after {
        background-image: url(http://www.caelum.com.br/sprite/base/PM-89.svg)
    }

    .sp-base-RR-71:after {
        background-image: url(http://www.caelum.com.br/sprite/base/RR-71.1398376375.png)
    }

    .svg .sp-base-RR-71:after {
        background-image: url(http://www.caelum.com.br/sprite/base/RR-71.svg)
    }

    .sp-base-RR-75:after {
        background-image: url(http://www.caelum.com.br/sprite/base/RR-75.1398376375.png)
    }

    .svg .sp-base-RR-75:after {
        background-image: url(http://www.caelum.com.br/sprite/base/RR-75.svg)
    }

    .sp-base-WD-01:after {
        background-image: url(http://www.caelum.com.br/sprite/base/WD-01.1398376453.png)
    }

    .svg .sp-base-WD-01:after {
        background-image: url(http://www.caelum.com.br/sprite/base/WD-01.svg)
    }

    .sp-base-WD-41:after {
        background-image: url(http://www.caelum.com.br/sprite/base/WD-41.1398376380.png)
    }

    .svg .sp-base-WD-41:after {
        background-image: url(http://www.caelum.com.br/sprite/base/WD-41.svg)
    }

    .sp-base-WD-43:after {
        background-image: url(http://www.caelum.com.br/sprite/base/WD-43.1398376380.png)
    }

    .svg .sp-base-WD-43:after {
        background-image: url(http://www.caelum.com.br/sprite/base/WD-43.svg)
    }

    .sp-base-WD-47:after {
        background-image: url(http://www.caelum.com.br/sprite/base/WD-47.1398376460.png)
    }

    .svg .sp-base-WD-47:after {
        background-image: url(http://www.caelum.com.br/sprite/base/WD-47.svg)
    }

    .sp-base-facebook:after {
        background-image: url(http://www.caelum.com.br/sprite/base/facebook.1398376396.png)
    }

    .svg .sp-base-facebook:after {
        background-image: url(http://www.caelum.com.br/sprite/base/facebook.svg)
    }

    .sp-base-twitter:after {
        background-image: url(http://www.caelum.com.br/sprite/base/twitter.1398376422.png)
    }

    .svg .sp-base-twitter:after {
        background-image: url(http://www.caelum.com.br/sprite/base/twitter.svg)
    }

    .sp-base-unidade-bsb:after {
        background-image: url(http://www.caelum.com.br/sprite/base/unidade-bsb.1398376384.png)
    }

    .svg .sp-base-unidade-bsb:after {
        background-image: url(http://www.caelum.com.br/sprite/base/unidade-bsb.svg)
    }

    .sp-base-unidade-rio:after {
        background-image: url(http://www.caelum.com.br/sprite/base/unidade-rio.1398376453.png)
    }

    .svg .sp-base-unidade-rio:after {
        background-image: url(http://www.caelum.com.br/sprite/base/unidade-rio.svg)
    }

    .sp-base-unidade-sp:after {
        background-image: url(http://www.caelum.com.br/sprite/base/unidade-sp.1398376453.png)
    }

    .svg .sp-base-unidade-sp:after {
        background-image: url(http://www.caelum.com.br/sprite/base/unidade-sp.svg)
    }
    </style>
    <meta property="og:title" content="Caelum | Cursos de Java, .NET, Android, iOS, Scrum, HTML, CSS e JavaScript">
    <meta property="og:description"
          content="A Caelum tem os cursos de Java, Scrum, Web, Front-end, .NET e Mobile mais reconhecidos no mercado. Didática diferenciada e instrutores qualificados em cursos e treinamentos presenciais e online.">
    <meta property="og:url" content="http://www.caelum.com.br/">
    <meta property="og:image"
          content="http://www.caelum.com.br/imagens/base/caelum-ensino-inovacao-share.1394081564.jpg">
    <meta property="og:site_name" content="Caelum">
    <meta property="og:type" content="website">
    <meta property="fb:app_id" content="140078819399376">
    <link href="https://plus.google.com/101703359609429000755" rel="publisher">
    <script type="text/javascript" async="" defer="" src="http://downloads.mailchimp.com/js/goal.min.js"></script>
    <script async="" src="//stats.g.doubleclick.net/dc.js"></script>
    <script async="" src="//connect.facebook.net/pt_BR/all.js#xfbml=1&amp;appId=140078819399376"></script>
</head>
<body class="pg-home full-container">
<header class="hd-header big-container" role="banner"><span class="hd-logo"><img
        src="http://www.caelum.com.br/imagens/caelum-logo.svg" alt="Caelum - Ensino e Inovação"
        onerror="this.src=this.src.replace('.svg', '.png'); this.onerror=null"></span>
    <nav class="hd-menu" role="navigation">
        <ul>
            <li class="hd-busca"><a href="http://www.caelum.com.br/busca/"> Busca </a></li>
            <li class="hd-cursos hd-item"><a class="hd-top"><span class="a"><span class="t">Nossos</span><span
                    class="b">Cursos</span></span></a>
                <ul class="hd-submenu">
                    <li class="hd-java"><a href="http://www.caelum.com.br/cursos-java/"><span class="a"><span class="t">Cursos</span><span
                            class="b">Java</span></span></a></li>
                    <li class="hd-mobile"><a href="http://www.caelum.com.br/cursos-mobile/"><span class="a"><span
                            class="t">Cursos</span><span class="b">Mobile</span></span></a></li>
                    <li class="hd-web"><a href="http://www.caelum.com.br/cursos-web-front-end/"><span class="a"><span
                            class="t">Cursos</span><span class="b">Front-end</span></span></a></li>
                    <li class="hd-agile"><a href="http://www.caelum.com.br/cursos-agile/"><span class="a"><span
                            class="t">Cursos</span><span class="b">Agile</span></span></a></li>
                    <li class="hd-dotnet"><a href="http://www.caelum.com.br/cursos-dotnet/"><span class="a"><span
                            class="t">Cursos</span><span class="b">.NET</span></span></a></li>
                    <li class="hd-workshops"><a href="http://www.caelum.com.br/workshops/"><span class="a"><span
                            class="t">Novos</span><span class="b">Workshops</span></span></a></li>
                    <li class="hd-close" innerhtml="Fechar menu &amp;times;">Fechar menu ×</li>
                </ul>
            </li>
            <li class="hd-alura hd-item hd-topmenu"><a href="http://www.alura.com.br/" class="hd-top"><span
                    class="a"><span class="t">Cursos</span><span class="b">Online</span><span class="f">by Alura</span></span></a>
            </li>
            <li class="hd-empresa hd-item"><a class="hd-top"><span class="a"><span class="t">Sobre a</span><span
                    class="b">Caelum</span></span></a>
                <ul class="hd-submenu">
                    <li><a href="http://www.caelum.com.br/apostilas/">Apostilas abertas</a></li>
                    <li><a href="http://www.caelum.com.br/calendario/">Calendário</a></li>
                    <li><a href="http://www.caelum.com.br/cursos-in-company/">Cursos in-company</a></li>
                    <li><a href="http://www.caelum.com.br/instrutores/">Instrutores</a></li>
                    <li><a href="http://www.caelum.com.br/mapa-dos-cursos/">Mapa dos cursos</a></li>
                    <li><a href="http://www.caelum.com.br/quem-somos/">Quem somos</a></li>
                    <li><a href="http://www.caelum.com.br/siga/">Siga a Caelum</a></li>
                    <li><a href="http://www.alura.com.br/">Cursos Online Alura</a></li>
                    <li class="hd-close" innerhtml="Fechar menu &amp;times;">Fechar menu ×</li>
                </ul>
            </li>
            <li class="hd-contato hd-item hd-topmenu"><a href="http://www.caelum.com.br/contato/" class="hd-top"><span
                    class="a"><span class="t">Entre em</span><span class="b">Contato</span></span></a></li>
        </ul>
    </nav>
</header>
<link rel="subresource prefetch" href="http://www.caelum.com.br/sprite/home/sprite.1402079965.css">
<script>
    document.documentElement.className = "js " + (document.createElementNS && document.createElementNS("http://www.w3.org/2000/svg", "svg").createSVGRect ? "svg " : "no-svg ");

    !function () {
        function a() {
            for (var d, e = arguments, f = e.length, g = e[f - 3], h = e[f - 2] || [], i = e[f - 1], j = [], k = !0, l = 0; l < h.length; l++)d = h[l], b.hasOwnProperty(d) ? j.push(b[d]) : (4 != f && (c[d] = c[d] || [], c[d].push([0, g, h, i])), k = !1);
            if (k)for (b[g] = i.apply(this, j); c[g] && (e = c[g].pop());)a.apply(this, e)
        }

        var b = {}, c = {};
        a.amd = {jQuery: !0}, define = a
    }();

    !function (a, b, c, d) {
        function e() {
            g || (a.body.appendChild(f), g = !0)
        }

        var f = a.createElement("div"), g = !1, h = a.getElementsByTagName("head")[0];
        c in a && a[c]("DOMContentLoaded", e, !1), c in b && b[c]("load", e, !1), d in b && b.attachEvent("onload", e), b.onload = e, b.async = function (b, c) {
            var d, e = a.createElement("js" == b ? "script" : "link");
            "js" == b ? (e.src = e.async = c, d = h) : (e.rel = "stylesheet", e.href = c, d = f), d.appendChild(e)
        }
    }(document, window, "addEventListener", "attachEvent");
    var _gaq = [
        ["_setAccount", "UA-270161-1" + (document.cookie && -1 != document.cookie.indexOf("caelum-funcionario") ? "6" : "")],
        ["_setDomainName", ".caelum.com.br"],
        ["_setSiteSpeedSampleRate", 100],
        ["_trackPageview", "undefined" != typeof ERROR_CODE ? "/" + ERROR_CODE + ".html?page=" + location.pathname + location.search + "&from=" + document.referrer : ""]
    ];


    async('js', '//stats.g.doubleclick.net/dc.js');

</script>
<style>.sp-home-accenture:before {
    padding-top: 29.4642%
}

.sp-home-bovespa:before {
    padding-top: 28.8461%
}

.sp-home-bradesco:before {
    padding-top: 78.8235%
}

.sp-home-globo:before {
    padding-top: 57.5342%
}

.sp-home-petrobras:before {
    padding-top: 19.178%
}

.sp-home-samsung:before {
    padding-top: 33.6134%
}

.sp-home-volks:before {
    padding-top: 100%
}

.sp-home-accenture, .sp-home-bovespa, .sp-home-bradesco, .sp-home-globo, .sp-home-petrobras, .sp-home-samsung, .sp-home-volks {
    display: inline-block;
    position: relative;
    line-height: 0;
    overflow: hidden;
    text-indent: 100%;
    white-space: nowrap
}

.sp-home-accenture:before, .sp-home-bovespa:before, .sp-home-bradesco:before, .sp-home-globo:before, .sp-home-petrobras:before, .sp-home-samsung:before, .sp-home-volks:before {
    content: '';
    display: block;
    float: left
}

.sp-home-accenture:after, .sp-home-bovespa:after, .sp-home-bradesco:after, .sp-home-globo:after, .sp-home-petrobras:after, .sp-home-samsung:after, .sp-home-volks:after {
    content: '';
    display: block;
    -moz-background-size: cover;
    background-size: cover;
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0
}

.home-subtitulo-invisivel {
    display: none
}

.home-diferenciais {
    background: #0b2b3d;
    padding: 1em;
    color: #fff;
    font-family: Georgia, sans-serif;
    line-height: 1.3;
    -webkit-font-smoothing: antialiased;
    text-align: center
}

.home-diferenciais:after {
    content: '';
    display: block;
    clear: both
}

.home-diferencial {
    padding: 0 .5em;
    margin: 1em 0;
    list-style-type: none
}

@media (min-width: 40em) {
    .home-diferencial {
        font-size: 1.25em
    }
}

@media (min-width: 44em) {
    .home-diferenciais {
        padding: 2em 0
    }

    .home-diferencial {
        float: left;
        width: 33.33%
    }

    .home-diferencial.home-diferencial-solto {
        clear: both;
        width: 100%;
        font-size: 1.125em;
        font-style: italic
    }
}

@media (min-width: 56em) {
    .home-diferencial {
        font-size: 1.5em
    }
}

.home-cursos {
    background: #0082c7;
    padding: 1em 0;
    text-align: center
}

.home-cursos-titulo {
    color: #fff;
    font-family: Georgia, serif;
    font-size: 1.4em;
    font-weight: 400;
    -webkit-font-smoothing: antialiased;
    margin: .25em 0 1em
}

.home-curso {
    list-style-type: none;
    display: inline-block;
    vertical-align: top;
    width: 40%;
    padding: .25em;
    margin: .5em 0
}

.home-curso:hover {
    background: #008cd6
}

.home-curso .icone {
    display: block;
    margin: 0 auto;
    width: 45%
}

.home-curso .titulo {
    color: #fff;
    font-family: Georgia, serif;
    font-size: 1.25em;
    font-weight: 400;
    -webkit-font-smoothing: antialiased;
    margin: .5em 0
}

.home-curso .mais {
    color: #fff;
    opacity: .8;
    font-family: Arial, sans-serif;
    font-size: .875em;
    -webkit-font-smoothing: antialiased
}

.home-curso a {
    text-decoration: none
}

@media (min-width: 32em) {
    .home-cursos-titulo {
        font-size: 1.6em
    }
}

@media (min-width: 38em) {
    .home-cursos-titulo {
        font-size: 1.875em
    }
}

@media (min-width: 43em) {
    .home-cursos {
        padding: 2.5em 0
    }

    .home-curso {
        padding: .5em;
        width: 20%
    }

    .home-curso .titulo {
        font-size: 1.5em
    }
}

.cao {
    display: block;
    color: #fff;
    font-family: Georgia, serif;
    font-size: 1em;
    padding: .5em
}

.cao em, .cao h2, .cao strong {
    font-size: 1em;
    font-weight: 400;
    font-style: normal
}

.promocao-principal:before {
    content: "Promoção: "
}

@media (min-width: 980px) {
    .cao {
        display: block;
        width: 35%;
        padding: 0;
        position: absolute;
        right: 0;
        bottom: 0;
        z-index: 2;
        font-family: Arial, sans-serif;
        text-align: center;
        text-decoration: none;
        background: #27ae60;
        color: #333
    }

    .cao:hover {
        background: #2cc36b
    }

    .promocao-principal:before {
        content: ''
    }

    .promocao-principal {
        background: #fff;
        display: inline-block;
        vertical-align: middle;
        height: 100%;
        width: 40%;
        font-size: 1.5em;
        padding: .6em;
        color: #446;
        position: relative
    }

    .promocao-principal .destaque {
        display: block;
        font-size: 1.5em
    }

    .promocao-principal:after {
        content: '';
        display: block;
        border: 16px solid transparent;
        border-left-color: #fff;
        position: absolute;
        top: 50%;
        margin-top: -8px;
        right: -32px
    }

    .promocao-texto {
        display: inline-block;
        vertical-align: middle;
        color: #fff;
        width: 60%;
        padding: 0 .6em 0 1.25em;
        font-size: 1.25em
    }
}

.ft-footer, .main-container {
    display: block !important
}

.pg-home {
    font-family: Arial, sans-serif;
    font-size: 1em
}

.pg-home .main-container {
    display: block
}

.home-entrada {
    background: url(http://www.caelum.com.br/imagens/home/fundo-brigadeiro.1398375902.jpg) no-repeat bottom left;
    background-size: cover
}

.home-entrada h1 {
    color: #111;
    font-family: Georgia, serif;
    font-size: 1.3em;
    font-weight: 400;
    line-height: 1.2;
    -webkit-font-smoothing: antialiased;
    padding: 2.65em .4em .4em;
    max-width: 80%
}

.home-entrada h1 small {
    display: block;
    padding-top: .5em;
    padding-right: 1em;
    font-size: .8em;
    line-height: 1.4
}

.home-entrada h1 b {
    background: #fff;
    background: rgba(255, 255, 255, .6);
    font-weight: 400
}

.home-entrada h1 small b {
    padding: 4px
}

@media (min-width: 30em) {
    .home-entrada h1 {
        font-size: 1.5em
    }
}

@media (min-width: 36em) {
    .home-entrada h1 {
        font-size: 2em;
        padding: 2.25em .3em 1.5em
    }

    .home-entrada h1 small {
        font-size: .65em;
        padding-top: 1em
    }
}

@media (min-width: 42em) {
    .home-entrada h1 {
        font-size: 2.5em
    }
}

@media (min-width: 48em) {
    .home-entrada h1 {
        font-size: 3em
    }

    .home-entrada h1 small {
        font-size: .5em
    }

    .home-entrada h1 span {
        display: block
    }
}

@media (min-width: 56em) {
    .home-entrada h1 {
        font-size: 3.2em;
        padding: 2.75em .3em 2.25em
    }
}

.home-subtitulo {
    color: #222;
    font-family: Georgia, sans-serif;
    font-size: 1.4em;
    font-weight: 400;
    -webkit-font-smoothing: antialiased;
    margin-top: 1em;
    margin-bottom: 1em
}

@media (min-width: 32em) {
    .home-subtitulo {
        font-size: 1.6em
    }
}

@media (min-width: 38em) {
    .home-subtitulo {
        font-size: 1.75em;
        margin-top: 1em;
        margin-bottom: 1.5em
    }
}

.home-secao {
    margin-bottom: 1.25em;
    margin-top: 1.25em;
    padding: 0 .75em
}

.home-empresas-lista {
    max-width: 600px;
    margin-left: 4%;
    text-align: center
}

.home-empresa {
    display: inline-block;
    margin: 0 4% 8% 0;
    vertical-align: middle
}

.sp-home-petrobras {
    width: 45%
}

.sp-home-samsung {
    width: 36%
}

.sp-home-bovespa {
    width: 46%
}

.sp-home-accenture {
    width: 35%
}

.sp-home-bradesco {
    width: 28%
}

.sp-home-volks {
    width: 19%
}

.sp-home-globo {
    width: 25%
}

@media (min-width: 34em) and (max-width: 58.9em) {
    .sp-home-petrobras {
        width: 28%
    }

    .sp-home-samsung {
        width: 24%
    }

    .sp-home-bovespa {
        width: 28%
    }

    .sp-home-accenture {
        width: 24%
    }

    .sp-home-bradesco {
        width: 16%
    }

    .sp-home-volks {
        width: 11%
    }

    .sp-home-globo {
        width: 16%
    }
}

.depoimento {
    background: #fd6;
    padding: 1em;
    line-height: 1.5;
    font-size: .875em;
    margin: 0 1.5% 1.75em 0;
    display: inline-block;
    width: 98.5%;
    vertical-align: top;
    position: relative
}

.depoimento p {
    margin-top: 1.5em;
    font-weight: 700
}

.depoimento:after {
    content: '';
    display: block;
    width: 0;
    height: 0;
    border-style: solid;
    border-width: 0 2em 1.5em 0;
    border-color: transparent #fd6 transparent transparent;
    position: absolute;
    bottom: -1.5em;
    left: 15%
}

@media (min-width: 38em) {
    .depoimento {
        font-size: 1em;
        width: 48.5%
    }
}

.home-post {
    display: inline-block;
    vertical-align: top;
    width: 100%;
    list-style-type: none;
    margin-bottom: 1.25em
}

.home-post img {
    vertical-align: middle;
    margin-right: 3%;
    max-width: 100px;
    width: 30%;
    border: 0
}

.home-post p {
    color: #333;
    line-height: 1.4;
    display: inline-block;
    vertical-align: middle;
    width: 65%
}

.home-post p span {
    display: block;
    color: #666;
    font-style: italic;
    margin-top: .25em
}

.home-post a {
    display: block;
    text-decoration: none
}

.home-post:hover {
    background: #f0f0f0
}

.home-mais-posts {
    padding-top: 1em;
    display: inline-block
}

.home-mais-posts:hover {
    color: #00f
}

@media (min-width: 38em) {
    .home-post {
        border-right: 1em #fff solid;
        width: 50%
    }
}

.home-facebook {
    display: none
}

@media (min-width: 59em) {
    .home-empresas, .home-facebook {
        float: right;
        width: 30%
    }

    .home-blog, .home-depoimentos {
        float: left;
        width: 65%
    }

    .home-secao {
        margin-bottom: 2.5em;
        margin-top: 2.5em
    }

    .home-secao:after {
        content: '';
        display: block;
        clear: both
    }

    .home-empresas-lista {
        margin-left: 0
    }

    .home-facebook {
        display: block;
        padding-top: 1em;
        margin-right: 1.5%
    }
}

@media (min-width: 61em) {
    .home-secao {
        padding: 0
    }
}
</style>
<noscript>&lt;link rel=stylesheet href="http://www.caelum.com.br/sprite/home/sprite.1402079965.css"&gt;</noscript>
<script>async("css", "/sprite/home/sprite.1402079965.css");</script>
<article class="main-container container " role="main">
    <link rel="subresource prefetch" href="http://www.caelum.com.br/imagens/home/fundo-brigadeiro.1398375902.jpg">
    <div class="home-entrada">
        <div class="big-container">
            <h1><span><b>10 anos, 32 mil alunos e</b></span><span><b>os cursos mais reconhecidos do país.</b></span>
                <small><b>Faça parte também da revolução Caelum no aprendizado de tecnologia.</b></small>
            </h1>
            <a href="http://www.caelum.com.br/promocao/" class="cao"><p class="promocao-principal"><span
                    class="destaque">10 anos</span> de Caelum</p><p class="promocao-texto">Matricule-se e ganhe uma camiseta</p></a></div>
    </div>
    <div class="home-diferenciais">
        <div class="big-container"><h2 class="home-subtitulo-invisivel">Diferenciais</h2>
            <ul>
                <li class="home-diferencial">Aulas com exclusiva e reconhecida didática da Caelum.</li>
                <li class="home-diferencial">Aprenda as tecnologias que fazem diferença no mercado.</li>
                <li class="home-diferencial">Instrutores altamente capacitados e com destaque na comunidade.</li>
                <li class="home-diferencial home-diferencial-solto">Confiamos tanto em nossos cursos que 90% dos
                    instrutores são ex-alunos da Caelum!
                </li>
            </ul>
        </div>
    </div>
    <div class="home-cursos">
        <div class="big-container"><h2 class="home-cursos-titulo">Conheça os cursos da Caelum</h2>
            <ul>
                <li class="home-curso"><a href="http://www.caelum.com.br/cursos-java/"><i
                        class="sp-base-FJ-11 icone"></i><h3 class="titulo">Java</h3>
                    <p class="mais">OO, Web, JSP, JSF, Java EE</p></a></li><li class="home-curso"><a href="http://www.caelum.com.br/cursos-mobile/"><i
                        class="sp-base-IP-67 icone"></i>

                    <h3 class="titulo">Mobile</h3>

                    <p class="mais">Android, iOS, Web responsiva</p></a></li><li class="home-curso"><a href="http://www.caelum.com.br/cursos-web-front-end/"><i
                        class="sp-base-WD-43 icone"></i>

                    <h3 class="titulo">Front-end</h3>

                    <p class="mais">HTML, CSS, JavaScript</p></a></li><li class="home-curso"><a href="http://www.caelum.com.br/cursos-agile/"><i
                        class="sp-base-PM-83 icone"></i>

                    <h3 class="titulo">Agile</h3>

                    <p class="mais">Scrum, práticas ágeis</p></a></li><li class="home-curso"><a href="http://www.caelum.com.br/cursos-dotnet/"><i
                        class="sp-base-FN-13 icone"></i>

                    <h3 class="titulo">.NET</h3>

                    <p class="mais">C#, ASP.NET MVC, NHibernate</p></a></li>
            </ul>
        </div>
    </div>
    <div class="big-container home-secao" id="courses-pagelet">
    </div>
    <div class="big-container home-secao" id="blog-pagelet">
    </div>
    <div class="big-container home-calendario" id="calendar-pagelet">
    </div>
</article>
<footer class="ft-footer" role="contentinfo">
    <div class="big-container">
        <nav>
            <ul>
                <li><a href="http://www.caelum.com.br/cursos/" class="ft-grupo">Nossos cursos</a>
                    <ul>
                        <li><a href="http://www.caelum.com.br/cursos-java/#formacao-java">Formação Java</a></li>
                        <li><a href="http://www.caelum.com.br/curso-java-web/">Curso Java Web</a></li>
                        <li><a href="http://www.caelum.com.br/curso-persistencia-java-jpa-hibernate/">Curso Hibernate e
                            JPA</a></li>
                        <li><a href="http://www.caelum.com.br/curso-java-web-jsf-cdi/">Curso JSF</a></li>
                        <li><a href="http://www.caelum.com.br/curso-android/">Curso Android</a></li>
                        <li><a href="http://www.caelum.com.br/curso-ios-iphone-ipad/">Curso iPhone</a></li>
                        <li><a href="http://www.caelum.com.br/curso-agile-scrum/">Curso Agile e Scrum</a></li>
                        <li><a href="http://www.caelum.com.br/curso-html-css-javascript/">Curso Web Front-end</a></li>
                        <li><a href="http://www.caelum.com.br/cursos-dotnet/">Formação .NET</a></li>
                    </ul>
                </li>
                <li><a href="http://www.caelum.com.br/empresa/quem-somos/" class="ft-grupo">Sobre a Caelum</a>
                    <ul>
                        <li><a href="http://www.caelum.com.br/contato/">Entre em contato</a></li>
                        <li><a href="http://www.caelum.com.br/quem-somos/">Quem somos</a></li>
                        <li><a href="http://www.caelum.com.br/instrutores/">Instrutores</a></li>
                        <li><a href="http://www.caelum.com.br/cursos-in-company/">Cursos in-company</a></li>
                        <li><a href="http://www.caelum.com.br/mapa-dos-cursos/">Mapa dos cursos</a></li>
                        <li><a href="http://www.caelum.com.br/calendario/">Calendário</a></li>
                        <li><a href="http://www.caelum.com.br/faq/">FAQ</a></li>
                        <li><a href="http://www.alura.com.br/">Cursos online de tecnlogia Alura</a></li>
                    </ul>
                </li>
                <li><a href="http://www.caelum.com.br/siga/" class="ft-grupo">Acompanhe</a>
                    <ul>
                        <li><a href="http://www.caelum.com.br/newsletter/">Newsletter</a></li>
                        <li><a href="http://blog.caelum.com.br/">Blog</a></li>
                        <li><a href="https://www.facebook.com/caelumbr" rel="nofollow">Facebook</a></li>
                        <li><a href="https://twitter.com/caelum" rel="nofollow">Twitter</a></li>
                        <li><a href="https://plus.google.com/101703359609429000755" rel="publisher">Google+</a></li>
                    </ul>
                </li>
                <li><a href="http://www.caelum.com.br/apostilas/" class="ft-grupo">Comunidade</a>
                    <ul>
                        <li><a href="http://www.caelum.com.br/apostilas/">Apostilas abertas</a></li>
                        <li><a href="http://www.casadocodigo.com.br/">Editora Casa do Código</a></li>
                        <li><a href="http://www.guj.com.br/">GUJ</a></li>
                    </ul>
                    <br><a href="http://www.caelum.com.br/empresa/quem-somos/" class="ft-grupo">Parcerias</a>
                    <ul>
                        <li><a href="http://www.musicdot.com.br">Cursos online de música, teclado e violão</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>
    <div class="ft-enderecos">
        <div class="big-container">
            <div class="ft-sp endereco">
                <div class="cidade sp-base-unidade-sp">São Paulo</div>
                <div class="rua"><strong>Rua Vergueiro, 3185, 8º andar.</strong> Próximo ao Metrô Vila Mariana.</div>
                <div class="tels"><a href="tel:+551155712751" class="tel">(11) 5571-2751</a> ou <a
                        href="tel:+551150833884" class="tel">5083-3884</a></div>
                <a href="http://www.caelum.com.br/contato/?contato.unidade=SP" class="contato">Entre em contato</a>
            </div>
            <div class="ft-rio endereco">
                <div class="cidade sp-base-unidade-rio">Rio de Janeiro</div>
                <div class="rua"><strong>Rua do Ouvidor, 50.</strong> Sobreloja 201 - Centro.</div>
                <div class="tels"><a href="tel:+552122204156" class="tel">(21) 2220-4156</a> ou <a
                        href="tel:+552122970033" class="tel">2297-0033</a></div>
                <a href="http://www.caelum.com.br/contato/?contato.unidade=RJ" class="contato">Entre em contato</a>
            </div>
            <div class="ft-bsb endereco">
                <div class="cidade sp-base-unidade-bsb">Brasília</div>
                <div class="rua"><strong>SCS Qd. 8 Bl. B-50, Sala 521.</strong> Ed. Venâncio 2000.</div>
                <div class="tels"><a href="tel:+556130394222" class="tel">(61) 3039-4222</a></div>
                <a href="http://www.caelum.com.br/contato/?contato.unidade=DF" class="contato">Entre em contato</a>
            </div>
        </div>
    </div>
</footer>
<script src="http://www.caelum.com.br/script/caelum.package.1402079960.js" async=""></script>
<script>define(["fw/Query"], function (a) {
    var b = 944;
    document.documentElement.clientWidth >= b && "#nofacebook" !== location.hash && (a(".home-facebook").get(0).innerHTML = '<iframe src="http://www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fcaelumbr&amp;width=300&amp;height=330&amp;show_faces=true&amp;colorscheme=light&amp;stream=false&amp;show_border=true&amp;header=true&amp;appId=140078819399376" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100%; height:330px;" allowTransparency="true"></iframe>')
});
</script>
<div id="fb-root"></div>
<script>"#nofacebook" !== location.hash && async("js", "//connect.facebook.net/pt_BR/all.js#xfbml\x3d1\x26appId\x3d140078819399376");</script>
<script>setTimeout(function () {
    var a = document.createElement("div");
    a.innerHTML = '\x3ciframe src\x3d"//4026389.fls.doubleclick.net/activityi;src\x3d4026389;type\x3dconve651;cat\x3d;ord\x3d' + 1E13 * Math.random() + '?" width\x3d"1" height\x3d"1" frameborder\x3d"0" style\x3d"display:none"\x3e\x3c/iframe\x3e';
    document.body.appendChild(a)
}, 100);</script>
<noscript>&lt;iframe src="http://4026389.fls.doubleclick.net/activityi;src=4026389;type=conve651;cat=;ord=1?" width=1
    height=1 frameborder=0 style="display:none"&gt;&lt;/iframe&gt;</noscript>
<style>[name="google_conversion_frame"] {
    display: none
}</style>
<script>var google_conversion_id = 995678627, google_conversion_label = "DYcgCO3T_gMQo7Pj2gM", google_custom_params = window.google_tag_params, google_remarketing_only = !0;</script>
<script src="http://www.googleadservices.com/pagead/conversion.js"></script>
<iframe name="google_conversion_frame" title="Google conversion frame" width="300" height="13"
        src="http://googleads.g.doubleclick.net/pagead/viewthroughconversion/995678627/?random=1402955994327&amp;cv=7&amp;fst=1402955994327&amp;num=1&amp;fmt=1&amp;label=DYcgCO3T_gMQo7Pj2gM&amp;guid=ON&amp;u_h=768&amp;u_w=1366&amp;u_ah=747&amp;u_aw=1366&amp;u_cd=24&amp;u_his=1&amp;u_tz=-180&amp;u_java=true&amp;u_nplug=12&amp;u_nmime=55&amp;frm=0&amp;url=file%3A///home/csokol/caelum/workspace/vraptor-streamable-pages/tmp/www.caelum.com.br/index.html"
        frameborder="0" marginwidth="0" marginheight="0" vspace="0" hspace="0" allowtransparency="true" scrolling="no">
    &lt;img height="1" width="1" border="0" alt=""
    src="http://googleads.g.doubleclick.net/pagead/viewthroughconversion/995678627/?frame=0&amp;random=1402955994327&amp;cv=7&amp;fst=1402955994327&amp;num=1&amp;fmt=1&amp;label=DYcgCO3T_gMQo7Pj2gM&amp;guid=ON&amp;u_h=768&amp;u_w=1366&amp;u_ah=747&amp;u_aw=1366&amp;u_cd=24&amp;u_his=1&amp;u_tz=-180&amp;u_java=true&amp;u_nplug=12&amp;u_nmime=55&amp;frm=0&amp;url=file%3A///home/csokol/caelum/workspace/vraptor-streamable-pages/tmp/www.caelum.com.br/index.html"
    /&gt;</iframe>
<noscript>&lt;div style="display:inline;"&gt;&lt;img height=1 width=1 style="border-style:none;" alt=""
    src="http://googleads.g.doubleclick.net/pagead/viewthroughconversion/995678627/?value=0&amp;amp;label=DYcgCO3T_gMQo7Pj2gM&amp;amp;guid=ON&amp;amp;script=0"/&gt;&lt;/div&gt;</noscript>
<script>var $mcGoal = {settings: {uuid: "422bed2b74623ede65048a641", dc: "us1"}};
(function () {
    var a = document.createElement("script");
    a.type = "text/javascript";
    a.async = !0;
    a.defer = !0;
    a.src = ("https:" == document.location.protocol ? "https://s3.amazonaws.com/downloads.mailchimp.com" : "http://downloads.mailchimp.com") + "/js/goal.min.js";
    var b = document.getElementsByTagName("script")[0];
    b.parentNode.insertBefore(a, b)
})();</script>
<script>_gaq.push(["_setCustomVar", 1, "GAE version", "production", 2]);
_gaq.push(["_setCustomVar", 2, "Suporta SPDY?", "false", 2]);
_gaq.push(["_setCustomVar", 3, "Protocol", window.location.protocol, 2]);
console && console.log("APPVERSION: production, SPDY: false");</script>
<div>
    <link rel="stylesheet" href="/sprite/home/sprite.1402079965.css">
</div>
<div>
    <iframe src="//4026389.fls.doubleclick.net/activityi;src=4026389;type=conve651;cat=;ord=2459593096282.333?"
            width="1" height="1" frameborder="0" style="display:none"></iframe>
</div>

</body>
</html>
<vraptor:stream>
    <vraptor:page url="courses"/>
    <vraptor:page url="calendar"/>
    <vraptor:page url="blog"/>
</vraptor:stream>