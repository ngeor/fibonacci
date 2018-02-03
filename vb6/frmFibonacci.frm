VERSION 5.00
Begin VB.Form frmFibonacci 
   Caption         =   "Fibonacci"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.ListBox List1 
      Height          =   2010
      Left            =   120
      TabIndex        =   3
      Top             =   1080
      Width           =   4455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Calculate"
      Height          =   495
      Left            =   1440
      TabIndex        =   2
      Top             =   480
      Width           =   1215
   End
   Begin VB.TextBox Text1 
      Height          =   375
      Left            =   120
      TabIndex        =   1
      Top             =   480
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Enter the number to calculate the Fibonacci for"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3735
   End
End
Attribute VB_Name = "frmFibonacci"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
    On Error GoTo Trap
    Dim i As Integer
    Dim n As Integer
    n = CInt(Text1.Text)
    List1.Clear
    For i = 0 To n
        List1.AddItem "Fibonacci of " & i & " is " & Fibonacci(i)
    Next
    Exit Sub
Trap:
    MsgBox "Enter a positive number", vbExclamation
End Sub

Private Function Fibonacci(n As Integer) As Integer
    If n <= 1 Then
        Fibonacci = n
    Else
        Fibonacci = Fibonacci(n - 1) + Fibonacci(n - 2)
    End If
End Function

