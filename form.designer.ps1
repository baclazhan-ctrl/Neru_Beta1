$Form1 = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.Button]$pause_btn = $null
[System.Windows.Forms.Button]$start_btn = $null
[System.Windows.Forms.PictureBox]$girl_general_img = $null
[System.Windows.Forms.Label]$auf_of_day = $null
[System.Windows.Forms.PictureBox]$girl_logo_img = $null
[System.Windows.Forms.LinkLabel]$LinkLabel1 = $null
[System.Windows.Forms.Label]$day_msg = $null
[System.Windows.Forms.Label]$day_session = $null
[System.Windows.Forms.Label]$statistic_tittle = $null
[System.Windows.Forms.Label]$all_msg = $null
[System.Windows.Forms.Label]$all_session = $null
[System.Windows.Forms.Label]$timer_text = $null
[System.Windows.Forms.Timer]$Timer1 = $null
[System.ComponentModel.IContainer]$components = $null
function InitializeComponent
{
$components = (New-Object -TypeName System.ComponentModel.Container)
$resources = . (Join-Path $PSScriptRoot 'form.resources.ps1')
$pause_btn = (New-Object -TypeName System.Windows.Forms.Button)
$start_btn = (New-Object -TypeName System.Windows.Forms.Button)
$girl_general_img = (New-Object -TypeName System.Windows.Forms.PictureBox)
$auf_of_day = (New-Object -TypeName System.Windows.Forms.Label)
$girl_logo_img = (New-Object -TypeName System.Windows.Forms.PictureBox)
$LinkLabel1 = (New-Object -TypeName System.Windows.Forms.LinkLabel)
$day_msg = (New-Object -TypeName System.Windows.Forms.Label)
$day_session = (New-Object -TypeName System.Windows.Forms.Label)
$statistic_tittle = (New-Object -TypeName System.Windows.Forms.Label)
$all_msg = (New-Object -TypeName System.Windows.Forms.Label)
$all_session = (New-Object -TypeName System.Windows.Forms.Label)
$timer_text = (New-Object -TypeName System.Windows.Forms.Label)
$Timer1 = (New-Object -TypeName System.Windows.Forms.Timer -ArgumentList @($components))
([System.ComponentModel.ISupportInitialize]$girl_general_img).BeginInit()
([System.ComponentModel.ISupportInitialize]$girl_logo_img).BeginInit()
$Form1.SuspendLayout()
#
#pause_btn
#
$pause_btn.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe Print',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$pause_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]454,[System.Int32]510))
$pause_btn.Name = [System.String]'pause_btn'
$pause_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]60))
$pause_btn.TabIndex = [System.Int32]0
$pause_btn.Text = [System.String]'приостановить'
$pause_btn.UseVisualStyleBackColor = $true
#
#start_btn
#
$start_btn.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe Print',[System.Single]12,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$start_btn.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]97,[System.Int32]510))
$start_btn.Name = [System.String]'start_btn'
$start_btn.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]250,[System.Int32]60))
$start_btn.TabIndex = [System.Int32]1
$start_btn.Text = [System.String]'Запуск'
$start_btn.UseVisualStyleBackColor = $true
$start_btn.Add_Click({
    # Запускаем Python-скрипт асинхронно
    $pythonScriptPath = "E:\VScode_projects\Neru_official1\main.py"

    # Команда для запуска Python-скрипта в новой консоли
    $command = "python `"$pythonScriptPath`""

    # Запуск команды в новом окне
    Start-Process -FilePath "cmd.exe" -ArgumentList "/k $command"
})
#
#girl_general_img
#
$girl_general_img.BackgroundImageLayout = [System.Windows.Forms.ImageLayout]::Center
$girl_general_img.Cursor = [System.Windows.Forms.Cursors]::Default
$girl_general_img.Image = ([System.Drawing.Image]$resources.'girl_general_img.Image')
$girl_general_img.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]165,[System.Int32]83))
$girl_general_img.Name = [System.String]'girl_general_img'
$girl_general_img.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]470,[System.Int32]320))
$girl_general_img.TabIndex = [System.Int32]4
$girl_general_img.TabStop = $false
#
#auf_of_day
#
$auf_of_day.Cursor = [System.Windows.Forms.Cursors]::IBeam
$auf_of_day.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe Print',[System.Single]11.25,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$auf_of_day.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]227,[System.Int32]410))
$auf_of_day.Name = [System.String]'auf_of_day'
$auf_of_day.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]337,[System.Int32]60))
$auf_of_day.TabIndex = [System.Int32]5
$auf_of_day.Text = [System.String]'Приятного дня!'
$auf_of_day.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$auf_of_day.add_Click($auf_of_day_Click)
#
#girl_logo_img
#
$girl_logo_img.Cursor = [System.Windows.Forms.Cursors]::Default
$girl_logo_img.Image = ([System.Drawing.Image]$resources.'girl_logo_img.Image')
$girl_logo_img.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]2))
$girl_logo_img.Name = [System.String]'girl_logo_img'
$girl_logo_img.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]50,[System.Int32]50))
$girl_logo_img.TabIndex = [System.Int32]6
$girl_logo_img.TabStop = $false
#
#LinkLabel1
#
$LinkLabel1.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe Print',[System.Single]9,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$LinkLabel1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]729))
$LinkLabel1.Name = [System.String]'LinkLabel1'
$LinkLabel1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]196,[System.Int32]23))
$LinkLabel1.TabIndex = [System.Int32]8
$LinkLabel1.TabStop = $true
$LinkLabel1.Text = [System.String]'Больше о создателе'
#
#day_msg
#
$day_msg.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe Print',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$day_msg.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]133,[System.Int32]649))
$day_msg.Name = [System.String]'day_msg'
$day_msg.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]275,[System.Int32]23))
$day_msg.TabIndex = [System.Int32]9
$day_msg.Text = [System.String]'Сегодня вы написали - сообщений!'
$day_msg.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$day_msg.add_Click($Label1_Click)
#
#day_session
#
$day_session.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe Print',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$day_session.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]133,[System.Int32]689))
$day_session.Name = [System.String]'day_session'
$day_session.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]245,[System.Int32]23))
$day_session.TabIndex = [System.Int32]10
$day_session.Text = [System.String]'Сегодня было запущено - сессий!'
$day_session.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#statistic_tittle
#
$statistic_tittle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe Print',[System.Single]11.25,[System.Drawing.FontStyle]::Bold,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$statistic_tittle.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]326,[System.Int32]604))
$statistic_tittle.Name = [System.String]'statistic_tittle'
$statistic_tittle.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]157,[System.Int32]23))
$statistic_tittle.TabIndex = [System.Int32]11
$statistic_tittle.Text = [System.String]'Статистика:'
$statistic_tittle.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$statistic_tittle.add_Click($statistic_tittle_Click)
#
#all_msg
#
$all_msg.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe Print',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$all_msg.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]414,[System.Int32]649))
$all_msg.Name = [System.String]'all_msg'
$all_msg.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]332,[System.Int32]23))
$all_msg.TabIndex = [System.Int32]12
$all_msg.Text = [System.String]'За все время вы написали - сообщений!'
$all_msg.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
#
#all_session
#
$all_session.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Segoe Print',[System.Single]9.75,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]204)))
$all_session.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]414,[System.Int32]689))
$all_session.Name = [System.String]'all_session'
$all_session.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]300,[System.Int32]23))
$all_session.TabIndex = [System.Int32]13
$all_session.Text = [System.String]'За все время вы совершили - сессий!'
$all_session.TextAlign = [System.Drawing.ContentAlignment]::MiddleCenter
$all_session.add_Click($all_session_Click)
#
#timer_text
#
$timer_text.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]59,[System.Int32]9))
$timer_text.Name = [System.String]'timer_text'
$timer_text.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]23))
$timer_text.TabIndex = [System.Int32]14
$timer_text.add_Click($Label6_Click)
#
#Form1
#
$Form1.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]784,[System.Int32]761))
$Form1.Controls.Add($timer_text)
$Form1.Controls.Add($all_session)
$Form1.Controls.Add($all_msg)
$Form1.Controls.Add($statistic_tittle)
$Form1.Controls.Add($day_session)
$Form1.Controls.Add($day_msg)
$Form1.Controls.Add($LinkLabel1)
$Form1.Controls.Add($girl_logo_img)
$Form1.Controls.Add($auf_of_day)
$Form1.Controls.Add($girl_general_img)
$Form1.Controls.Add($start_btn)
$Form1.Controls.Add($pause_btn)
$Form1.Text = [System.String]'Неру'
$Form1.add_Load($Form1_Load)
([System.ComponentModel.ISupportInitialize]$girl_general_img).EndInit()
([System.ComponentModel.ISupportInitialize]$girl_logo_img).EndInit()
$Form1.ResumeLayout($false)
Add-Member -InputObject $Form1 -Name pause_btn -Value $pause_btn -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name start_btn -Value $start_btn -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name girl_general_img -Value $girl_general_img -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name auf_of_day -Value $auf_of_day -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name girl_logo_img -Value $girl_logo_img -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name LinkLabel1 -Value $LinkLabel1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name day_msg -Value $day_msg -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name day_session -Value $day_session -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name statistic_tittle -Value $statistic_tittle -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name all_msg -Value $all_msg -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name all_session -Value $all_session -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name timer_text -Value $timer_text -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name Timer1 -Value $Timer1 -MemberType NoteProperty
Add-Member -InputObject $Form1 -Name components -Value $components -MemberType NoteProperty
}
. InitializeComponent
