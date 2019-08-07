function updateXplaneState(state, aircraft_id)
% UPDATEXPLANEPOSITION  Update the X-Plane flight state.
%   state is definded as follows:
%   state(1) = lat
%   state(2) = lon 
%   state(3) = altitude 
%   state(4) = phi
%   state(5) = theta 
%   state(6) = psi

    % see https://blogs.mathworks.com/simulink/2014/01/08/simulink-and-matlab-objects/
    persistent Socket;
    
    if isempty(Socket)
       Socket = XPlaneConnect.openUDP();
    end 
    
    posi = [state(1), state(2), state(3), state(5), state(4),state(6),1];
    XPlaneConnect.sendPOSI(posi, aircraft_id, Socket);
end

