recombination=0;
if(thisSet == 1)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 200;
    delSelVal = -100;
    Nin = 10000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 8550001 || thisSet == 9550001) % analogous to 7550001, but with SC = 0.1, for HIV like example
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 200;
    delSelVal = -200;
    Nin = 1000;
    T = 1000;
    Tstart = 1;
    Tused = 400;
    dT = 10;
    ng = 100;
    muVal = 0.0001;
    recVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
classesOfSites = 3;
    recombination = 1;
elseif(thisSet == 7550001)
Lin = 50;
DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
T = 2000;
Tstart = 1;
Tused = 1000;
    dT = 10;
    ng = 100;
muVal = 0.0001;
    recVal = 0.0001;
perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
classesOfSites = 3;
    recombination = 1;
elseif(thisSet == 1010)
    Lin = 10;
    DAll = 3;
    DeleAll = 3;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 1020)
    Lin = 10;
    DAll = 3;
    DeleAll = 3;
    selVal = 20;
    delSelVal = -20;
    Nin = 1000;
    T = 2000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 1030)
    Lin = 10;
    DAll = 3;
    DeleAll = 3;
    selVal = 30;
    delSelVal = -30;
    Nin = 1000;
    T = 2000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 1031)
    Lin = 10;
    DAll = 1;
    DeleAll = 3;
    selVal = 30;
    delSelVal = -30;
    Nin = 1000;
    T = 2000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 1032)
    Lin = 10;
    DAll = 2;
    DeleAll = 3;
    selVal = 30;
    delSelVal = -30;
    Nin = 1000;
    T = 2000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 1034)
    Lin = 10;
    DAll = 4;
    DeleAll = 3;
    selVal = 30;
    delSelVal = -30;
    Nin = 1000;
    T = 2000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 1035)
    Lin = 10;
    DAll = 5;
    DeleAll = 3;
    selVal = 30;
    delSelVal = -30;
    Nin = 1000;
    T = 2000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 1030001)
    Lin = 10;
    DAll = 3;
    DeleAll = 3;
    selVal = 30;
    delSelVal = -30;
    Nin = 1000;
    T = 2000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 1030005)
    Lin = 10;
    DAll = 3;
    DeleAll = 3;
    selVal = 30;
    delSelVal = -30;
    Nin = 1000;
    T = 2000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00005;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 1040)
    Lin = 10;
    DAll = 3;
    DeleAll = 3;
    selVal = 40;
    delSelVal = -40;
    Nin = 1000;
    T = 2000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 1990)
    Lin = 10;
    DAll = 4;
    DeleAll = 4;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 1000;
    Tstart = 1;
    Tused = 150;
    dT = 1;
    ng = Nin;
    muVal = 0.0005;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) zeros(1, Lin - (DAll+DeleAll)) delSelVal/2/Nin*ones(1, DeleAll)];
    classesOfSites = 3;
elseif(thisSet == 1991)
    Lin = 10;
    DAll = 4;
    DeleAll = 4;
    selVal = 200;
    delSelVal = -200;
    Nin = 1000;
    T = 1000;
    Tstart = 11;
    Tused = 60;
    dT = 1;
    ng = Nin;
    muVal = 0.0005;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) zeros(1, Lin - (DAll+DeleAll)) delSelVal/2/Nin*ones(1, DeleAll)];
    classesOfSites = 3;
    % elseif(thisSet == 2)
    %     DAll = 10;
    %     DeleAll = 10;%
    %     selVal = 200; %[10 20 50 100]
    %     delSelVal = -100;
    %     Nin = 1000;
    %     dT = 1;
    %     ng = Nin;
    %     NmuInStr = '0.1000';
    %     TgenStr = '10k'; % 10k
    %     muVal = 0.0001;
    % elseif(thisSet == 3)
    %     DAll = 10;
    %     DeleAll = 10;
    %     selVal = 200;
    %     delSelVal = -600;
    %     Nin = 1000;
    %     dT = 1;
    %     ng = Nin;
    %     NmuInStr = '0.1000';
    %     TgenStr = '10k'; % 10k
    %     muVal = 0.0001;
