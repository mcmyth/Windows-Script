import sys
import os
from PIL import Image
args = list(sys.argv)

if len(args) > 1:
    path = args[1] + "\\"
else:
    print("输入文件夹路径或拖拽到此处按回车继续")
    path = input()
try:
    files = os.listdir(path)
except Exception as e:
    print(f"[ERROR] {e}")

for i in files:
    try:
        i = path + i
        fp = open(i, 'rb')
        obj = Image.open(fp)
        fp.close()
        _format = obj.format
        if _format == "JPEG": _format = "JPG"
        os.rename(i,i + "." + _format.lower())
        print(f"[{obj.format}] {i}")
    except Exception as e:
        print(f"[ERROR] {e}")
input("按任意键退出...")