module ThermProps

    #using Plots
    #using PyPlot
    #using LaTeXStrings
    #using JLD

    export  LiquidDensity
    export  LiquidViscosity
    export  GasViscosity


    include("Data.jl")
    include("LiquidDensity.jl")
    include("LiquidViscosity.jl")
    include("GasViscosity.jl")
end
