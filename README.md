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

## どんな設定されるの？

- GPIO5(29pin)  : 昇圧回路の電源供給スイッチの出力をLoに
- GPIO7(26pin)  : ストレートキック信号をLoに
- GPIO24(18pin) : チップキック信号をLoに
- GPIO26(37pin) : 昇圧回路の充電許可信号の出力をLoに
- GPIO13(33pin) : ドリブルモータへ出力をHiに（アクティブLoなので）
- SPIOのCE0のみを使用する（CE1を無効化する）
  - これを実施しないとGPIO7をLoに設定できません

## 参考資料

- https://www.raspberrypi.org/documentation/configuration/config-txt/gpio.md
