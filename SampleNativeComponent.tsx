import {
  HostComponent,
  requireNativeComponent,
  NativeSyntheticEvent,
} from 'react-native';

import {cacheNativeView, getCachedNativeView} from './GlobalsWrapper';

let component: HostComponent<SampleNativeViewProps>;
const globalView = getCachedNativeView();

if (__DEV__ && !globalView) {
  component = requireNativeComponent<SampleNativeViewProps>('SampleComponent');
  cacheNativeView(component);
} else if (__DEV__ && getCachedNativeView()) {
  component = getCachedNativeView();
} else {
  component = requireNativeComponent<SampleNativeViewProps>('SampleComponent');
}

export default component;

type SampleNativeViewProps = {
  myColor: string;
  style: object;
  onUpdate: (e: NativeSyntheticEvent<{isPressed: boolean}>) => void;
};
