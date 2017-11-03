"""
***
# Viscosity of Gases
***
Data are calculated by solving the equation:

``\\mu_{G}= A+B*T+C*T^2``

This function can be used by two methods:
* Get the gas viscosity by introducing the component's name and the temperature.
* Get the full list of components' names supported.
***
### Example:
`julia> GasViscosity("Water",298.15)`

`89.64027655549998`

`julia> GasViscosity()`

`String["Carbon monoxide", "1,3-Butadiene", "Cyclohexanol", "Styrene", "1-Nonane", "1-Butanol", "n-Octane", "Acetic acid", "Hydrogen", "Dichloromethane", "1-Octene", "Methanol", "Methyl chloride", "Ethylene glycol", "Acrylic acid", "Ethanol", "1,1,1-Trichloroethane", "Oxygen", "1,4-Dioxane", "n-Nonane", "Pyridine", "Carbon disulfide", "Hydrogen cyanide", "Ammonia", "Hydrogen chloride", "1-Decene", "1-Propanol", "Acetic anhydride", "Chlorine", "1,1-Dichloroethane", "Methyl isobutyl ketone", "Chloroform", "1,1,2-Trichloroethane", "p-Xylene", "Butyric acid", "Nitrobenzene", "i-Butane", "1-Butene", "Ethylene oxide", "Cyclohexane", "Acetaldehyde", "1,2-Dichloroethane", "Methane", "n-Heptane", "n-Hexane", "Nitrogen", "Carbon tetrachloride", "Hydrogen peroxide", "n-Decane", "Ethane", "Water", "Diethyl ketone", "Ethyl chloride", "Naphthalene", "Fluorine", "o-Xylene", "n-Butane", "Toluene", "n-Pentane", "Aniline", "Methyl bromide", "m-Xylene", "Carbon dioxide", "Benzene", "Phenol", "Propane", "Methylamine", "Dimethylamine", "Acetone", "Ethyl acetate", "Ethylbenzene", "Cyclopropane", "Glycerol", "Sulfur dioxide", "Ethylene", "Diethyl ether", "Vinyl acetate"]`
"""
function GasViscosity(substance::String,T::Float64)
    try
        param=DataGasViscosity[substance]

        if T >= param[5] || T <= param[4]
            print_with_color(:red,
            @sprintf("%4.4f K is out of range %4.4f K - %4.4f K.\n",T,
            param[4],param[5]))
            return NaN
        else
            ρG=param[1]+param[2]*T+param[3]*T^2
        end
    catch
        print_with_color(:red,@sprintf("%s not found in database.\n",substance))
        return NaN
    end
end

function GasViscosity()
    println(keys(DataGasViscosity))
end
