# FrootsPiのGPIO初期設定スクリプト

Raspberry PiのGPIOは、起動時に不定だったりHiだったりと様々です。

そんなGPIOの初期状態を変更しちゃうスクリプトを用意しました

## 使い方

一度スクリプトを実行しちゃえば、2回目から何もしなくてOKです。

```sh
$ git clone https://github.com/SSL-Roots/init_frootspi_gpio_script
$ cd init_frootspi_gpio_script
$ ./copy_usercfg.txt

# 再起動
$ sudo reboot
```

## 何が起きてるの？

スクリプトを実行すると、`/boot/firmware/usercfg.txt`という設定ファイルが書き換わります。

そのファイル内でGPIOの初期状態を設定しています。

## 参考資料

- https://www.raspberrypi.org/documentation/configuration/config-txt/gpio.md
