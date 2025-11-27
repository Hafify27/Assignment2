<!DOCTYPE html>
<html>
<head>
    <title>Student Profile</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #FCCF31, #F55555);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .card {
            background: rgba(255, 255, 255, 0.95);
            width: 520px;
            padding: 30px;
            border-radius: 18px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.25);
            animation: slideUp 1s ease-in-out;
        }

        h2 {
            text-align: center;
            color: #FF5722;
            margin-bottom: 20px;
            font-weight: 700;
        }

        .label {
            font-weight: 700;
            color: #444;
        }

        .value {
            margin-bottom: 15px;
            padding: 10px;
            background: #fff5ee;
            border-radius: 10px;
            border-left: 5px solid #FF5722;
        }

        @keyframes slideUp {
            from { opacity: 0; transform: translateY(40px); }
            to   { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>

<body>

<div class="card">
    <h2>Student Profile</h2>

    <p class="label">Name:</p>
    <p class="value">${name}</p>

    <p class="label">Student ID:</p>
    <p class="value">${studentID}</p>

    <p class="label">Program:</p>
    <p class="value">${program}</p>

    <p class="label">Email:</p>
    <p class="value">${email}</p>

    <p class="label">Hobbies:</p>
    <p class="value">${hobbies}</p>

    <p class="label">About Me:</p>
    <p class="value">${intro}</p>
</div>

</body>
</html>
