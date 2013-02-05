Imports System.Media

Public Class Mainfrm
    Dim path = System.Windows.Forms.Application.StartupPath
    Dim LogOffsound As String
    Dim MyPlayer As New SoundPlayer()
    Private Sub Mainfrm_FormClosing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles MyBase.FormClosing
        MyPlayer.SoundLocation = path & LogOffsound
        MyPlayer.Play()
        Loginfrm.PasswordTextBox.Text = ""
        Loginfrm.Show()
    End Sub

    Private Sub Mainfrm_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        LogOffsound = "\LogOff.wav"
    End Sub
End Class
