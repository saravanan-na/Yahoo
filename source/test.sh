#
# PHR_NodeJSWebService
#
# Copyright (C) 1999-2013 Photon Infotech Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

cd source
pwd
jscoverage lib lib-cov
mv lib lib-orig
mv lib-cov lib
mocha -R xunit > ../do_not_checkin/target/surefire/TEST-AllTest.xml
mocha -R mocha-lcov-reporter > ../do_not_checkin/target/surefire/coverage.dat
rm -rf lib
mv lib-orig lib