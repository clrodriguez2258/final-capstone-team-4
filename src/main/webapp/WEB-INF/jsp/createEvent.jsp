<%@ include file = "common/header.jspf" %>

<!DOCTYPE html>
<html>
<head>
    <title>Restaurant Reservation Form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
        html, body {
            min-height: 100%;
        }
        body, div, form, input, select, textarea, p {
            padding: 0;
            margin: 0;
            outline: none;
            font-family: Roboto, Arial, sans-serif;
            font-size: 14px;
            color: #666;
            line-height: 22px;
        }
        h1 {
            position: absolute;
            margin: 0;
            line-height: 42px;
            font-size: 42px;
            color: #fff;
            z-index: 2;
        }
        .testbox {
            display: flex;
            justify-content: center;
            align-items: center;
            height: inherit;
            padding: 20px;
        }
        form {
            width: 100%;
            padding: 20px;
            border-radius: 6px;
            background: #fff;
            box-shadow: 0 0 25px 0 #d6e0f5;
        }
        .banner {
            position: relative;
            height: 300px;
            /*background-image: url("/uploads/media/default/0001/02/53019e0a8aae1c494bf9489d3f1db33cd0dd49a1.jpeg");*/
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }
        .banner::after {
            content: "";
            background-color: rgba(0, 0, 0, 0.3);
            position: absolute;
            width: 100%;
            height: 100%;
        }
        input, select, textarea {
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input {
            width: calc(100% - 10px);
            padding: 5px;
        }
        input[type="date"] {
            padding: 4px 5px;
        }
        select {
            width: 100%;
            padding: 7px 0;
            background: transparent;
        }
        textarea {
            width: calc(100% - 12px);
            padding: 5px;
        }
        .item input:hover, .item select:hover, .item textarea:hover {
            border: 1px solid transparent;
            box-shadow: 0 0 6px 0 #d6e0f5;
            color: #d6e0f5;
        }
        .item {
            position: relative;
            margin: 10px 0;
        }
        input[type="date"]::-webkit-inner-spin-button {
            display: none;
        }
        .item i, input[type="date"]::-webkit-calendar-picker-indicator {
            position: absolute;
            font-size: 20px;
            color: #a9a9a9;
        }
        .item i {
            right: 2%;
            top: 28px;
            z-index: 1;
        }
        [type="date"]::-webkit-calendar-picker-indicator {
            right: 1%;
            z-index: 2;
            opacity: 0;
            cursor: pointer;
        }
        .btn-block {
            margin-top: 10px;
            text-align: center;
        }
        button {
            width: 150px;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background: #0087cc;
            font-size: 16px;
            color: #fff;
            cursor: pointer;
        }
        button:hover {
            background: #6eb8dd;
        }
        @media (min-width: 568px) {
            .name-item, .city-item {
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }
        }
    </style>
</head>
<body>
<div class="testbox">
    <form action="/">
        <div class="banner">
            <h1>Where To Eat - Event Sign-Up</h1>
        </div>
        <div class="item">
            <p>Event Name</p>
            <div class="event-name-item">
                <input type="text" name="name"/>
            </div>
        </div>
        <div class="item">
            <p>Email</p>
            <input type="email" name="email"/>
        </div>
        <div class="item">
            <p>Event Date</p>
            <input type="date" name="event-date" required/>
            <i class="fas fa-calendar-alt"></i>
        </div>
        <div class="item">
            <p>Event Time</p>
            <input type="time" name="event-time" required/>
        </div>
        <div class="item">
            <p>Invitees</p>
            <textarea rows="3"></textarea>
        </div>
        <div class="btn-block">
            <button type="submit" id="submit-btn" href="/">Send</button>
        </div>
    </form>
</div>
</body>
</html>

<%@ include file = "common/footer.jspf" %>