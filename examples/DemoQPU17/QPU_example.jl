using Pkg
Pkg.activate(".")  # ensures the environment is used

using DeviceLayout, FileIO
import DeviceLayout: μm, nm

include("/Users/chenmo/Documents/GitHub/DeviceLayout.jl/examples/DemoQPU17/DemoQPU17.jl")
@time "Total" schematic, artwork = DemoQPU17.qpu17_demo(savegds=true)
@time "Saving" save("qpu17.png", flatten(artwork), width=12 * 72, height=12 * 72);

falsecolor = DemoQPU17.false_color_layout!(schematic) # modify and render to Cell
save("qpu17_falsecolor.png", flatten(falsecolor), width=12 * 72, height=12 * 72);

