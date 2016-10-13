classdef canonicAirfoil
    % [canonicAirfoil] Summary of this class goes here
    % This is a data type for containing an airfoil's properties:
    % Cd,Cl vs alpha lookup tables
    % MKS units
    properties
        Cl
        Cd
        A %area
        optAlfa %optimal angle of attack
        c
        normalized = 0 %not normalised
    end
    
    methods(Static)
        function obj = normalize() % lambda x: x/c basically
            obj.A = obj.A/obj.c;
            obj.Cl = obj.Cl/obj.c;
            obj.Cd = obj.Cd/obj.c ;
            obj.normalized = 1;
        end
        
        function r = isNormalized()
            r = obj.normalized;
        end
        
        function obj = PostSet.c() %% If you fiddle with the variables the normalized will s
            obj.normalized = 0;
        end
        
        function obj = PostSet.Cl()
            obj.normalized = 0;
        end
        
        function obj = PostSet.Cd()
            obj.normalized = 0;
        end
    end
    
end

