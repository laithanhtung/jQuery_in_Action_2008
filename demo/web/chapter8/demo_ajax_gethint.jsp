<%-- 
    Document   : demo_ajax_gethint
    Created on : Oct 19, 2011, 11:44:42 AM
    Author     : tungtl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <% response.setHeader("Pragma", "no-cache");%>
        <% response.setHeader("Cache-Control", "no-store");%>
        <% response.setDateHeader("Expires", -1);%>
        <title>JSP Page</title>
    </head>
    <body>

        <%
        String[] a = new String[30];
        a[0] = "Fill up array with names Vicky";
        a[1] = "Anna";
        a[2] = "Brittany";
        a[3] = "Cinderella";
        a[4] = "Diana";
        a[5] = "Eva";
        a[6] = "Fiona";
        a[7] = "Gunda";
        a[8] = "Hege";
        a[9] = "Inga";
        a[10] = "Johanna";
        a[11] = "Kitty";
        a[12] = "Linda";
        a[13] = "Nina";
        a[14] = "Ophelia";
        a[15] = "Petunia";
        a[16] = "Amanda";
        a[17] = "Raquel";
        a[18] = "Cindy";
        a[19] = "Doris";
        a[20] = "Eve";
        a[21] = "Evita";
        a[22] = "Sunniva";
        a[23] = "Tove";
        a[24] = "Unni";
        a[25] = "Violet";
        a[26] = "Liza";
        a[27] = "Elizabeth";
        a[28] = "Ellen";
        a[29] = "Wenche";      

        // get the q parameter from URL
        String q = request.getParameter("q").toUpperCase();
        String hint = "";

        // lookup all hints from array if length of q>0
        if (q.length() > 0) {        
            for (int i = 1; i < 30; i++) {
                if (q.equals(a[i].substring(0, q.length()).toUpperCase())) {
                    if ("".equals(hint)) {
                        hint = a[i];
                    } else {
                        hint = hint + " , " + a[i];
                    }

                }
            }
        }

        /*
        Output "no suggestion" if no hint were found
        or output the correct values
         */
        if ("".equals(hint)) {
            out.print("no suggestion");
        } else {
            out.print(hint);
        }

        %>
    </body>
</html>
