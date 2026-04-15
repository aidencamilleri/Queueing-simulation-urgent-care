classdef Renege < Event
    %Renege Subclass of Event that represents the renege of a
    % Customer.

    properties
        %Id of customer
        custID;
    end
    methods
        function obj = Renege(Time, custID)
            % Renege - Construct a renege event from a time and
            % custID.
            arguments
                Time = 0.0;
                custID = 0;
            end
            
            % MATLAB-ism: This incantation is how to invoke the superclass
            % constructor.
            obj = obj@Event(Time);

        end
        function varargout = visit(obj, other)
            % visit - Call handle_renege

            % MATLAB-ism: This incantation means whatever is returned by
            % the call to handle_renege is returned by this visit
            % method.
            [varargout{1:nargout}] = handle_renege(other, obj);
        end
    end
end