<!DOCTYPE html>
<html>
<head>
    <title>Student Profile</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #FCCF31, #F55555);
            min-height: 100vh;
        }

        /* Center everything */
        .page-container {
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
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
            margin-top: 10px;
        }

        .value {
            margin-bottom: 15px;
            padding: 10px;
            background: #fff5ee;
            border-radius: 10px;
            border-left: 5px solid #FF5722;
        }

        /* Button below card */
        .action-btn {
            margin-top: 25px;
        }

        .action-btn a {
            text-decoration: none;
            padding: 12px 25px;
            background: #FF5722;
            color: white;
            border-radius: 10px;
            font-weight: bold;
            transition: 0.3s;
        }

        .action-btn a:hover {
            background: #e64a19;
            transform: scale(1.05);
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>

<body>

<div class="page-container">

    <div class="card">
        <h2>Student Profile</h2>

        <div class="label">Name:</div>
        <div class="value">${name}</div>

        <div class="label">Student ID:</div>
        <div class="value">${studentID}</div>

        <div class="label">Program:</div>
        <div class="value">${program}</div>

        <div class="label">Email:</div>
        <div class="value">${email}</div>

        <div class="label">Hobbies:</div>
        <div class="value">${hobbies}</div>

        <div class="label">About Me:</div>
        <div class="value">${intro}</div>
    </div>

    <div class="action-btn">
        <a href="viewProfiles.jsp">View All Profiles</a>
    </div>

</div>

</body>
</html>
