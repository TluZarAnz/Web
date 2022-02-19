<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>LAB2</title>
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/graphics.css">
    <link rel="stylesheet" href="css/form.css">
    <link rel="stylesheet" href="css/table.css">
    <link rel="stylesheet" href="css/hover.css">
    <link rel="icon" href="img/favicon.jpg" type="img/jpg">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;400;500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="css/index.css">
</head>
<body>

<header>

    <div id="right-header">
        <div>Tlupova Zarina P3232 Variant 33569</div>
   </div>
</header>

<div id="content">
    <div class="graphics-and-form">
        <jsp:include page="partial/graphics.jsp"/>
        <div class="data-form">
            <form id="data-form" action="controller" method="get" name="dataForm">
                <div class="for-y element-of-form">
                    <div class="label">
                        <label>X :</label>
                    </div>
                    <input class="text-input" type="text" name="x-value" placeholder="value in (-5...5)" maxlength="16">

                </div>
                <div class="for-x element-of-form">
                    <div class="label">
                        <label>Y :</label>
                    </div>
                    <button type="button" name="y-value" class="rainbow-button hvr-grow">-2</button>
                    <button type="button" name="y-value" class="rainbow-button hvr-grow">-1.5</button>
                    <button type="button" name="y-value" class="rainbow-button hvr-grow">-1</button>
                    <button type="button" name="y-value" class="rainbow-button hvr-grow">-0.5</button>
                    <button type="button" name="y-value" class="rainbow-button hvr-grow">0</button>
                    <button type="button" name="y-value" class="rainbow-button hvr-grow">0.5</button>
                    <button type="button" name="y-value" class="rainbow-button hvr-grow">1</button>
                    <button type="button" name="y-value" class="rainbow-button hvr-grow">1.5</button>
                    <button type="button" name="y-value" class="rainbow-button hvr-grow">2</button>
                </div>
                <div class="for-r element-of-form">
                    <div class="label">
                        <label>R :</label>
                    </div>
                    <!--input class="text-input" type="text" name="r-value" placeholder="value in (2...5)" maxlength="16"-->
                    <input type="checkbox" name="r-value" class="r-button hvr-grow"/>
                    <label>1</label>
                    <input type="checkbox" name="r-value"  class="r-button hvr-grow"/>
                    <label>1.5</label>
                    <input type="checkbox" name="r-value"  class="r-button hvr-grow"/>
                    <label>2</label>
                    <input type="checkbox" name="r-value"    class="r-button hvr-grow"/>
                    <label>2.5</label>
                    <input type="checkbox" name="r-value"  class="r-button hvr-grow"/>
                    <label>3</label>
                </div>
                <div class="control-buttons element-of-form">
                    <div class="form-buttons">
                        <div>
                            <button class="control-button hvr-grow" type="submit" name="btn-submit">Submit</button>
                        </div>

                    </div>
                </div>
                <div id="error-log"></div>
            </form>
        </div>
    </div>
    <div class="table">
        <div class="table-header">
            <div>X</div>
            <div>Y</div>
            <div>R</div>
            <div>Current time</div>
            <div>Result</div>
        </div>
        <div class="table-content">
            <jsp:useBean id="qss" scope="session" class="ru.itmo.angry_beavers.models.QueryStorageService"/>
            ${qss.updateStatuses()}
            <c:forEach var="query" items="${qss.queries}">
                <div class="table-row">
                    <div>${query.x}</div>
                    <div>${query.y}</div>
                    <div>${query.r}</div>
                    <div>${qss.dateFormat.format(query.queryTime)}</div>
                        ${query.result ? "<div style=\"color: green\">In the area</div>" :
                                "<div style=\"color: red\">Outside the area</div>"}
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<script src="js/jquery.js"></script>
<script src="js/validate.js"></script>
<script src="js/home_page.js"></script>
<script src="js/graphics.js"></script>
<script src="js/table.js"></script>
</body>
</html>