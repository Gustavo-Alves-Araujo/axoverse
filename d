[1mdiff --git a/app/assets/stylesheets/application.css b/app/assets/stylesheets/application.css[m
[1mindex 5439cff..3307e77 100644[m
[1m--- a/app/assets/stylesheets/application.css[m
[1m+++ b/app/assets/stylesheets/application.css[m
[36m@@ -1252,6 +1252,21 @@[m [mfont-size: 20px;[m
    }[m
 }[m
 [m
[32m+[m
[32m+[m[32m/*[m
[32m+[m[32m-[m[41m [m
[32m+[m[32m-[m[41m [m
[32m+[m[32m-[m[41m [m
[32m+[m[32m-[m[41m [m
[32m+[m[32m-[m[41m [m
[32m+[m[32mResponsividade mobile[m
[32m+[m[32m-[m
[32m+[m[32m-[m
[32m+[m[32m-[m
[32m+[m[32m-[m
[32m+[m[32m*/[m
[32m+[m
[32m+[m
    @media screen  and (max-width: 600px){[m
 [m
       [m
[36m@@ -1270,15 +1285,16 @@[m [mfont-size: 20px;[m
          height:269px;[m
          margin-right: 0px;[m
          animation-delay: 0s;[m
[31m-         margin-top: -2px;[m
[31m-         margin-left: -5px; }[m
[32m+[m[32m         margin-top: 2px;[m
[32m+[m[32m         margin-left: 25px; }[m
    [m
    .devise-conteudo-login-view {[m
    [m
       [m
[31m-         width: 400px;[m
[32m+[m[32m         width: 530px;[m
[32m+[m[32m         margin-top: 120px;[m
          margin-left: 75px;[m
[31m-         height: 800px;[m
[32m+[m[32m         height: 1000px;[m
          align-items: center;[m
       [m
    }[m
[36m@@ -1289,15 +1305,15 @@[m [mfont-size: 20px;[m
       font-size: 70px;[m
       color: white; [m
       margin-top: 50px;[m
[31m-      margin-bottom: 5%;[m
[31m-      margin-left: 20%;[m
[32m+[m[32m      margin-bottom: 6%;[m
[32m+[m[32m      margin-left: 28%;[m
    } [m
    [m
    .login-view-input input {[m
       width: 80%;[m
       border: none;[m
       outline: none;[m
[31m-      right:  25px;[m
[32m+[m[32m      right:  27px;[m
       transform: translateY(-10%);[m
       color: white;[m
       background: none;[m
[36m@@ -1305,25 +1321,132 @@[m [mfont-size: 20px;[m
    }[m
    [m
    .login-view-input {[m
[31m-      min-width: 120px;[m
[32m+[m[32m      min-width: 200px;[m
       width: 300px;[m
       border-radius: 22px;[m
       border: 2px #59547c solid;[m
[31m-      padding: 5px;[m
[31m-      margin-left: 5px;[m
[32m+[m[32m      padding: 8px;[m
       margin: 0px 0px 12px -5px;[m
    }[m
    [m
    .devise {[m
       position: relative;[m
       top: 50%;[m
[31m-      left: 40%;[m
[32m+[m[32m      left: 39%;[m
       transform: translate(-50%, -50%);[m
       display: flex;[m
       justify-content: center;[m
    }[m
[32m+[m
[32m+[m[32m   .cabecalho-menu-botao-login {[m
[32m+[m[32m      right: 200px;[m
[32m+[m[32m      width: 100px;[m
[32m+[m[32m      height: 50px;[m
[32m+[m[32m      margin-bottom: 3px;[m
[32m+[m[32m      border: solid lightgray;[m
[32m+[m[32m      border-radius:20px ;[m
[32m+[m[32m      box-shadow: 4px 4px 5px 4px rgba(0, 0, 0, 0.25);[m
[32m+[m[32m      font-weight: 400;[m
[32m+[m[32m      font-size: 20px;[m
[32m+[m
[32m+[m[32m    }[m
    [m
[32m+[m[32m    .cabecalho-menu-botao-criar {[m
[32m+[m[32m      left: 20px;[m
[32m+[m[32m      width: 110px;[m
[32m+[m[32m      height: 50px;[m
[32m+[m[32m      margin-bottom: -5px;[m
[32m+[m[32m      border: solid lightgray;[m
[32m+[m[32m      border-radius:20px ;[m
[32m+[m[32m      box-shadow: 4px 4px 5px 4px rgba(0, 0, 0, 0.25);[m
[32m+[m[32m      font-family: 'Sarala', sans-serif;[m
[32m+[m[32m      font-weight: 400;[m
[32m+[m[32m      font-size: 20px;}[m
[32m+[m
[32m+[m
[32m+[m[32m      .cabecalho {[m
[32m+[m
[32m+[m[32m         display: flex;[m
[32m+[m[32m         flex-direction: row;[m
[32m+[m[32m         align-items: center;[m
[32m+[m[32m         justify-content: space-around;[m
[32m+[m[32m         padding-left: -200px;[m
[32m+[m[32m         border-bottom: 0.4px solid #FFF2E7;[m
[32m+[m[32m      }[m
[32m+[m[41m     [m
[32m+[m[41m     [m
[32m+[m[32m      .cabecalho-logo {[m
[32m+[m[32m         height: 150px;[m
[32m+[m[32m         padding-right: 20px;[m
[32m+[m[41m     [m
[32m+[m[32m     }[m
[32m+[m[41m     [m
[32m+[m[32m      .cabecalho-menu {[m
[32m+[m[32m         display: flex;[m
[32m+[m[32m         gap: 38px;[m
[32m+[m[32m      }[m
[32m+[m[41m    [m
[32m+[m[32m      .conteudo-principal-imagem {[m
[32m+[m[32m         animation-name: floating;[m
[32m+[m[32m         animation-duration: 8s;[m
[32m+[m[32m         animation-iteration-count: infinite;[m
[32m+[m[32m         animation-timing-function: ease-in-out;[m
[32m+[m[32m         height: 350px;[m
[32m+[m[32m         display: none;[m
[32m+[m[32m     }[m
[32m+[m[41m   [m
[32m+[m[32m     .conteudo-secundario {[m
[32m+[m[32m      display: flex;[m
[32m+[m[32m      flex-direction: column;[m
[32m+[m[32m      align-items: center;[m
[32m+[m[32m      gap: 24px;[m
[32m+[m[32m      margin-top: 48px;[m
[32m+[m[32m   }[m
[32m+[m[41m   [m
[32m+[m[32m   .conteudo-secundario-titulo {[m
[32m+[m[32m      border-top: 0.4px solid #FFF2E7;[m
[32m+[m[32m      padding-top: 48px;[m
[32m+[m[32m      font-family: 'Righteous' cursive;[m
[32m+[m[32m      font-weight: 400;[m
[32m+[m[32m      margin-left: -4%;[m
[32m+[m[32m      font-size: 30px;[m
[32m+[m[32m      color: #FFF2EF;[m
[32m+[m[32m      margin-bottom: 16px;[m
[32m+[m[32m   }[m
[32m+[m[41m   [m
[32m+[m[32m   .conteudo-secundario-paragrafo {[m
[32m+[m[32m      font-family: 'Sarala' sans-serif;[m
[32m+[m[32m      font-weight: 300;[m
[32m+[m[32m      font-size: 20px;[m
[32m+[m[32m      margin-left: -4%;[m
[32m+[m[32m      color: #FFF2E7;[m
[32m+[m[41m   [m
[32m+[m[32m   }[m
    [m
[32m+[m[32m   .rodape {[m
[32m+[m[41m   [m
[32m+[m[32m      border-top: 0.4px solid #FFF2E7;[m
[32m+[m[32m      padding: 32px;[m
[32m+[m[41m      [m
[32m+[m[41m   [m
[32m+[m[32m   }[m
[32m+[m[41m   [m
[32m+[m[32m   .rodape-titulo {[m
[32m+[m[32m      background-image: radial-gradient(circle at 50% -20.71%, #badbff 0, #c2daff 6.25%, #c9d8ff 12.5%, #d0d6ff 18.75%, #d8d4ff 25%, #dfd2fe 31.25%, #e6d0fa 37.5%, #eccff6 43.75%, #f2cdf2 50%, #f7cced 56.25%, #fccbe8 62.5%, #ffcae2 68.75%, #ffc9dd 75%, #ffc9d7 81.25%, #ffc9d1 87.5%, #ffc9cc 93.75%, #ffcac6 100%);[m
[32m+[m[32m      background-clip: text;[m
[32m+[m[32m      -webkit-background-clip: text;[m
[32m+[m[32m      -webkit-text-fill-color: transparent;[m
[32m+[m[32m      color: black;[m
[32m+[m[32m      font-size: 80px;[m
[32m+[m[32m      font-weight: 25px;[m
[32m+[m[32m      line-height: 1.1;[m
[32m+[m[32m      margin-left: 12%;[m
[32m+[m[32m      padding: 0px;[m
[32m+[m[32m    }[m
[32m+[m[41m   [m
[32m+[m[41m   [m
[32m+[m
[32m+[m
 [m
 [m
 [m
