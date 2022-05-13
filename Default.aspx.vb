
Partial Class _Default
    Inherits System.Web.UI.Page
    ' User enters the number of tickets sold for each class and program displays revenue generated for each
    ' group in appropriate label object, as well as the total revenue generated from all ticket sales.
    ' If user doesn'nt enter appropriate data, prorgram displays error message.
    ' Class A seats - $15     Classs B seats - $12     Class C seats - $9
    Protected Sub btnCalculate_Click(sender As Object, e As EventArgs) Handles btnCalculate.Click
        Dim intTicketsA As Integer      ' Number of Class A tickets sold
        Dim intTicketsB As Integer      ' Number of Class B tickets sold
        Dim intTicketsC As Integer      ' Number of Class C tickets sold
        Dim decSalesA As Decimal        ' Ticket sales for Class A
        Dim decSalesB As Decimal        ' Ticket sales for Class B
        Dim decSalesC As Decimal        ' Ticket sales for Class C

        Try
            ' Validate user input for Class A.
            If Not txtClassA.Text = String.Empty Or Not Integer.TryParse(txtClassA.Text, intTicketsA) Then
                intTicketsA = CInt(txtClassA.Text)
            End If

            ' Validate user input for Class B.
            If Not txtClassB.Text = String.Empty Or Not Integer.TryParse(txtClassB.Text, intTicketsB) Then
                intTicketsB = CInt(txtClassA.Text)
            End If

            ' Validate user input for Class C.
            If Not txtClassC.Text = String.Empty Or Not Integer.TryParse(txtClassC.Text, intTicketsC) Then
                intTicketsC = CInt(txtClassA.Text)
            End If
        Catch ex As Exception
            lblMessage.Text = "All Tickets Sold fields must contain numeric values."
        End Try

        ' Calculate revenue generated from Class A ticket sales to be displayed in sales label.
        If intTicketsA >= 1 Then
            decSalesA = intTicketsA * 15
        Else
            decSalesA = 0
        End If

        ' Calculate revenue generated from Class B ticket sales to be displayed in sales label.
        If intTicketsB >= 1 Then
            decSalesB = intTicketsB * 12
        Else
            decSalesB = 0
        End If

        ' Calculate revenue generated from Class C ticket sales to be displayed in sales label.
        If intTicketsC >= 1 Then
            decSalesC = intTicketsC * 9
        Else
            decSalesC = 0
        End If

        ' Display generated sales value for each ticket class.
        lblRevenue1.Text = CDec(decSalesA).ToString("c")
        lblRevenue2.Text = CDec(decSalesB).ToString("c")
        lblRevenue3.Text = CDec(decSalesC).ToString("c")

        ' Display the total sales for all ticket classes.
        lblTotal.Text = CDec(decSalesA + decSalesB + decSalesC).ToString("c")
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        ' Clear the tickets sales for each class
        txtClassA.Text = String.Empty
        txtClassB.Text = String.Empty
        txtClassC.Text = String.Empty

        ' Clear the revenue displayed for each ticket group
        lblRevenue1.Text = String.Empty
        lblRevenue2.Text = String.Empty
        lblRevenue3.Text = String.Empty

        ' Clear the total revenue
        lblTotal.Text = String.Empty

        'Clear any error messages
        lblMessage.Text = String.Empty
    End Sub
End Class
