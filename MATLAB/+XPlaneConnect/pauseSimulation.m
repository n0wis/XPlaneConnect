function pauseSimulation()
% pauseSimulation Pause X-Plane simulation.
%   This function is meant to be used as a callback upon starting the simulation.
%   It pauses X-Plane's own simulation in order to use it only for visualization.


    % https://blogs.mathworks.com/simulink/2014/01/08/simulink-and-matlab-objects/
    persistent Socket;
    
    if isempty(Socket)
       Socket = XPlaneConnect.openUDP();
    end
    XPlaneConnect.pauseSim(1, Socket);
end

