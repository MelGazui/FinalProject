<%@page import="model.DAO_Artist"%>
<%@page import="model.Artist"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar artistas</title>

    </head>
    <body>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
       <div class="sticky-top">
        <nav class="navbar bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">
      <img src="http://pm1.narvii.com/6515/e880ce0043a5976625b05faef5b3ef680c8c0247_00.jpg" alt="Logo" width="35" height="27" class="d-inline-block align-text-top">
          My Collection
    </a>
  </div>
        </div>
</nav>
        <br>
        <br>
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://lh3.googleusercontent.com/32mQnA12ynyOb4scbK0YqDEoRN7uXgSXePj0Z80nd0XHsfPN2jJVa5BioIKCQWIeunrzwrKdGDyBJA=w2880-h1200-p-l90-rj" class="d-block w-100" alt="BTS">
      <div class="carousel-caption d-none d-md-block">
        <h5>BTS</h5>
        <p>V, Suga, Jin, Jungkook, RM, Jimin, J-Hope</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://lh3.googleusercontent.com/KOO3h1M6QRFVp0Vmew_6flaY6NNQrm4YHx0NnJ4V01mk7MMrHZdh-ZhMC4DNmVfTvJrLAartu9EmOGM=w1920-h800-p-l90-rj" class="d-block w-100" alt="TXT">
      <div class="carousel-caption d-none d-md-block">
        <h5>Tomorrow by Together</h5>
        <p>Beomgyu, Soobin, Yeongyun, Huening Kai, Taeyhun</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="https://lh3.googleusercontent.com/XyT-ltYutzGgWAyVt2nzzJk2pxqf9AEXOEvr6iY3OoNxguLR7ZaSUGmL76I4QqfY-paQKb0Lvr3_lg=w1920-h800-p-l90-rj" class="d-block w-100" alt="SVT">
      <div class="carousel-caption d-none d-md-block">
        <h5>Seventeen</h5>
        <p>S.coups, Wonwoo, Mingyu, Vernon, Woozi, Jeonghan, Joshua, DK, Seungkwan, Hoshi, Jun, The8, Dino</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
        <div class = "container mt-2 w-75">
            <br>
            <br>
        <p class="h3">Ingresar Datos</p>
        <!--Create-->
        <form action="registrar.do" method="post">
            <div class="form-floating">
            <input class="form-control" type="text" name="artist_name" placeholder="Nombre del artista" required >
            <label for="floatingTextarea">Nombre del Artista</label>
            <br>
            <div class="form-floating">
            <input class="form-control" type="text" name="song_name" placeholder="Nombre del Album/EP/Single" required >
            <label for="floatingTextarea">Nombre del Album/EP/Single</label>
            <br>
            <div class="form-floating">
            <input class="form-control" type="text" name="member_name" placeholder="PC Member" required >
            <label for="floatingTextarea">PC Member</label>
            <br>
            <br>
            <div class="vstack gap-1 col-md-2 mx-auto">
            <button input type="submit" value="Registrar" type="button" class="btn btn-success">Registrar</button>
            </div>
        </form>

        <br>
        <p class="h3">Actualizar Datos</p>
        <!--Update-->
     
        <form action="actualizar.do" method="post">
            <div class="form-floating">
            <input class="form-control" type="text" name="artist_id" placeholder="ID" required>
            <label for="floatingTextarea">ID</label>
            <br>
            <div class="form-floating">
            <input class="form-control" type="text" name="artist_name" placeholder="Nombre del artista">
            <label for="floatingTextarea">Nombre del Artista</label>
            <br>
            <div class="form-floating">
            <input class="form-control" type="text" name="song_name" placeholder="Nombre del Album/EP/Single">
            <label for="floatingTextarea">Nombre del Album/EP/Single</label>
            <br>
            <div class="form-floating">
            <input class="form-control" type="text" name="member_name" placeholder="PC Member">
            <label for="floatingTextarea">PC Member</label>
            <br>
            </div>
            <br>
            <div class="vstack gap-1 col-md-2 mx-auto">
            <button input type="submit" value="Actualizar" class="btn btn-primary">Actualizar</button>
            </div>
        </form>
        <br>

        <p class="h3">Borrar Datos</p>
        <!--Delete by ID-->
        <br>
        <form action="borrar.do" method="post">
            <div class="form-floating">
        <textarea class="form-control" type="text" name="artist_id" placeholder="ID" required></textarea>
        <label for="floatingTextarea">ID</label>
        </div>
            <br>
            <br>
            <div class="vstack gap-1 col-md-2 mx-auto">
            <button input type="submit" value="Borrar" class="btn btn-danger">Eliminar</button>
            </div>
  
            
        </form>
        <br>

        <p class="h3">Listado</p><!-- Listado --></h1>

        <%DAO_Artist da = new DAO_Artist();%>
        
<table class="table table-sm">

            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Album</th>
                    <th>Pulls</th>

                </tr>
            </thead>
            <tbody>
                <%

                    for (Artist a : da.read()) {


                %>
                <tr>
                    <td><%= a.getId()%></td>
                    <td><%= a.getArtist_name()%></td>
                    <td><%= a.getMost_popular_song()%></td>
                    <td><%= a.getMost_popular_member()%></td>

                </tr>
                <%}%>
            </tbody>
        </table>
        <br>
     <!--   <h1>Buscar artista (Read single)</h1>
        <br>
        <form action="obtener.do" method="post">
            <input type="text" name="artist_name" placeholder="Artist name " required >
            <br>
            <input type="submit" value="Registrar">
        </form>
     this code was supposed to be used for a more advanced filter, not enough time to complete
-->
        <%
            HttpSession ses = request.getSession();
            Artist a = null;
            if (ses.getAttribute("a") != null) {
                a = (Artist) ses.getAttribute("a");%>

        El artista es <%= a.getArtist_name()%>
        <br>
        Su cancion más popular es <%= a.getMost_popular_song()%>
        <br>
        Su miembro mas popular es <%= a.getMost_popular_member()%>
        <%}


        %>

        <br>



        <br>
        </div>
            </div>
            </div>
    </body>
</html>
