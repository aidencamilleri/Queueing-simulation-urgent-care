# Queueing-simulation-Matlab-1_UrgentCare
## Aiden Camilleri, Madeline Breiling, Casey Baker
A queueing simulation in Matlab.

This is an M/M/s queue simulation.
The overall architecture is event driven.

The main class is `ServiceQueueRenege`.
It maintains a list of events, ordered by the time that they occur.
There is one `Arrival` scheduled at any time that represents the arrival of the next customer.
When a customer reaches the front of the waiting queue, they can be moved to a service station.
Once a customer moves into a service slot, a `Departure` event for that customer is scheduled.
There should be one `Departure` event scheduled for each busy service station.
There is one `RecordToLog` scheduled at any time that represents the next time statistics will be added to the log table.

Additions:
`Renege` events are scheduled upon customer arrival. 
If the Customer is still in the waiting queue at the time of the `Renege` event, they are moved to the Renege list and leave the system.

Literate Script files:
`Run_ServiceQueue_baseline.m` Runs queue simulation for baseline with no renege feature.
`Run_ServiceQueue_Renege.m` Runs queue simulation with Renege feature.
`Run_ServiceQueue_Extension.m` Runs queue simulation with Renege feature and 2 service stations.

FYI: The use of "queueing" rather than "queuing" is for consistency with the textbook.
