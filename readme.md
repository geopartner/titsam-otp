# Titsam OTP opsætning
Der anvendes OTP version 1.5.0

Default parameter ved isokron/rute beregning
- "mode" Hvilke transportformer der anvendes i isokronberegning. Default til WALK og TRANSIT, hvilk vil sige alle offentlige transport midler i de indlæste GTFS data. 

I router-config.json er følgende default værdier sat:

- "maxTransfers" antal skift der tillades ved en beregning. Default = 5
- "walkReluctance" faktor der tillægges på gå tiden. Default = 2
- "maxWalkDistance" længste tilladte gå afstand i meter. Default = 500 
- "walkSpeed" gang hastighed i m/s. Default = 1.3m/s  ~ 4.7km/t
- "minTransferTime" mindste tid i sekunder mellem forskellige ture. Default = 60s
- "walkBoardCost" antal sekunder der tillægges ved skift. Default = 120s
- "offRoadDistanceMeters" hvor langt udenfor vej/sti må isokronen være, default = 150 m



