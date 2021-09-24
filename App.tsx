import React, {useEffect, useState} from 'react';
import {Text, View, StyleSheet} from 'react-native';
import Clock from './Clock';

const App = () => {
  const [date, setDate] = useState<string>('');
  const [seconds, setSeconds] = useState<number>(0);

  useEffect(() => {
    Clock.getCurrentTime().then((time: string) => {
      setDate(new Date(time).toDateString());
    });
    Clock.getCurrentTimeEvents(setSeconds);
    Clock.dispatchEventEverySecond();
  }, []);

  return (
    <View style={styles.container}>
      <Text>{date}</Text>
      <Text>The seconds count is: {seconds}</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});

export default App;
