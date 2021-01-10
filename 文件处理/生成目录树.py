from pathlib import Path
import sys
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

def generate_tree(pathname, n=0):
    global tree_str
    if pathname.is_file():
        tree_str += '    |' * n + '-' * 4 + pathname.name + '\n'
    elif pathname.is_dir():
        tree_str += '    |' * n + '-' * 4 + \
            str(pathname.relative_to(pathname.parent)) + '\\' + '\n'
        for cp in pathname.iterdir():
            generate_tree(cp, n + 1)

if __name__ == '__main__':
    tree_str = ''
    generate_tree(Path(path), 0)
    print(tree_str)
    f = open('tree.txt', 'a')
    f.write(tree_str)
    f.close()