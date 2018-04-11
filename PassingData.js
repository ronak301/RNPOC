'use strict';

import React from 'react'

// var SimpleList = require('./SimpleList');

import { View } from 'react-native'
class PassingData extends React.Component {
    render() {
        return (
            // Here we simply pass down our `data` prop that we got from our
            // ViewController to the next component which is a ListView wrapped
            // with some styling.
            <View onLayout={this.onLayout} />
        );
    }

    onLayout = () => {

    }
}

export default PassingData;
