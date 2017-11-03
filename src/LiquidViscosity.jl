"""
***
# Viscosity of Liquids
***
Data are calculated by solving the equation:

``Log_{10}(\\mu_{G})= A+B/T+C*T+D*T^2``

This function can be used by two methods:
* Get the liquid viscosity by introducing the component's name and the temperature.
* Get the full list of components' names supported.
***
### Example:
`julia> LiquidViscosity("Water",298.15)`

`0.911`

`julia> LiquidViscosity()`

`String["Carbon monoxide", "1,3-Butadiene", "Cyclohexanol", "Styrene", "n-Octane", "Acetic acid", "Hydrogen", "Dichloromethane",
"1-Butanol (n-Butanol)", "1-Octene", "Methyl chloride", "Ethylene glycol", "Acrylic acid", "Ethanol", "1,1,1-Trichloroethane", "Oxygen",
"1,4-Dioxane", "n-Nonane", "Pyridine", "Hydrogen cyanide", "Ammonia", "carbon disulfide", "1-Nonane (n-Nonane)", "Hydrogen chloride",
"1-Decene", "Chlorine", "Acetic anhydride", "1,1-Dichloroethane", "Methyl isobutyl ketone", "Chloroform", "1,1,2-Trichloroethane",
 "p-Xylene", "Butyric acid", "Nitrobenzene", "1-Butene", "Ethylene oxide", "Cyclohexane", "Acetaldehyde", "1,2-Dichloroethane",
 "Methane", "n-Heptane", "n-Hexane", "Nitrogen", "Carbon tetrachloride", "Hydrogen peroxide", "n-Decane", "Ethane", "Water",
 "Diethyl ketone", "Ethyl chloride", "Naphthalene", "Fluorine", "1-Propanol (n-Propanol)", "n-Butane", "o-Xylene", "Toluene",
 "n-Pentane", "Aniline", "Methyl bromide", "m-Xylene", "Carbon dioxide", "Benzene", "Phenol", "i-Butane (iso-Butane)", "Methylamine",
 "Dimethylamine", "Acetone", "Ethyl acetate", "Ethylbenzene", "Cyclopropane", "Glycerol", "Sulfur dioxide", "Ethylene", "Diethyl ether", "Vinyl acetate"]`
"""
function LiquidViscosity(substance::String,T::Float64)
    try
        param=DataLiquidViscosity[substance]

        if T >= param[6] || T <= param[5]
            print_with_color(:red,
            @sprintf("%4.4f K is out of range %4.4f K - %4.4f K.\n",T,
            param[5],param[6]))
            return NaN
        else
            μG=10^(param[1]+param[2]/T+param[3]*T+param[4]*T^2)
        end
    catch
        print_with_color(:red,@sprintf("%s not found in database.\n",substance))
        return NaN
    end
end

function LiquidViscosity()
    println(keys(DataLiquidViscosity))
end
