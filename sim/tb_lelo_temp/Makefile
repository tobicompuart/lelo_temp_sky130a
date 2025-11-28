

CELL=LELO_TEMP
LIB=LELO_TEMP_SKY130A

all: tb plot


maketb:
	echo "../../design/${LIB}/${CELL}.v" > tb.fl
	echo "counter.v" >> tb.fl
	echo "tb.v" >> tb.fl
	-rm tb.csv

tb: maketb
	iverilog  -g2012 -o design -c tb.fl -DANA_TYPE_REAL -DLELO_DESIGN=${CELL}
	vvp -n design


plot:
	python3 tb.py

clean:
	-rm *.vcd
	-rm design
	-rm tb.csv
