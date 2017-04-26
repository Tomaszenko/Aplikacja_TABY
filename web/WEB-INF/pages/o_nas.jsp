<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="pl">
<head>
    <meta charset="utf-8" />
    <title>Drabina Jakubowa-o nas</title>
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
        <span class="mytitle">O nas</span>
        <div style="height: 15px;"></div>

        Nazwa "Drabina Jakubowa" pojawiła się dopiero w 2013 roku, z inspiracji ks. Marka Chrzanowskiego, orionisty. To on pierwszy uzasadnił teologicznie, czemu nazywamy niepełnosprawnych aniołami. Historia „turnusów” sięga jednak 1963 roku, gdy po raz pierwszy księża orioniści gościli w swoim domu rekolekcje wyjazdowe dla chorych i niepełnosprawnych wymyślone przez p. Teresę Strzembosz. Trwały wkład w rozwój wnieśli księża jezuici i prowadzona przez nich Wspólnota Życia Chrześcijańskiego, Misjonarze Świętego Wincentego a Paulo, Orioński Instytut Świecki i wielu, wielu innych.
        <br /><br />
        Na Drabinie Jakubowej mówimy o naszych podopiecznych – ludziach na wózku, upośledzonych umysłowo lub ciężko chorych, że są naszymi aniołami, bo ich cierpienie kryje w sobie sekret pozwalający przekroczyć granicę między ziemią i niebem.
        <br /><br />
        Sama nazwaPlacowki pochodzi z Biblii. Patriarcha Jakub, banita, w czasie tułaczki zapada w sen i widzi drabinę sięgającą nieba. Po niej wchodzą i schodzą z nieba aniołowie. Słyszy wtedy obietnicę Boga, który chce go uratować i obdarzyć wielkimi darami. Budzi się przestraszony, ale zaznacza sobie to miejsce, gdzie można wejść do Domu Boga.
        <br /><br />
        Każdy turnus trwa 10 dni i liczy około 50-60 osób, w tym około 20-30 na stałe korzystających z wózków inwalidzkich, którym dopomaga około 30 opiekunów - wolontariuszy (siostry zakonne, klerycy, świeccy). Ogólna liczba uczestników na wszystkich turnusach wynosi ok. 320 osób z całej Polski. Obok osób duchownych i wolontariuszy każdy turnus ma opiekę medyczną w osobie wykwalifikowanych pielęgniarek.
        <br /><br />
        Podopieczni mieszkają w pokojach dwu i cztero-osobowych, wyposażonych w pełny węzeł sanitarny. Obiekt w znacznej mierze pozbaiony jest barier architektonicznych i jest wyposażony w węzły sanitarne dostosowane do potrzeb osób niepełnosprawnych, również tych na wózku. Posiłki są podawane w jadalni, gdzie pomocą służą wolontariusze. Pełnią oni też nocne dyżury, aby zapewnić opiekę również tym podopiecznym, którzy będą tego wymagali.

    </div>

    <div id="footer">
        Drabina Jakubowa - wolontariat z niepełnosprawnymi. Strona w sieci od 2017r. &copy; Wszelkie prawa zastrzeżone
    </div>

</div>
</body>
</html>