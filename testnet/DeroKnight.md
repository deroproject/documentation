# DeroKnight testnet is Dropped, Searching other algo.
### DeroKnight

[DeroProject](dero.io) is testing new algo code named: **DeroKnight** .

**Objective of DeroKnight algo is test simultaneous fair mining by ASIC and GPU and removing any unfair advantage of any mining devices.**  
  
DeroKnight is same as original CryptoNight but works by decreasing the efficiency of ASICs to match with GPUs.  
Efficiency of ASICs are decreased by adding an extra rule in DeroKnight to force nonce to be multiples of 101.  
Assuming that all ASICs generate nonce sequentially or randomly but do not have the capability to generate nonce of specific series and cannot be reprogrammed.  
This extra rule can be implemented in few lines for CPUs and GPUs without any extra load. 

So with (nonce mod 101 == 0)  current ASICs effcacy will be down to 1/100 times. 

**Current CryptoNight Asic of 200KHs will deliver 2KHs of DeroKnight.  
GPU/CPU will have no extra performance cost and will deliver almost similar hashrate on CryptoNight and DeroKnight.**

**Note For GPU/CPU software developers:**  
1. DeroKnight POW is CryptoNight original only, There is no change in POW.
1. To support DeroKnight in your miner softwares **increment nonce in steps of 101**.  
1. Take initial point whose mod 101 is == 0.  

### DeroKnight Testnet
DeroKnight Testnet has been launched and to test your devices, please see following instructions.

1. Download [DeroKnight binary](https://github.com/deroproject/derosuite_testnet/releases) or compile from [source](https://github.com/deroproject/derosuite_testnet)
1. Extract and execute derod binary with --testnet option `./derod-linux-amd64 --testnet`
1. [Download and compile DeroKnight patched XMRSTAK(only for CPU atm)](https://github.com/deroproject/xmr-stak)
1. To build xmr-stak see following steps:  
```
git clone https://github.com/deroproject/xmr-stak.git  
cd xmr-stak; mkdir -p build; cd build;  
cmake -DCMAKE_LINK_STATIC=ON -DXMR-STAK_COMPILE=generic -DCUDA_ENABLE=OFF -DOpenCL_ENABLE=OFF -DMICROHTTPD_ENABLE=OFF ../
```  
Run xmrstak <br> `./bin/xmr-stak --currency cryptonight -o stratum+tcp://testnetpool.dero.io:3333 -u dEToRdMj76baEurCdqpn1XZpWnEpSrXQ9WiLWznYz26ECKmnQtFgTxrTc4dxen5YaER8UDpT6a9iGLHfzVd5qXxg5vBT3bhpFp -p x`

**Note: ASIC operators have to do nothing except connecting to DeroKnight supporting pool.**

[DeroKnight Testnet Pool](http://testnetpool.dero.io)  
[DeroKnight Testnet Explorer](https://testnetexplorer.dero.io)  
[DeroKnight pool code](https://git.dero.io/Captain/dero-pool)  

**Note:** Talks of support of DeroKnight algo in popular miner softwares are in process. Please request choice of your mining software in [Discord](http://discord.gg/H95TJDp) or [E-mail](http://support_at_dero.io).
  For more details and discussion feel free to use Discord/Email/Github.