elseif(thisSet == 315)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 300;
    delSelVal = -300;
    Nin = 1000;
    T = 2000;
    Tstart = 31%201;
    Tused = 300%1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 330)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 600;
    delSelVal = -600;
    Nin = 1000;
    T = 2000;
    Tstart = 11%201;
    Tused = 200%1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
    
    % elseif(thisSet == 4)
    %     DAll = 10;
    %     DeleAll = 10;
    %     selVal = 900;
    %     delSelVal = -600;
    %     Nin = 1000;
    %     dT = 1;
    %     ng = Nin;
    %     NmuInStr = '0.1000';
    %     TgenStr = '2k'; % 10k
    %     muVal = 0.0001;
    % elseif(thisSet == 42)
    %     DAll = 10;
    %     DeleAll = 10;
    %     selVal = 200;
    %     delSelVal = -200;
    %     Nin = 1000;
    %     dT = 1;
    %     ng = Nin;
    %     NmuInStr = '0.1000';
    %     TgenStr = '2k'; % 10k
    %     muVal = 0.0001;
elseif(thisSet == 46)
    Lin = 50;
    DAll = 20;
    DeleAll = 10;
    selVal = 200;
    delSelVal = -200;
    Nin = 1000;
    T = 2000;
    Tstart = 31%201;
    Tused = 400;%500%300;%1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5001)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 500102)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00002;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 500105)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00005;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5001001)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5001005)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000005;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5390)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 1000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 53900)
    Lin = 500;
    DAll = 50;
    DeleAll = 50;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 1000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5990)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 1000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) zeros(1, Lin - (DAll+DeleAll)) delSelVal/2/Nin*ones(1, DeleAll)];
    classesOfSites = 3;
elseif(thisSet == 5991)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 200;
    delSelVal = -200;
    Nin = 1000;
    T = 1000;
    Tstart = 11;
    Tused = 300;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) zeros(1, Lin - (DAll+DeleAll)) delSelVal/2/Nin*ones(1, DeleAll)];
    classesOfSites = 3;
elseif(thisSet == 6)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -20;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 6500)
    Lin = 50;
    DAll = 25;
    DeleAll = 0;
    selVal = 50;
    delSelVal = 0;
    Nin = 10000;
    T = 5000;
    Tstart = 1501;
    Tused = 2500;
    dT = 100;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 6510)
    Lin = 50;
    DAll = 20;
    DeleAll = 0;
    selVal = 100;
    delSelVal = 0;
    Nin = 10000;
    T = 5000;
    Tstart = 501;
    Tused = 2000;
    dT = 100;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 6610)
    Lin = 50;
    DAll = 20;
    DeleAll = 0;
    selVal = 100;
    delSelVal = -100;
    Nin = 10000;
    T = 5000;
    Tstart = 1;
    Tused = 1000;
    dT = 100;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 6620)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 80;
    delSelVal = -80;
    Nin = 10000;
    T = 5000;
    Tstart = 1;
    Tused = 1000;
    dT = 100;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 6621)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 80;
    delSelVal = -80;
    Nin = 10000;
    T = 5000;
    Tstart = 1;
    Tused = 1000;
    dT = 100;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 7)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 7001)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 7001001)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 100000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 55)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5502) % same strengths as set 5 but varies no. of beneficial and deletrious sites
    Lin = 2;
    DAll = 2;
    DeleAll = 0;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 1;
    Tused = 300;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    % standard old pattern (P-N-Nu)
    % 25-5-20
    sitesUnderPosiSelection = 1:DAll; %
    sitesUnderDeleSelection = DAll+1:DAll+DeleAll;
    sitesUnderSelection = 1:(DAll+DeleAll); %
    sitesNotUnderSelection = setdiff(1:Lin,sitesUnderSelection);
    perSiteSelction = [selVal/2/Nin*ones(1,DAll) delSelVal/2/Nin*ones(1,DeleAll) zeros(1,Lin-(DAll+DeleAll))];
    classesOfSites = 2;
elseif(thisSet == 5501)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5501001)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 51)
    Lin = 50;
    DAll = 20;
    DeleAll = 10;
    selVal = 20;
    delSelVal = -20;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1500;%1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 56)
    Lin = 50;
    DAll = 20;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
% elseif(thisSet == 5601)
%     Lin = 50;
%     DAll = 20;
%     DeleAll = 10;
%     selVal = 50;
%     delSelVal = -50;
%     Nin = 1000;
%     T = 2000;
%     Tstart = 51%201;
%     Tused = 1000;
%     dT = 1;
%     ng = Nin;
%     muVal = 0.00001;
%     perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
%     classesOfSites = 3;
elseif(thisSet == 8650001 || thisSet == 9650001) % analogous to 7550001, but with SC = 0.1, for HIV like example
Lin = 50;
DAll = 10;
    DeleAll = 10;
    selVal = 200;
    delSelVal = -50;
    Nin = 1000;
