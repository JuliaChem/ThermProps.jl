# Thermodynamic Properties for Liquids and Gases

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1041037.svg)](https://doi.org/10.5281/zenodo.1041037)
[![Coverage Status](https://coveralls.io/repos/github/JuliaChem/ThermoProps.jl/badge.svg?branch=master)](https://coveralls.io/github/JuliaChem/ThermoProps.jl?branch=master)
[![Build Status](https://travis-ci.org/JuliaChem/ThermoProps.jl.svg?branch=master)](https://travis-ci.org/JuliaChem/ThermoProps.jl)

This package allows the calculation of thermodynamic properties of liquids and gases. The calculations based on the solution of equations adjusted with experimental data.
Each function requieres two arguments: substance (string) and temperature [K]. Example:

`julia> LiquidViscosity("Water",298.15)`

`0.911`

To list the full substances available for each function:

`julia> LiquidViscosity()`

To install use the following line:

```julia
julia> Pkg.add("ThermoProps")
```
## Functions available:

* Density of Liquids [g/mL]: `LiquidDensity()`
* Viscosity of Gase [μP]]: `GasViscosity()`
* Viscosity of Liquids [μP]: `LiquidViscosity()`

## Future release will include:

* Heat Capacity of Gases
* Heat Capacity of Liquids
* Thermal Conductivity of Gases
* Thermal Conductivity of Liquids and Solids
* Surface Tension of Organic Liquids
* Vapor Pressure
* Enthapy of Vaporization
* Enthalpy of Formation
* Gibbs Energy of Formation
* Solubility in Salt Water
* Solubility of Organic Compounds in Water as a Function of Temperature
* Henry´s Law Constant for Gases in Water as a Function of Temperature
* Solubility of Selected Gases in Water as a Function of Temperature
* Solubility of Sulfur Compounds in Water as a Function of Boiling Point for Mercaptans and Aromatics
* Solubility of Naphthenes in Water
* Solubility of Nitrogen Compounds in Water
* Henry´s Law Constant for Nitrogen Compounds in Water
* Coefficient of Thermal Expansion of Liquids
* Adsorption Capacity of Activated Carbon
