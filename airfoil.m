classdef airfoil
    %[airfoil] represents a blade section:
    %computes aeroelastic forces on section
    %fits into the the blade superclass
    properties
        airfoilprop
        airfoilmaterial
        alfa
        beta
    end
    
    methods
        function obj = airfoil(geometry, material)
            obj.airfoilprop = geometry;
            obj.airfoilmaterial = material;
        end
        
        function F,M = BEM(V)%outputs force and moment
        end
    end
    
end

