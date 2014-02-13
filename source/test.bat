@REM
@REM PHR_NodeJSWebService
@REM
@REM Copyright (C) 1999-2013 Photon Infotech Inc.
@REM
@REM Licensed under the Apache License, Version 2.0 (the "License");
@REM you may not use this file except in compliance with the License.
@REM You may obtain a copy of the License at
@REM
@REM         http://www.apache.org/licenses/LICENSE-2.0
@REM
@REM Unless required by applicable law or agreed to in writing, software
@REM distributed under the License is distributed on an "AS IS" BASIS,
@REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@REM See the License for the specific language governing permissions and
@REM limitations under the License.
@REM

cd source
call jscoverage lib lib-cov
move lib lib-orig
move lib-cov lib
call mocha -R mocha-lcov-reporter > ../do_not_checkin/target/surefire/coverage.dat
call mocha -R xunit > ../do_not_checkin/target/surefire/TEST-AllTest.xml
rd /S /Q lib
move lib-orig lib