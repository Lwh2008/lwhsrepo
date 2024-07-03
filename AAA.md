**哎呀呀好尴尬啊，可能是注释的时候破坏了某些东西的缩进关系，因为GitHub action用的是yaml来充当脚本，而yaml对于缩进关系要求严格，稍有不慎就会出错，不过坏事是手机上的GitHubAPP对于yaml的错误不会给予任何提示，需要在网页版里面查看（我觉得APP唯一的好处就是不需要梯子就可以流畅访问）**

`name: CI`action的脚本在储存库里面的`.github/workflows/name.yml`，name可以是任何你喜欢的名字
`on: [push]`这是定义action的运行条件，这里指的是只要储存库有推送就执行工作流

`jobs: `意思是下面是运行的工作

  `package:`工作名称

    `runs-on: ubuntu-latest`action的运行器有三个系统可以选择，Ubuntu-latest/windows-latest/macos-latest

    `container: fedora`这里指的是要求拉取一个Docker环境，并且在那个Docker环境里面运行工作流

    `steps: `指的是下面是执行工作的步骤

    `- name: package` `- name`代表每个步骤的名称

      `run: |`如果步骤有多个命令就需要用` |`，**注意前面要留一个空格**
```
        dnf makecache这里就是执行的命令
        dnf -y up
        sudo dnf in -y gzip git fastfetch
```
```
    - name: clone src
      run: |
        git clone https://github.com/lwh2008/ll-rh.git
        ls
    - name: demo
      run: |
```
这一部分和之前一样
        ls#有一点值得注意的是，每一个步骤的（name）所在的目录和上一个步骤并没有关联，每一个步骤开始执行的时候都会回到初始目录
```
        cd ll-rh
        bash indep.sh
    - name: info
```
这一部分也没什么不一样的
      `run: fastfetch`待会瞅瞅免费的运行器硬件规格？看文档貌似运行器是虚拟机而不是容器。