local Behavior = CreateAIBehavior("InVehicleTranquilized", "Dumb",
{	
	
	Constructor = function(self,entity,data)
		AI.ModifySmartObjectStates(entity.id,"Busy");
	end,
	
	Destructor = function(self,entity)
		AI.ModifySmartObjectStates(entity.id,"-Busy");
	end,