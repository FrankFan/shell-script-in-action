
echo "I will use 'touch' command to create 3 files."
read -p "Please input your filename: " fileuser # 提示用户输入

# 2.为了避免用户随意按Enter键，利用变量功能分析文件是否有设置
filename=${fileuser:-"filename"} #开始判断是否有配置文件名

# 3.开始利用date命令来取得所需要的文件名
date1=$(date --date='2 days ago' + %Y%m%d) #前两天的日期
date2=$(date --date='1 days ago' + %Y%m%d) #前一天的日期
date3=$(date + %Y%m%d) #今天的日期

file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

# 4.创建文件
#touch "$file1"
#touch "$file2"
#touch "$file3"

echo $file1
echo $file2
echo $file3
