<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Project Tree Report</title>
    <style>
        body {
            font-family: sans-serif;
            font-size: 10px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th,
        td {
            border: 1px solid #444;
            padding: 5px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
        }

        .meta {
            margin-bottom: 10px;
            font-size: 12px;
        }
    </style>
</head>

<body>

    <div class="header">
        <h2>Tree Data Report</h2>
        <h3>Project: {{ $project->project_name }}</h3>
    </div>

    <div class="meta">
        <strong>Total Trees:</strong> {{ count($trees) }} <br>
        <strong>Report Date:</strong> {{ date('Y-m-d H:i') }}
    </div>

    <table>
        <thead>
            <tr>
                <th>Tree No</th>
                <th>Tree Name</th>
                <th>Scientific Name</th>
                <th>Girth</th>
                <th>Height</th>
                <th>Condition</th>
                <th>Lat/Long</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($trees as $tree)
                @php
                    $tName = \App\Models\Tree::find($tree->tree_name);
                    $sName = \App\Models\ScientificName::find($tree->scientific_name);
                @endphp
                <tr>
                    <td>{{ $tree->tree_no }}</td>
                    <td>{{ $tName->name ?? '-' }}</td>
                    <td>{{ $sName->scientific_name ?? '-' }}</td>
                    <td>{{ $tree->girth }}</td>
                    <td>{{ $tree->height }}</td>
                    <td>{{ $tree->condition }}</td>
                    <td>{{ $tree->latitude }}, {{ $tree->longitude }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>

</body>

</html>
