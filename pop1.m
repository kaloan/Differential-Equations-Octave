## Copyright (C) 2019 kaloan
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} pop1 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: kaloan <kaloan@DESKTOP-GOFHAS2>
## Created: 2019-11-16

function retval = pop1(t, p)
  a=0.05;
  b=0.02;
  c=0.05;
  retval=[a*p(2)-b*p(1);c*p(1)^2-a*p(2)];
endfunction
