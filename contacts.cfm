<cfquery name='contact_list'>    
    select * 
    from contacts;
</cfquery>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <!--- <style>
        label{
            display: block;
        }
        input{
            display: block;
        }
        .button
        {
            font: bold 15px Arial;
            text-decoration: none;
            background-color: rgb(28, 214, 77);
            color: white;
            padding: 12px 32px;
            border-radius: 4px;
        }
        table.tableStyle{
            width: 100%;
            border-collapse: collapse;
        }
        table.tableStyle tr:nth-child(even){
            background-color: #dcddde;
        }
        /* .tableStyle
        {
            background-color: #f2f2f2;
            padding: 30px;
            border-radius: 5px;
            width: 100%;
        }
        .darkRow
        {
            background-color: #dcddde;
            padding: 30px;
            border-radius: 5px;
            width: 100%;
        } */
        .tableStyle th,
        .tableStyle td {
            padding: 10px 50px;
        }
        .deleteRow
        {
            font: bold 11px Arial;
            text-decoration: none;
            background-color: #ff9494;
            border:1px solid rgb(191, 10, 10);
            color: #333333;
            padding: 6px 16px;
            border-radius: 4px;
        }
        .deleteRow:hover{
            background: rgb(191, 10, 10);
            color:white;
        }
        .editRow
        {
            font: bold 11px Arial;
            text-decoration: none;
            background-color: rgb(28, 214, 77);
            color: white;
            padding: 6px 20px;
            border-radius: 4px;
        }
    </style> --->
    <style>
        .btn-outline-primary {
            color: #fff;
            background-color: #0082d8;
            border-color: #000000;
        }
        .btn-outline-primary:hover {
            color: #fff;
            background-color: #0096fa;
            border-color: #000000;
        }

        .btn-danger{
            color: #fff;
            background-color: #cc392f;
            border-color: #000000;
        }
        .btn-danger:hover{
            color: #fff;
            background-color: #e84135;
            border-color: #000000;
        }
        .margin-left{
            margin-left: 20px;
        }
    </style>
</head>
<body>

    
    <br><a href = "edit_contact.cfm?id=0" class="btn btn-outline-primary margin-left">Add Contact </a><br><br>
    <cfoutput>
        <table class="table table-striped table-sm table-bordered">
            <thead class="table-dark">
                <tr>
                    <th> ID </th>
                    <th> First Name </th>
                    <th> Last Name </th>
                    <th> Phone Number </th>
                    <th> Edit</th>
                    <th> Delete </th>
                </tr>
            </thead>
            <tbody>
                <cfloop query="contact_list">
                    <tr>
                        <td class="text-center"> #contact_list.cid# </th>
                        <td> #contact_list.cfirstName# </th>
                        <td> #contact_list.clastName# </th>
                        <td> #contact_list.cphoneNumber# </th>
                        <td> <a href = "edit_contact.cfm?id=#contact_list.cid#" class="btn btn-outline-primary">Edit </a> </th>
                        <td> <a onclick = "confirmDelete(#contact_list.cid#)" class="btn btn-danger">Delete </a> </th>
                    </tr>
                </cfloop>
            </tbody>
        </table>
    </cfoutput>
    <script>
        function confirmDelete(cid)
        {
            if(worning = confirm("This item whill be perminently deleated"))
            {
                window.location.href = "delete_contact.cfm?id=" + cid;
            }
            console.log(cid);
        }
    </script>
</body>
</html>