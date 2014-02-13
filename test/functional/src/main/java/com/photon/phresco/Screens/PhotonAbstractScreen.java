/**
 * PHR_NodeJSWebService
 *
 * Copyright (C) 1999-2013 Photon Infotech Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *         http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.photon.phresco.Screens;

import java.io.IOException;

import com.photon.phresco.selenium.util.ScreenException;
import com.photon.phresco.uiconstants.NodeJs;
import com.photon.phresco.uiconstants.PhrescoUiConstants;
import com.photon.phresco.uiconstants.UiConstants;

public class PhotonAbstractScreen extends BaseScreen {

	

	protected PhotonAbstractScreen()throws ScreenException {

	}

	protected PhotonAbstractScreen(String selectedBrowser,String selectedPlatform,
			String url, String contextName,PhrescoUiConstants PhrescoUiConstants, NodeJs nodejsconst, UiConstants uiconstants) throws IOException,
			Exception {
		super(selectedBrowser,selectedPlatform,url,contextName,PhrescoUiConstants, nodejsconst, uiconstants);
	}

}
