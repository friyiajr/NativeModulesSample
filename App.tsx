import React, {useEffect, useState} from 'react';
import {Text, View, StyleSheet, NativeSyntheticEvent} from 'react-native';
import Clock from './Clock';
import SampleNativeComponent from './SampleNativeComponent';

const App = () => {
  const [date, setDate] = useState<string>('');
  const [seconds, setSeconds] = useState<number>(0);
  const [color, setColor] = useState<string>('red');

  useEffect(() => {
    Clock.getCurrentTime().then((time: string) => {
      setDate(new Date(time).toDateString());
    });
    Clock.getCurrentTimeEvents(setSeconds);
    Clock.dispatchEventEverySecond();
  }, []);

  const onUpdate = (e: NativeSyntheticEvent<{isPressed: boolean}>) => {
    if (e.nativeEvent.isPressed) {
      setColor(color === 'red' ? 'blue' : 'red');
    }
  };

  return (
    <View style={styles.container}>
      <Text>{date}</Text>
      <Text>The seconds count is: {seconds}</Text>
      <SampleNativeComponent
        myColor={color}
        style={styles.button}
        onUpdate={onUpdate}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  button: {
    height: 50,
    width: 175,
  },
});

export default App;
