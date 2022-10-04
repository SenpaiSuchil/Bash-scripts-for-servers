# ⣇⣿⠘⣿⣿⣿⡿⡿⣟⣟⢟⢟⢝⠵⡝⣿⡿⢂⣼⣿⣷⣌⠩⡫⡻⣝⠹⢿⣿⣷
# ⡆⣿⣆⠱⣝⡵⣝⢅⠙⣿⢕⢕⢕⢕⢝⣥⢒⠅⣿⣿⣿⡿⣳⣌⠪⡪⣡⢑⢝⣇
# ⡆⣿⣿⣦⠹⣳⣳⣕⢅⠈⢗⢕⢕⢕⢕⢕⢈⢆⠟⠋⠉⠁⠉⠉⠁⠈⠼⢐⢕⢽
# ⡗⢰⣶⣶⣦⣝⢝⢕⢕⠅⡆⢕⢕⢕⢕⢕⣴⠏⣠⡶⠛⡉⡉⡛⢶⣦⡀⠐⣕⢕
# ⡝⡄⢻⢟⣿⣿⣷⣕⣕⣅⣿⣔⣕⣵⣵⣿⣿⢠⣿⢠⣮⡈⣌⠨⠅⠹⣷⡀⢱⢕
# ⡝⡵⠟⠈⢀⣀⣀⡀⠉⢿⣿⣿⣿⣿⣿⣿⣿⣼⣿⢈⡋⠴⢿⡟⣡⡇⣿⡇⡀⢕
# ⡝⠁⣠⣾⠟⡉⡉⡉⠻⣦⣻⣿⣿⣿⣿⣿⣿⣿⣿⣧⠸⣿⣦⣥⣿⡇⡿⣰⢗⢄
# ⠁⢰⣿⡏⣴⣌⠈⣌⠡⠈⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣬⣉⣉⣁⣄⢖⢕⢕⢕
# ⡀⢻⣿⡇⢙⠁⠴⢿⡟⣡⡆⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣵⣵⣿
# ⡻⣄⣻⣿⣌⠘⢿⣷⣥⣿⠇⣿⣿⣿⣿⣿⣿⠛⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
# ⣷⢄⠻⣿⣟⠿⠦⠍⠉⣡⣾⣿⣿⣿⣿⣿⣿⢸⣿⣦⠙⣿⣿⣿⣿⣿⣿⣿⣿⠟
# ⡕⡑⣑⣈⣻⢗⢟⢞⢝⣻⣿⣿⣿⣿⣿⣿⣿⠸⣿⠿⠃⣿⣿⣿⣿⣿⣿⡿⠁⣠
# ⡝⡵⡈⢟⢕⢕⢕⢕⣵⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣶⣿⣿⣿⣿⣿⠿⠋⣀⣈⠙
# ⡝⡵⡕⡀⠑⠳⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⢉⡠⡲⡫⡪⡪⡣
#         ＳｅｎｐａｉＳｕｃｈｉｌ

#made it by Miguel Alejandro Ramirez Plascencia AKA SenpaiSuchil
#this scripts will make the installation process easier (i guess)
#i recommend first run the "setup.h" to move all the scripts to at the bin folder and only type the name on console
#i think this things maybe will not be useful at all but i need to practice bash scripting and i hate the tedious task
#of install a new linux distro for a server and then all the services that you need to install
#maybe one day i will modify an ISO image of debian but again, i need to practice bash scripting so here we are haha
#this scripts only install the packages this not configure nothing so go and check out the doc of each service
#RUN THIS AS ROOT BECAUSE I DIDN´T USE SUDO

#         Ａｂｏｕｔ　ｆｉｌｅｓ：
# 1.- sandevistan.sh:
#   this file will run all the scripts, this is the more powerful and colorful script but be careful
#   the sandevistan will fry your head or your cpu or both
# 2.- ssh.sh:
#   this will install the open-ssh server, the key of every server
#   check the doc about how to configure ssh server because im still developing the auto config scripts
# 3.- lamp.sh:
#   this will install the apache server, mysql (mariadb) and 2 versions of php (7.0 and 7.2)
#   yes


#follow me on youtube i make Lo-fi beats
#https://youtube.com/c/SenpaiSuchil  

clear
echo "dont run this u dingus, open this file with"
sleep 1
echo "a text editor or something like that for details"
sleep 1
echo "follow me on youtube i make Lo-fi beats: "
sleep 1
echo "https://youtube.com/c/SenpaiSuchil"
sleep 1
echo "
⣿⣿⣿⣿⣿⣿⣿⣿⠿⠛⠋⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⠿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⠏⠀                   ⠈⠻⣿
⣿⣿⣿⣿⣿⣿⠀⠀       Mondongus    ⢀⣿
⣿⣿⣿⣿⣿⣿⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣠⣴⣿⣿
⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⠷⣶⣶⣶⣶⣶⡆⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⠟⠉⠀⠀⠒⠀⠀⠀⠀⠉⢻⣿⣿⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⠀⠀⠀⠦⣀⣶⡶⠀⢤⣠⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣷⣤⣀⡲⠶⣶⣤⣔⣀⣤⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⠿⠿⠃⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⠏⢀⠤⠄⠀⠀⢀⡈⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⡟⠀⠸⠦⣠⠘⠁⢨⠃⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⠃⠀⠑⠤⠤⠔⠚⢥⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⡿⠀⠀⠀⣀⣀⡀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⡇⠀⠀⣰⣿⣿⣿⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣧⣀⡀⠉⣻⣿⣧⣤⣤⣤⣤⣽⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
