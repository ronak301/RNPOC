/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 */
'use strict';
import React from 'react'
var ReactNative = require('react-native');
var {
  Text,
  View,
  AppRegistry,
} = ReactNative;

import SimpleView from './SimpleView'
import PassingData from './PassingData';
import ModalWithNavigator from './ModalWithNavigator';

export default SimpleView

// Here we are exposing each component as different `modules` so that we can
// gain access to them and starting points in our RCTRootViews.
AppRegistry.registerComponent('SimpleView', () => SimpleView);
AppRegistry.registerComponent('PassingData', () => PassingData);
AppRegistry.registerComponent('ModalWithNavigator', () => ModalWithNavigator);
