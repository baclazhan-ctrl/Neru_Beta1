$Form1_Load = {
}
$Label6_Click = {
}
$Label1_Click = {
}
$all_session_Click = {
}
$statistic_tittle_Click = {
}
$auf_of_day_Click = {
}
$pause_btn_Click = {
}
$opn_chat_btn_Click = {
}
$start_btn_Click = {
}
$time_Click = {
}

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'form.designer.ps1')
$Form1.ShowDialog()