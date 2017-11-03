"""
***
# Density of Liquids
***
Data are calculated by solving the equation:

``\\rho_{L}= A*B^{-\\left(1-\\frac{T}{T_c}\\right)^n}``

This function can be used by two methods:
* Get the liquid density by introducing the component's name and the temperature.
* Get the full list of components' names supported.
***
### Example:
`julia> LiquidDensity("Water",298.15)`

`1.0274529145286857`

`julia> LiquidDensity()`

`String["Carbon monoxide", "1,3-Butadiene", "Cyclohexanol", "Styrene", "1-Nonane",
"1-Butanol", "n-Octane", "Acetic acid", "Hydrogen", "Dichloromethane", "1-Octene",
"Methanol", "Methyl chloride", "Ethylene glycol", "Acrylic acid", "Ethanol",
"1,1,1-Trichloroethane", "Oxygen", "1,4-Dioxane", "n-Nonane", "Pyridine",
"Carbon disulfide", "Hydrogen cyanide", "Ammonia", "Hydrogen chloride", "1-Decene",
"1-Propanol", "Acetic anhydride", "Chlorine", "1,1-Dichloroethane",
"Methyl isobutyl ketone", "Chloroform", "1,1,2-Trichloroethane", "p-Xylene",
"Butyric acid", "Nitrobenzene", "i-Butane", "1-Butene", "Ethylene oxide",
"Cyclohexane", "Acetaldehyde", "1,2-Dichloroethane", "Methane", "n-Heptane",
"n-Hexane", "Nitrogen", "Carbon tetrachloride", "Hydrogen peroxide", "n-Decane",
"Ethane", "Water", "Diethyl ketone", "Ethyl chloride", "Naphthalene", "Fluorine",
"o-Xylene", "n-Butane", "Toluene", "n-Pentane", "Aniline", "Methyl bromide",
"m-Xylene", "Carbon dioxide", "Benzene", "Phenol", "Methylamine", "Dimethylamine",
"Acetone", "Ethyl acetate", "Ethylbenzene", "Cyclopropane", "Glycerol", "Ethylene",
"Diethyl ether", "Vinyl acetate"]`
"""
function LiquidDensity(substance::String,T::Float64)
    try
        param,rang=DataLiquidDensity[substance]

        if T >= rang[3] || T <= rang[2]
            print_with_color(:red,
            @sprintf("%4.4f K is out of range %4.4f K - %4.4f K.\n",T,
            rang[2],rang[3]))
            return NaN
        else
            ρL=param[1]*param[2]^-((1-T/rang[1])^param[3])
        end
    catch
        print_with_color(:red,@sprintf("%s not found in database.\n",substance))
        return NaN
    end
end

function LiquidDensity()
    println(keys(DataLiquidDensity))
end
