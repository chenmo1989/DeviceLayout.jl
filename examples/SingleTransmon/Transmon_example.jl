using Pkg
Pkg.activate(".")  # ensures the environment is used
Pkg.add("Unitful")
Pkg.add("CSV")
Pkg.add("DataFrames")
using DeviceLayout, FileIO
import DeviceLayout: μm, nm

include("/Users/chenmo/Documents/GitHub/DeviceLayout.jl/examples/SingleTransmon/SingleTransmon.jl")
@time "Total" sm = SingleTransmon.single_transmon(save_gds=true)
