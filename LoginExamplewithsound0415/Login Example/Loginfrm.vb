Imports System.Data.OleDb
Imports System.Media

Public Class Loginfrm
    Dim path = System.Windows.Forms.Application.StartupPath
    Dim LogOnsound As String
    Dim MyPlayer As New SoundPlayer()

    Private Sub Loginfrm_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        LogOnsound = "\LogOn.wav"
    End Sub
    Private Sub OK_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OK.Click
        Dim connection As New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=Credentials.mdb;")
        Dim command As New OleDbCommand("SELECT [ID] FROM [Staff] WHERE [usernameField] = username AND [passwordField] = password", connection)

        Dim usernameParam As New OleDbParameter("username", Me.UsernameTextBox.Text)
        Dim passwordParam As New OleDbParameter("password", Me.PasswordTextBox.Text)

        command.Parameters.Add(usernameParam)
        command.Parameters.Add(passwordParam)

        command.Connection.Open()
        Dim reader As OleDbDataReader = command.ExecuteReader()
        If reader.HasRows Then
            MessageBox.Show("you are authenticated")
            MyPlayer.SoundLocation = path & LogOnsound
            MyPlayer.Play()
            PasswordTextBox.Text = ""
            Me.Hide()
            Mainfrm.Show()
        Else
            MessageBox.Show("username and or password are not found")
            PasswordTextBox.Text = ""
        End If

        command.Connection.Close()

    End Sub

    Private Sub Cancel_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Cancel.Click
        Me.Close()
    End Sub
End Class
