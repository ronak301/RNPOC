'use strict';

import React from 'react';
var ReactN = require('react-native');

var {
    View,
    Text,
    ScrollView,
    AppRegistry,
    NativeModules
} = ReactN;

class SimpleView extends React.Component{
    render() {
        console.log(NativeModules.CalendarTest.NAME);
        return (
            <View onLayout={this.onLayout} style={styles.container}>
                <Text>This is a simple React view embedded inside of a Native View1</Text>
                <Text>This is a simple React view embedded inside of a Native View2</Text>
                <Text>This is a simple React view embedded inside of a Native View3</Text>
                <Text>This is a simple React view embedded inside of a Native View4</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
                <Text>This is a simple React view embedded inside of a Native View</Text>
            </View>
        );
    }

    onLayout = ({ nativeEvent: { layout: { width, height } } }) => {
      console.log("asdasdasdasd", width, height)
    }

    componentWillUnmount() {
        console.log('unmounted');
        // AppRegistry.unmountApplicationComponentAtRootTag('SimpleView')
    }
};

var styles = ReactN.StyleSheet.create({
    container: {
        // flex: 1,
        backgroundColor: 'cyan',
    }
});

export default SimpleView;
