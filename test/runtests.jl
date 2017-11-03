using ThermProps
using Base.Test

# write your own tests here
LiquidDensity("1,1,1-Trichloroethane",298.15)
LiquidDensity("1,1,1-Trichloroethane1",298.15)
LiquidDensity("1,1,1-Trichloroethane",600.00)
LiquidDensity()

GasViscosity("1,3-Butadiene",298.15)
GasViscosity("1,3-Butadiene1",298.15)
GasViscosity("1,3-Butadiene",800.0)
GasViscosity()

LiquidViscosity("Carbon monoxide",71.00)
LiquidViscosity("Carbon monoxide1",298.15)
LiquidViscosity("Carbon monoxide",600.00)
LiquidViscosity()
