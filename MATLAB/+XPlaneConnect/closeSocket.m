function closeSocket()
% closeSocket  Closes the persistent socket to XPlaneConnect after simulation.
%   Should be used as the StopFcn callback to prevent Sockets from not being closed properly.

    % https://blogs.mathworks.com/simulink/2014/01/08/simulink-and-matlab-objects/
    persistent Socket;
    
    if isempty(Socket)
       Socket = XPlaneConnect.openUDP();
    end
    XPlaneConnect.closeUDP(Socket);
end

