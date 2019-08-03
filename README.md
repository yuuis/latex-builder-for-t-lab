# latex builder for t-lab interim

## how to use
1. clone this repository
  ```sh
    git clone git@github.com:yuuis/latex-builder-for-t-lab.git
    chmod +x build.sh
  ```

2. add `Resume.tex`
  ```sh
    cd latex-builder-for-t-lab
    vim Resume.tex
    # 頑張って書く

    mv ~/hoge.png ./figure
    # 画像を使うときはここに入れる(png or jpg)
  ```

3. build
  ```sh
    ./build.sh
  ```

4. open pdf
  ```sh
    open Resume.pdf
  ```
