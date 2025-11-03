import React from 'react';
import { NativeModules, Text,  View } from 'react-native';
// TODO: Add complete callback
// import NativeShareUIModule from './app/spec/NativeShareUIModule';

function IssuerUIExtension() {
  return (
    <View style={{ flex: 1, backgroundColor: 'red' }} >
      <Text
        style={{ color: 'white', textAlign: 'center', marginTop: 20 }}
        onPress={() => {
          console.log(NativeModules.WUINativeModule);
          NativeModules.WUINativeModule.completeRequest?.('true');
        }}
      >
        Issuer UI Extension Placeholder
        NativeShareUIModule
      </Text>
    </View>
  );
}

export default IssuerUIExtension;