T = 1000;
Tstart = 1;
Tused = 400;
    dT = 10;
    ng = 100;
muVal = 0.0001;
    recVal = 0.0001;
perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
classesOfSites = 3;
    recombination = 1;
elseif(thisSet == 9750001) % mixture of 9550001 and 9650001, mixed SC strnegths
Lin = 50;
DAll = 10;
    DeleAll = 10;
    selVal = 200;
    delSelVal = -200;
    selVal2 = 50; % half in 0.1, half in 0.025
    delSelVal2 = -50; % half in 0.1, half in 0.025
    Nin = 1000;
T = 1000;
Tstart = 1;
Tused = 400;
    dT = 10;
    ng = 100;
muVal = 0.0001;
    recVal = 0.0001;
%perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    FLAG_singleSelStrength = false;
    N = Nin;
    selectionVector = [selVal/(2*N)*(ones(1,DAll/2)) selVal2/(2*N)*(ones(1,DAll/2))];  %rand(1, 1)*selVal/(2*N)%rand(1, D)*selVal/(2*N);
    selectionVectorDele = [delSelVal/(2*N)*(ones(1,DeleAll/2)) delSelVal2/(2*N)*(ones(1,DeleAll/2))];
    perSiteSelction = [selectionVector selectionVectorDele zeros(1, Lin - (DAll+DeleAll))];
   
classesOfSites = 3;
    recombination = 1;
elseif(thisSet == 9850001 || thisSet == 9860001) % mixture of 9550001 and 9650001, mixed SC strnegths
Lin = 50;
DAll = 10;
    DeleAll = 10;
    selVal = 200;
    delSelVal = -200;
    selVal2 = 100; % half in 0.1, half in 0.025
    delSelVal2 = -100; % half in 0.1, half in 0.025
    Nin = 1000;
T = 1000;
Tstart = 1;
Tused = 400;
    dT = 10;
    ng = 100;
muVal = 0.0001;
    recVal = 0.0001;
%perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    FLAG_singleSelStrength = false;
    N = Nin;
    selectionVector = [selVal/(2*N)*(ones(1,DAll/2)) selVal2/(2*N)*(ones(1,DAll/2))];  %rand(1, 1)*selVal/(2*N)%rand(1, D)*selVal/(2*N);
    selectionVectorDele = [delSelVal/(2*N)*(ones(1,DeleAll/2)) delSelVal2/(2*N)*(ones(1,DeleAll/2))];
    %perSiteSelction = [selectionVector selectionVectorDele zeros(1, Lin - (DAll+DeleAll))];
perSiteSelction = [0.11016     0.09402    0.087473     0.11918    0.091665     0.11427     0.11108     0.11097     0.10994     0.11414   -0.082769    -0.11798   -0.086425    -0.10341   -0.082869    -0.10814    -0.11297   -0.077143    -0.11303   -0.088089           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0           0
];
   
classesOfSites = 3;
    recombination = 1;
elseif(thisSet == 9950001) % mixture of 9550001 and 9650001, mixed SC strnegths
Lin = 50;
DAll = 10;
    DeleAll = 10;
    selVal = 100;
    delSelVal = -100;
    selVal2 = 50; % half in 0.1, half in 0.025
    delSelVal2 = -50; % half in 0.1, half in 0.025
    Nin = 1000;
T = 1000;
Tstart = 1;
Tused = 400;
    dT = 10;
    ng = 100;
muVal = 0.0001;
    recVal = 0.0001;
%perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    FLAG_singleSelStrength = false;
    N = Nin;
    selectionVector = [selVal/(2*N)*(ones(1,DAll/2)) selVal2/(2*N)*(ones(1,DAll/2))];  %rand(1, 1)*selVal/(2*N)%rand(1, D)*selVal/(2*N);
    selectionVectorDele = [delSelVal/(2*N)*(ones(1,DeleAll/2)) delSelVal2/(2*N)*(ones(1,DeleAll/2))];
    perSiteSelction = [selectionVector selectionVectorDele zeros(1, Lin - (DAll+DeleAll))];
   
classesOfSites = 3;
    recombination = 1;
