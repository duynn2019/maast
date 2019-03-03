function sats = fromAlmMatrix(alm)
%*************************************************************************
%*     Copyright c 2019 The board of trustees of the Leland Stanford     *
%*                      Junior University. All rights reserved.          *
%*     This file is part of MAAST which is releaded under the MIT        *
%*      License.  See `LICENSE.TXT` for full license details.            *
%*                                                                       *
%*     Questions and comments should be directed to:                     *
%*     https://github.com/stanford-gps-lab/maast                         *
%*************************************************************************
% fromAlmMatrix     compatibility function to create a satellite list from
% the `alm_param` matrix.
%   sats = maast.tools.Satellite.fromAlmMatrix(alm) creates a list of
%   Satellites with the almanac properties as defined in the alm matrix.
%   The alm matrix is defined as follows:
%    1    2    3    4     5    6       7       8          9     10  11 
%   PRN ECCEN TOA INCLIN RORA SQRT_A R_ACEN ARG_PERIG MEAN_ANOM AF0 AF1
%    -    -   sec  rad    r/s m^(1/2) rad     rad        rad     s  s/s
%
%   provides compatibility with almanac handling for MAAST before v2
%
%   See Also: maast.tools.Satellite.fromYuma, maast.tools.Satellite

% call the satellite constructor with each of the columns separated out
sats = maast.tools.Satellite(alm(:,1), alm(:,2), alm(:,3), alm(:,4), ...
    alm(:,5), alm(:,6), alm(:,7), alm(:,8), ...
    alm(:,9), alm(:,10), alm(:,11));