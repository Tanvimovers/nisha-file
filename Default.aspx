<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>

    
<script src="jsfiles/html2canvas.min.js"></script>
    <script src="jsfiles/pdfmake.min.js"></script>
    <script type="text/javascript">
        function Export() {
            alert("hello");
            html2canvas(document.getElementById('admitcard'), {
                onrendered: function (canvas) {
                    var data = canvas.toDataURL();
                    var docDefinition = {
                        content: [{
                            image: data,
                            width: 500
                        }]
                    };
                    pdfMake.createPdf(docDefinition).download("AdmitCard.pdf");
                    alert("Admit Card Downloading Started");
                }
            });
        }
    </script>


</head>
<body>
    <form id="form1" runat="server">
        <div>


            <table border="2" class="auto-style1" id="admitcard" style="width:800px">

                <tr>
                    <th>Name</th>
                    <th>Class</th>
                    <th>Phone</th>
                    <th>Photo</th>

                </tr>
                <tr>
                    <td>Nisha</td>
                    <td>M.C.A</td>
                    <td>54645151544</td>
                    <td><img src="img/ni.jpg" height="100" width="100"/></td>

                </tr>
                <tr>
                    <td>Vishal</td>
                    <td>11th</td>
                    <td>5465452</td>
                    <td><img src="img/4.jpeg" height="100" width="100"/></td>

                </tr>

            </table>

            <input type="button" id="btnExport" value="Export" onclick="Export()" class="auto-style5" />

        </div>
    </form>
</body>
</html>