elseif(thisSet == 5601001)
    Lin = 50;
    DAll = 20;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5611)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1000;%1500;%800;%1200;%1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5612)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5613)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00003;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5615)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1200;%1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000005;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5616)
    Lin = 500;
    DAll = 50;
    DeleAll = 50;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000005;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5617)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T = 2000;
    Tstart = 101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 561700)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T=2000;
    Tstart = 101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5617001)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T=2000;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 50505050)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 1e-5;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 50505051)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 1e-5;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 50505052)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 1e-5;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 50505053)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 1e-5;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5050)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 1e-5;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 505050)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 1e-5;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 50505040)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 1e-5;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:100)=1;
    neglabelvec(1,Lin-99:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 50505060)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 1e-5;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,151:250)=1;
    neglabelvec(1,251:350)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 56170010)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 561)
    Lin = 500;
    DAll = 10;
    DeleAll = 10;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:50:Lin)=1;
    neglabelvec(1,25:50:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 562)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:25:Lin)=1;
    neglabelvec(1,13:25:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel        
elseif(thisSet == 563)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:25:Lin)=1;
    neglabelvec(1,13:25:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 564)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:25:Lin)=1;
    neglabelvec(1,13:25:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5640)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:25:Lin)=1;
    neglabelvec(1,13:25:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 568)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:25:Lin)=1;
    neglabelvec(1,13:25:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 569)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:25:Lin)=1;
    neglabelvec(1,13:25:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5641)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 400;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,sort([1:54:Lin,7:54:Lin]))=1;
    neglabelvec(1,sort([4:54:Lin,10:54:Lin]))=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel        
elseif(thisSet == 5642)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 400;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,161:180)=1;
    neglabelvec(1,Lin-160-19:Lin-160)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5643)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 400;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    rng(3);
    indvec=randperm(Lin,DAll+DeleAll);
    poslabelvec(1,indvec(1,1:DAll))=1;
    neglabelvec(1,indvec(1,DAll+1:DAll+DeleAll))=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 567)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    poslabelvec(1,1:25:Lin)=1;
    neglabelvec(1,13:25:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 568)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    poslabelvec(1,1:25:Lin)=1;
    neglabelvec(1,13:25:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 569)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    poslabelvec(1,1:25:Lin)=1;
    neglabelvec(1,13:25:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5601)
    Lin = 500;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=500;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    poslabelvec(1,sort([1:54:Lin,7:54:Lin]))=1;
    neglabelvec(1,sort([4:54:Lin,10:54:Lin]))=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel        
elseif(thisSet == 2220)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:DAll)=1;
    neglabelvec(1,Lin-DeleAll+1:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel    
elseif(thisSet == 2221)
    Lin = 100;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:DAll)=1;
    neglabelvec(1,Lin-DeleAll+1:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 2222)
    Lin = 200;
    DAll = 10;
    DeleAll = 10;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:DAll)=1;
    neglabelvec(1,Lin-DeleAll+1:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 2223)
    Lin = 50;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:DAll)=1;
    neglabelvec(1,Lin-DeleAll+1:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 2224)
    Lin = 100;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:DAll)=1;
    neglabelvec(1,Lin-DeleAll+1:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 2225)
    Lin = 200;
    DAll = 20;
    DeleAll = 20;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:DAll)=1;
    neglabelvec(1,Lin-DeleAll+1:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 333)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 561700101) % single founder mutation rate higher
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 500;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);

    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 561700102) % single founder mutation rate higher
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 2000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);

    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 561700103) % single founder mutation rate higher
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 5000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);

    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 561700104) % single founder mutation rate higher
    Lin = 250;
    DAll = 50;
    DeleAll = 50;
    selVal = 150;
    delSelVal = -150;
    Nin = 500;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);

    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 56170011)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:100)=1;
    neglabelvec(1,Lin-99:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 56170012)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 800;
    dT = 50;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,151:250)=1;
    neglabelvec(1,251:350)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 56170020)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 400;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 56170030)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 400;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 56170040)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 400;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5617050)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 400;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 56170510)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T=900;
    Tstart = 1;%101;
    Tused = 400;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 561705)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=2000;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5617051)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=2000;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5617002)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T=1000;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5617003)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T=1000;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5617004)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T=1000;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel    
elseif(thisSet == 5617005)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T=1000;
    Tstart = 1;%101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel    
