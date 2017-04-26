<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="pl">
<head>
    <meta charset="utf-8" />
    <title>Drabina Jakubowa-wolontariusze</title>
    <meta name="description" content="To jest strona projektowa aplikacji na zajęcia TAB"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/formStyle.css">
    <link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">
</head>

<body>
<div id="container">

    <div id="logo">
        Drabina Jakubowa
    </div>

    <div id="menu">
        <a href='<c:url value="/"/>'><div class="option">Strona główna</div></a>
        <a href='<c:url value="/o_nas"/>'><div class="option">O nas</div></a>
        <a href='<c:url value="/wolontariusze"/>'><div class="option">Wolontariusze</div></a>
        <a href='<c:url value="/podopieczni"/>'><div class="option">Podopieczni</div></a>
        <a href='<c:url value="/kontakt"/>'><div class="option">Kontakt</div></a>
        <a href='<c:url value="/logowanie"/>'><div class="option">Logowanie</div></a>
        <div style="clear:both;"></div>
    </div>

    <div id="topbar">
        <div id="topbarL">
            <img src="${pageContext.request.contextPath}/resources/img/ladder.png" />
        </div>
        <div id="topbarR">
            <span class="bigtitle">O "Drabinie" słów kilka</span>
            <div style="height: 10px;"></div>
            Drabina Jakubowa to duszpasterstwo podopiecznych niepełnosprawnych i wolontariuszy zajmujące się organizacją rekolekcji, opieki, rehabilitacji oraz pomocy charytatywnej osobom niepełnosprawnym.
        </div>

        <div style="clear:both;"></div>
    </div>

    <div id="sidebar">
        <a href='<c:url value="/"/>' style="color: black; text-decoration: none"><div class="optionL">Strona główna</div></a>
        <a href='<c:url value="/o_nas"/>' style="color: black; text-decoration: none"><div class="optionL">O nas</div></a>
        <a href='<c:url value="/wolontariusze"/>' style="color: black; text-decoration: none"><div class="optionL">Wolontariusze</div></a>
        <a href='<c:url value="/podopieczni"/>' style="color: black; text-decoration: none"><div class="optionL">Podopieczni</div></a>
        <a href='<c:url value="/kontakt"/>' style="color: black; text-decoration: none"><div class="optionL">Kontakt</div></a>
        <a href='<c:url value="/logowanie"/>' style="color: black; text-decoration: none"><div class="optionL">Logowanie</div></a>
    </div>

    <div id="content">
        <span class="mytitle">Wolontariusze</span>
        <div style="height: 15px;"></div>

        W Betel, w Palestynie było miejsce, gdzie zatrzymał się Jakub, syn Izaaka. Wędrował on, jak wygnaniec z dala od rodzinnego domu. Osamotniony złożył pod głowę kamień i zmęczony wędrówką zasnął w miejscu, gdzie go noc zastała. Gdy zasnął, spadł na niego sen i ujrzał drabinę stojącą na ziemi, sięgającą wierzchołkiem nieba. Aniołowie po niej schodzili i wchodzili. U szczytu, z nieba przemówił do niego Bóg. Jakub zrozumiał, że to Tu, w Tym Miejscu jest brama i przejście między niebiem i ziemią, że stąd można się dostać do nieba.
        <br /><br />
        Dziś, po tylu wiekach, my znaleźliśmy tą Drabinę w innym miejscu. Już nie w Betel w Palestynie, ale w Brańszczyku nad Bugiem, w cięgu miesięcy wakacyjnych znajdujemy wszystko to, co zawiera opowieść: ludzi wędrujących przez życie samotnie, wygnańców, aniołów i Boga...
        <br /><br />
        Nasi podopieczni przypominają aniołów. Na tych wózkach wydają się tacy inni. A jednak bliższe z nimi spotkanie sprawia, że przeżywamy coś nie z tej ziemi. Kiedy ks. Marek Chrzanowski, orionista zasłużony dla turnusów zaczął naszych podopiecznych nazywać aniołami powoli stało się to częścią turnusów. Natchnione Słowa Biblii światnie opisują to, co od lat powtarza się w Brańszczyku. Niebo zbliża się do ziemii, aniołowie zstępują, otwiera się "przejście", droga z tego miejsca do serca Boga.
        <br /><br /><br />
        <span class="podtitle">Zapisy</span>
        <br /><br />
        6 turnusów po 10 dni +2 dni dla wolontariuszy<br />
        50 podopiecznych<br />
        35 wolontariuszy<br />
        Szkolenie wolontariuszy<br />
        Zero barier - w architekturze i między ludźmi!
        <br /><br />
        Zapisy pod numerem tel. 29 7423565.

    </div>

    <div id="footer">
        Drabina Jakubowa - wolontariat z niepełnosprawnymi. Strona w sieci od 2017r. &copy; Wszelkie prawa zastrzeżone
    </div>

</div>
</body>
</html>