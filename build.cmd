@echo off

REM  Copyright (C) 2016 ScorpicSavior
REM
REM  This file is part of NNChannelTracker.
REM
REM  NNChannelTracker is free software: you can redistribute it and/or modify
REM  it under the terms of the GNU General Public License as published by
REM  the Free Software Foundation, either version 3 of the License, or
REM  (at your option) any later version.
REM
REM  NNChannelTracker is distributed in the hope that it will be useful,
REM  but WITHOUT ANY WARRANTY; without even the implied warranty of
REM  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
REM  GNU General Public License for more details.
REM
REM  You should have received a copy of the GNU General Public License
REM  along with NNChannelTracker.  If not, see <http://www.gnu.org/licenses/>.

set NAME=nnchannel

echo.
echo Building IPF...
python tools\ipf.py -v -c -f %NAME%.ipf src

echo.
echo Encrypting IPF...
tools\ipf_unpack.exe %NAME%.ipf encrypt

echo.
echo Renaming IPF...
chcp 65001 >nul
move %NAME%.ipf 📜%NAME%.ipf