elseif(thisSet == 561750)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T=2000;
    Tstart = 101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 561770)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 70;
    delSelVal = -70;
    Nin = 1000;
    T=2000;
    Tstart = 101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5617150)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 150;
    delSelVal = -150;
    Nin = 1000;
    T=2000;
    Tstart = 101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 5617200)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 200;
    delSelVal = -200;
    Nin = 1000;
    T=2000;
    Tstart = 101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;%; 0.5/(2*N*L);
    
    poslabelvec=zeros(1,Lin);
    neglabelvec=zeros(1,Lin);
    
    % comb pattern (+00-0+00-0+00-0)
    poslabelvec(1,1:5:Lin)=1;
    neglabelvec(1,4:5:Lin)=1;
    neutlabelvec=double(~(poslabelvec+neglabelvec));
    
    perSiteSelction = selVal/2/Nin*poslabelvec+delSelVal/2/Nin*neglabelvec+0*neutlabelvec;
    classesOfSites = 3; % used to select directory name PosSel or PosDelSel
elseif(thisSet == 561701)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T = 2000;
    Tstart = 101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5617001)
    Lin = 5000;
    DAll = 1000;
    DeleAll = 1000;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T = 2000;
    Tstart = 101;
    Tused = 800;
    dT = 1;
    ng = Nin;
    muVal = 0.000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 561101)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 56110101)
    Lin = 500;
    DAll = 100;
    DeleAll = 100;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5611001)
    Lin = 5000;
    DAll = 1000;
    DeleAll = 1000;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 301;%201;
    Tused = 1000;%1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5611002)
    Lin = 5000;
    DAll = 750;
    DeleAll = 750;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;
    Tused = 1500;%1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5611011)
    Lin = 5000;
    DAll = 1000;
    DeleAll = 1000;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 201;%201;
    Tused = 1000;%1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5615003)
    Lin = 5000;
    DAll = 200;
    DeleAll = 200;
    selVal = 50;
    delSelVal = -50;
    Nin = 1000;
    T = 2000;
    Tstart = 101;%201;
    Tused = 800;%1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5618001)
    Lin = 5000;
    DAll = 1000;
    DeleAll = 1000;
    selVal = 200;
    delSelVal = -200;
    Nin = 1000;
    T = 2000;
    Tstart = 31;
    Tused = 1000;%400;
    dT = 1;
    ng = Nin;
    muVal = 0.000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 57)
    Lin = 50;
    DAll = 25;
    DeleAll = 0;
    selVal = 50;
    delSelVal = 0;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 2;
elseif(thisSet == 100157)
    Lin = 50;
    DAll = 25;
    DeleAll = 0;
    selVal = 50;
    delSelVal = 0;
    Nin = 1000;
    T = 2000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    psel=selVal/2/Nin*ones(1,Lin);
    psel(1:2:Lin)=0;
    perSiteSelction = psel;
    classesOfSites = 2;
elseif(thisSet == 58)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5801)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 580102)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00002;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 580105)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00005;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5801001)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 5801005)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.000005;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 582)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0002;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 585)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0005;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 59)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 66)
    Lin = 50;
    DAll = 20;
    DeleAll = 10;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T = 2000;
    Tstart = 31%201;
    Tused = 700;%500%1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 67)
    Lin = 50;
    DAll = 10;
    DeleAll = 10;
    selVal = 100;
    delSelVal = -100;
    Nin = 1000;
    T = 2000;
    Tstart = 101;
    Tused = 800;%700;%800;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 87)
    Lin = 50;
    DAll = 20;
    DeleAll = 10;
    selVal = 60;
    delSelVal = -30;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 88)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 60;
    delSelVal = -30;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 97)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 0.5;
    delSelVal = -1;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 98)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 5;
    delSelVal = -10;
    Nin = 1000;
    T = 10000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.0001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 9801)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 5;
    delSelVal = -10;
    Nin = 1000;
    T = 50000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 9901)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 50;
    delSelVal = -100;
    Nin = 1000;
    T = 50000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
elseif(thisSet == 990100010000)
    Lin = 50;
    DAll = 25;
    DeleAll = 5;
    selVal = 50;
    delSelVal = -100;
    Nin = 10000;
    T = 50000;
    Tstart = 1;
    Tused = 1000;
    dT = 1;
    ng = Nin;
    muVal = 0.00001;
    perSiteSelction = [selVal/2/Nin*ones(1, DAll) delSelVal/2/Nin*ones(1, DeleAll) zeros(1, Lin - (DAll+DeleAll))];
    classesOfSites = 3;
end

TgenStr = [num2str(T/1000) 'k']; % 10k
NmuInStr = num2str(Nin*muVal, '%1.4f');
step = 0.002;
edges = [-1 -0.1:step:0.1] + step/2;
if(recombination == 1)
   NrInStr = num2str(Nin*recVal, '%1.4f');
end
