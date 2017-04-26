<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="pl">
<head>
    <meta charset="utf-8" />
    <title>Drabina Jakubowa-podopieczni</title>
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
        <span class="mytitle">Podopieczni</span>
        <div style="height: 15px;"></div>

        Nasi podopieczni to osoby na wózkach, z porażeniem mózgowym, po wypadkach komunikacyjnych, upośledzeni umysłowo, ale również osoby starsze, schorowane, które utraciły samodzielność. Przyjmujemy wszystkich, którzy potrzebują rekolekcji i opieki bez względu na wiek, rodzaj i stopień upośledzenia!
        <br /><br /><br />
        <span class="podtitle">Terminy 2017</span>
        <br /><br />
        I turnus: 2 - 12 lipca
        <br />
        II turnus: 16 - 26 lipca
        <br />
        III turnus: 6 sierpnia - 16 sierpnia
        <br />
        IV turnus: 20 - 30 sierpnia
        <br />
        V turnus: 3 - 13 września
        <br /><br /><br />
        <span class="podtitle">Zapisy</span>
        <br /><br />
        Zapisy na turnusy są obsługiwane telefonicznie, należy dzwonić w dni robocze nr tel. 29 7423565 wew. 107 w celu omówienia zgłoszenia. Rezerwujemy sobie prawo do spotkania twarzą w twarz z nowymi podopiecznymi.
        <br /><br />
        Koszt: 700zł
        <br /><br />
        Potwierdzeniem zgłoszenia jest wpłacenie zaliczki w wysokości 100 złotych. Pozostała kwota do zapłaty w dniu przyjazdu. W wypadku rezygnacji zaliczka zostanie zwrócona, jeśli podopieczny zgłosi ją przynajmniej tydzień przed początkiem turnusu.

    </div>

    <div id="footer">
        Drabina Jakubowa - wolontariat z niepełnosprawnymi. Strona w sieci od 2017r. &copy; Wszelkie prawa zastrzeżone
    </div>

</div>
</body>
</html>