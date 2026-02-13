---
layout: page
title: Install
---

# Clone LELO_TEMP_SKY130A

To install, do the following

```bash
python3 -m pip install cicconf
git clone --recursive git@github.com:tobicompuart/lelo_temp_sky130a.git lelo_temp_sky130a
cicconf --rundir ./ --config lelo_temp_sky130a/config.yaml clone --https
```
