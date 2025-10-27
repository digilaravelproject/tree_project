<!DOCTYPE html>
<html>

<head>
    <title>{{ $privacy->title }}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h2 {
            margin-bottom: 10px;
        }

        hr {
            margin: 20px 0;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        table th,
        table td {
            border: 1px solid #000;
            padding: 8px;
            text-align: left;
        }

        table th {
            background-color: #f0f0f0;
        }

        /* Ensure colors and borders print correctly */
        @media print {
            body {
                -webkit-print-color-adjust: exact !important;
                print-color-adjust: exact !important;
            }

            table th {
                background-color: #f0f0f0 !important;
            }
        }
    </style>
</head>

<body onload="window.print()">
    <h2>{{ $privacy->title }}</h2>
    <hr>
    <div>{!! $privacy->content !!}</div>
</body>

</html>
