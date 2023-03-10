function [baseMVA, P_sc, P_max, bus, gen, yload, dload, lineBranch, trafoBranch,neutral] = loadDistCase(distCase)

    if ischar(distCase)
        [pathstr, fname, ext] = fileparts(distCase);
        if isempty(ext)
            if exist(fullfile(pathstr, [fname '.m']), 'file') == 2
                ext = '.m';
            else
                error('Case does not exist');
            end
        end
        if strcmp(ext,'.m')     
            if ~isempty(pathstr)
                cwd = pwd;          
                cd(pathstr);        
            end
            caseObject = feval(fname);        
            if ~isempty(pathstr)    
                cd(cwd);
            end
        else
            error('Wrong file extension');
        end
    elseif isstruct(distCase)
        caseObject = distCase;
    else
        error('Wrong input data type');
    end

    if ~isfield(caseObject,'baseMVA') || ~isfield(caseObject,'bus') || ~isfield(caseObject,'gen')
        error('Missing fields from structure');
    else
        if ~isfield(caseObject,'yload')
            caseObject.yload = [];
        end
        if ~isfield(caseObject,'dload')
            caseObject.dload = [];
        end
        if ~isfield(caseObject,'lineBranch')
            caseObject.lineBranch = [];
        end
        if ~isfield(caseObject,'trafoBranch')
            caseObject.trafoBranch = [];
        end
    end
    
    [baseMVA, P_sc, P_max, bus, gen, yload, dload, lineBranch, trafoBranch,neutral] =...
        deal(caseObject.baseMVA, caseObject.P_sc, caseObject.P_max, caseObject.bus, caseObject.gen, caseObject.yload,...
        caseObject.dload, caseObject.lineBranch, caseObject.trafoBranch, caseObject.neutral);
end