if [file exists work] {vdel -all}
vlib work
vlog -f files.f
onbreak {resume}
set NoQuitOnFinish 1
#vsim -voptargs=+acc work.MUX2t1_TB
vsim -voptargs=+acc work.MUX2t1_TB
do wave.do
run 130ms
